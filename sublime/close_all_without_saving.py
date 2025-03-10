import sublime
import sublime_plugin

class CloseWithoutSavingCommand(sublime_plugin.WindowCommand):
    def run(self):
        window = self.window
        views = window.views()

        # 열려 있는 탭 수
        num_views = len(views)

        # 탭이 1개 이하일 때는 아무 것도 안 함
        if num_views <= 1:
            return

        # 마지막 탭을 제외하고 닫기
        for i, v in enumerate(views):
            if i == num_views - 1:
                continue  # 마지막 탭은 건너뜀

            if v.is_dirty():
                v.set_scratch(True)  # 저장 여부 묻지 않음
            v.close()
