package pl;

import android.net.Uri;
import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class e {

    public static final e f69202a = new e();

    private e() {
    }

    public final boolean a(String url) {
        Object objM453constructorimpl;
        Intrinsics.h(url, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(url);
            String query = uri.getQuery();
            if (query == null) {
                String fragment = uri.getFragment();
                query = null;
                if (fragment != null) {
                    query = StringsKt.b1(fragment, UrlUtils.QUESTION_MARK, null, 2, null);
                }
            }
            String queryParameter = Uri.parse(UrlUtils.QUESTION_MARK + query).getQueryParameter("h5_bar");
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(queryParameter != null ? Boolean.parseBoolean(queryParameter) : false));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            System.out.println((Object) ("Error parsing URL: " + thM456exceptionOrNullimpl.getMessage()));
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }
}
