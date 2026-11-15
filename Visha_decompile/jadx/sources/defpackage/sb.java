package defpackage;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.Progress;

public final class sb implements e {
    @Override
    public int d(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, NotificationCompat.CATEGORY_MESSAGE);
        return Log.d(str, str2);
    }

    @Override
    public int e(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, NotificationCompat.CATEGORY_MESSAGE);
        return Log.e(str, str2);
    }

    @Override
    public int i(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, NotificationCompat.CATEGORY_MESSAGE);
        return Log.i(str, str2);
    }

    @Override
    public int w(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, NotificationCompat.CATEGORY_MESSAGE);
        return Log.w(str, str2);
    }

    @Override
    public int e(String str, String str2, Throwable th) {
        y45.j(str, Progress.TAG);
        y45.j(str2, NotificationCompat.CATEGORY_MESSAGE);
        y45.j(th, "tr");
        return Log.e(str, str2, th);
    }

    @Override
    public int w(String str, String str2, Throwable th) {
        y45.j(str, Progress.TAG);
        y45.j(str2, NotificationCompat.CATEGORY_MESSAGE);
        y45.j(th, "tr");
        return Log.w(str, str2, th);
    }
}
