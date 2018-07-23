# bir.flat_fish.pipe-buildconf
 Build configuration to install the pipeline following packages

### How to install

The following steps are performed using Ubuntu 16.04 64 bits and Ruby 2.3.1.

```sh
sudo apt-get install ruby ruby-dev
mkdir flat_fish_pipe
cd flat_fish_pipe
wget https://raw.githubusercontent.com/Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf/master/bootstrap.sh?token=AHgaOhXD9mb-5yfnKJt3uL9el2NjpdDYks5bV2E8wA%3D%3D -O bootstrap.sh
sh bootstrap.sh
```

### Run the logs

Go to bootstrap root folder and set the framework environment

```
source env.sh
```

Go to sonar pipeline detection component folder

```
cd perception/orogen/sonar_pipeline_detection
```

Run the log replay script.

```sh
ruby scripts/replay_log_live.rb /path/to/gemini/log/file
```

Log Replay will open.

![Log Replay UI](https://github.com/Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf/blob/master/docs/log_replay.png)

Task Inspector will open.

![Task Inspector](https://github.com/Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf/blob/master/docs/task_inspector.png)

Open `SonarWidget` to check the Gemini driver log output (See the following figure):
* In the Log Replay, expand the gemini replayed task output ports
* Left click on the sonar_samples
* Click in the `SonarWidget` menu

![SonarWidget Menu](https://github.com/Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf/blob/master/docs/sonar_widget.png)

Open the `ImageViewer` to see the sonar pipeline detection output (See the following figure):
* In the Task Inspector, expand the sonar_pipeline_detection task
* Left click on the sonar_viewer
* Click in the `ImageView` menu

![ImageViewer Menu](https://github.com/Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf/blob/master/docs/image_viewer.png)

Replay the gemini driver log.
* In the Log Replay, press the *Play* button

The gemini output and sonar pipeline detection output will be displayed.

![Output](https://github.com/Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf/blob/master/docs/output.png)

