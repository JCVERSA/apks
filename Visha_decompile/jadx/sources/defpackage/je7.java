package defpackage;

import com.lzy.okgo.model.Progress;
import com.lzy.okserver.task.XExecutor;
import com.lzy.okserver.upload.UploadTask;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class je7 {
    public Map a;
    public yhb b;

    public static class b {
        public static final je7 a = new je7();
    }

    public static je7 a() {
        return b.a;
    }

    public void addOnAllTaskEndListener(XExecutor.a aVar) {
        this.b.a().addOnAllTaskEndListener(aVar);
    }

    public UploadTask b(String str) {
        return (UploadTask) this.a.get(str);
    }

    public yhb c() {
        return this.b;
    }

    public UploadTask d(String str) {
        return (UploadTask) this.a.remove(str);
    }

    public void removeOnAllTaskEndListener(XExecutor.a aVar) {
        this.b.a().removeOnAllTaskEndListener(aVar);
    }

    public je7() {
        this.b = new yhb();
        this.a = new LinkedHashMap();
        List<Progress> listR = phb.q().r();
        for (Progress progress : listR) {
            int i = progress.status;
            if (i == 1 || i == 2 || i == 3) {
                progress.status = 0;
            }
        }
        phb.q().l(listR);
    }
}
