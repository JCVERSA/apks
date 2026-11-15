package ix;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.text.StringsKt;

public final class b {

    public static final b f62812a = new b();

    private b() {
    }

    public final int a() {
        Object objM453constructorimpl;
        String value;
        Integer numV;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("login_method_config", true);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((configBeanC == null || (value = configBeanC.getValue()) == null || (numV = StringsKt.v(value)) == null) ? 0 : numV.intValue()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 0;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final boolean b() {
        return a() == 1;
    }
}
