package defpackage;

import com.transsion.videodownloader.model.VideoTaskItem;
import java.util.concurrent.CopyOnWriteArrayList;

public class crb {
    public CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public boolean a(VideoTaskItem videoTaskItem) {
        return this.a.contains(videoTaskItem);
    }

    public int b() {
        int i = 0;
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            try {
                if (e((VideoTaskItem) this.a.get(i2))) {
                    i++;
                }
            } catch (Exception unused) {
                eq5.d("VideoDownloadQueue", "DownloadQueue getDownloadingCount failed.");
            }
        }
        return i;
    }

    public int c() {
        int i = 0;
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            try {
                if (d((VideoTaskItem) this.a.get(i2))) {
                    i++;
                }
            } catch (Exception unused) {
                eq5.d("VideoDownloadQueue", "DownloadQueue getDownloadingCount failed.");
            }
        }
        return i;
    }

    public boolean d(VideoTaskItem videoTaskItem) {
        if (videoTaskItem == null) {
            return false;
        }
        int taskState = videoTaskItem.getTaskState();
        return taskState == -1 || taskState == 1;
    }

    public boolean e(VideoTaskItem videoTaskItem) {
        if (videoTaskItem == null) {
            return false;
        }
        int taskState = videoTaskItem.getTaskState();
        return taskState == 2 || taskState == 3;
    }

    public VideoTaskItem f() {
        for (int i = 0; i < this.a.size(); i++) {
            try {
                VideoTaskItem videoTaskItem = (VideoTaskItem) this.a.get(i);
                if (d(videoTaskItem)) {
                    return videoTaskItem;
                }
            } catch (Exception unused) {
                eq5.d("VideoDownloadQueue", "DownloadQueue getDownloadingCount failed.");
                return null;
            }
        }
        return null;
    }

    public boolean g(VideoTaskItem videoTaskItem) {
        if (a(videoTaskItem)) {
            return this.a.remove(videoTaskItem);
        }
        return false;
    }

    public int h() {
        return this.a.size();
    }
}
