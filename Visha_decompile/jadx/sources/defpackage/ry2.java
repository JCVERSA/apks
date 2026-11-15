package defpackage;

import android.app.Notification;
import android.content.Context;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import java.util.List;

public interface ry2 extends bd0 {
    void A(NewDownloadTask newDownloadTask, boolean z);

    @Override
    void a(boolean z);

    @Override
    void b(Notification notification);

    NewDownloadTask c(String str, boolean z);

    boolean n(Context context, List list);

    int o();

    boolean p(Context context, ba0 ba0Var);

    GlobalDownloadManger.NetType w();
}
