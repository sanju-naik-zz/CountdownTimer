# CountdownTimer
Swift Library to implement Countdown timer in elegant way &amp; Show it on UI.

This repository Contains a Sample demo project to demonstrate how to use `TimerManager` class in your project to show Count down timer on UI.
Its Very simple & straightforward, download this project & include `TimerManager` class into your project & then call

```

TimerManager.start(withSeconds:) , Pass time in Secods to this method from your ViewController.

```

 and show timer on UI using this.

```

TimerManager.timeString = { time, ends in
            if ends == false {
                self.timerLabel.text = time
            } else {
                // Perform here the task you want to do after timer finishes.
            }
        }
   ```
   
 Once Timer ends perform the task you wanted to perform.
