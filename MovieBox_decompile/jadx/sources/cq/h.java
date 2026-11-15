package cq;

import com.google.gson.Gson;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.search.net.GoogleSuggestConfig;
import java.util.Locale;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;

public final class h {

    public static final h f58647a = new h();

    private h() {
    }

    private final Map b() {
        return MapsKt.l(TuplesKt.a("hl", a()), TuplesKt.a("client", "android"));
    }

    private final GoogleSuggestConfig d(String str) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            GoogleSuggestConfig googleSuggestConfig = (GoogleSuggestConfig) new Gson().fromJson(str, GoogleSuggestConfig.class);
            Map<String, String> queryParams = googleSuggestConfig.getQueryParams();
            Map<String, String> mapH = (queryParams == null || queryParams.isEmpty()) ? MapsKt.h() : googleSuggestConfig.getQueryParams();
            Map<String, String> headers = googleSuggestConfig.getHeaders();
            if (headers == null) {
                headers = MapsKt.h();
            }
            objM453constructorimpl = Result.m453constructorimpl(new GoogleSuggestConfig(headers, mapH));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = new GoogleSuggestConfig(MapsKt.h(), f58647a.b());
        }
        return (GoogleSuggestConfig) objM453constructorimpl;
    }

    public final String a() {
        String strG = jg.b.f63119a.g();
        if (strG == null) {
            strG = Locale.getDefault().getLanguage();
        }
        return StringsKt.q0(strG) ? "en" : strG;
    }

    public final GoogleSuggestConfig c() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c(ij.g.f62108a.b() ? "google_suggest_api_config_for_showbox" : "google_suggest_api_config", false);
            objM453constructorimpl = Result.m453constructorimpl(configBeanC != null ? configBeanC.getValue() : null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        String str = (String) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
        return (str == null || StringsKt.q0(str)) ? new GoogleSuggestConfig(MapsKt.h(), b()) : d(str);
    }
}
