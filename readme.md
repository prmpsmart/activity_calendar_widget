# Activity Calendar Widget.

One of my personal Qt based project to showcase my long honed skills in Python-bindings for Qt (C++) : PyQt, PySide.

## Usage

```bash
pip install activity_calendar_widget
```

```python
from PySide6.QtWidgets import *
from PySide6.QtCore import *
from activity_calendar_widget import *


class MainWidget(QWidget):
    def __init__(self):
        super().__init__()

        lay = QVBoxLayout(self)

        self.acw = ActivityCalendarWidget(
            title="Activity",
            default_activities={
                "03-2024": {
                    2: "Event on day 2",
                    4: "Event on day 4",
                    6: "Event on day 6",
                    10: "Event on day 10",
                    11: "Event on day 11",
                    17: "Event on day 17",
                    20: "Event on day 20",
                    25: "Event on day 25",
                    26: "Event on day 26",
                    27: "Event on day 27",
                    31: "Event on day 31",
                },
                "04-2024": {
                    2: "Event on day 2",
                    6: "Event on day 6",
                    9: "Event on day 9",
                    10: "Event on day 10",
                    11: "Event on day 11",
                    17: "Event on day 17",
                    26: "Event on day 26",
                    31: "Event on day 31",
                },
            },
            # default_month=datetime(2022, 1, 1)
        )
        s = 400
        self.acw.setMinimumSize(s, s)
        self.acw.setMaximumSize(s, s)
        lay.addWidget(self.acw, 1, Qt.AlignmentFlag.AlignCenter)


class Application(QApplication):
    def __init__(self) -> None:
        super().__init__([])

        self.win = MainWidget()
        # self.win = QColorDialog()
        # self.win.currentColorChanged.connect(lambda c: print(c))
        self.win.setWindowTitle("Activity Calendar")
        self.win.setMinimumSize(500, 500)
        self.win.show()


app = Application()

app.exec()

```

## Figma Link

https://www.figma.com/community/file/1153390420369492172/activity-calendar-widget

credits to [Lindsay](https://www.figma.com/@lho)

## Images

- ![Image 1](assets/img1.png)
- ![Image 2](assets/img2.png)
  <!-- <!-- - Video Demo -->
  <video src='https://github.com/prmpsmart/activity_calendar_widget/blob/main/assets/activity_calendar_widget.mp4'/> -->
  <video src='https://github.com/prmpsmart/activity_calendar_widget/blob/main/assets/activity_calendar_widget.webm'/> -->
