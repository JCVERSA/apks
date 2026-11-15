package defpackage;

import android.os.Environment;
import com.lzy.okgo.model.Progress;
import com.lzy.okserver.download.DownloadTask;
import com.lzy.okserver.task.XExecutor;
import java.io.File;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class ee7 {
    public String a;
    public t13 b;
    public ConcurrentHashMap c;

    public static class b {
        public static final ee7 a = new ee7();
    }

    public static ee7 b() {
        return b.a;
    }

    public String a() {
        return this.a;
    }

    public void addOnAllTaskEndListener(XExecutor.a aVar) {
        this.b.a().addOnAllTaskEndListener(aVar);
    }

    public DownloadTask c(String str) {
        return (DownloadTask) this.c.get(str);
    }

    public t13 d() {
        return this.b;
    }

    public DownloadTask e(String str) {
        return (DownloadTask) this.c.remove(str);
    }

    public void removeOnAllTaskEndListener(XExecutor.a aVar) {
        this.b.a().removeOnAllTaskEndListener(aVar);
    }

    public ee7() {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory());
        String str = File.separator;
        sb.append(str);
        sb.append("download");
        sb.append(str);
        String string = sb.toString();
        this.a = string;
        mv4.c(string);
        this.b = new t13();
        this.c = new ConcurrentHashMap();
        List<Progress> listR = r03.t().r();
        for (Progress progress : listR) {
            int i = progress.status;
            if (i == 1 || i == 2 || i == 3) {
                progress.status = 0;
            }
        }
        r03.t().l(listR);
    }
}
