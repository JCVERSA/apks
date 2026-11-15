package ax;

import cm.f;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.downloader.core.thread.DownloadExecutor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;

public final class b {

    private final String f15453a = "GET";

    private int f15454b = 60000;

    private int f15455c = 60000;

    private int f15456d = 1;

    private int f15457e = ((DownloadExecutor.f56425a.a() / 2) + 2) / this.f15456d;

    private int f15458f = 3;

    private int f15459g = 5;

    private final Lazy f15460h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Long.valueOf(b.h());
        }
    });

    private final int f15461i = -1;

    public static final long h() {
        Long lX;
        ConfigBean configBeanC = f.f17019c.a().c("downloadRangeSize", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 5242880L;
        }
        return lX.longValue();
    }

    public final int b() {
        return this.f15456d;
    }

    public final int c() {
        return this.f15457e;
    }

    public final long d() {
        return ((Number) this.f15460h.getValue()).longValue();
    }

    public final int e() {
        return this.f15461i;
    }

    public final int f() {
        return this.f15459g;
    }

    public final int g() {
        return this.f15458f;
    }

    public final void i(int i10) {
        this.f15456d = i10;
    }
}
