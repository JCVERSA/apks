package zw;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import kotlin.jvm.internal.Intrinsics;

public abstract class d extends a {
    @Override
    public void a(DownloadBean bean, DownloadException downloadException) {
        Intrinsics.h(bean, "bean");
        h(bean, 6);
    }

    @Override
    public void b(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        if (bean.getStatus() != 7) {
            bean.setPreStatus(bean.getStatus());
        }
        h(bean, 7);
    }

    @Override
    public void c(DownloadBean bean, long j10, long j11) {
        Intrinsics.h(bean, "bean");
        h(bean, 2);
    }

    @Override
    public void d(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        h(bean, 3);
    }

    @Override
    public void e(DownloadBean bean, String str) {
        Intrinsics.h(bean, "bean");
        h(bean, 5);
    }

    @Override
    public void f(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        h(bean, 4);
    }

    @Override
    public void g(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        h(bean, 1);
    }

    public abstract void h(DownloadBean downloadBean, int i10);
}
