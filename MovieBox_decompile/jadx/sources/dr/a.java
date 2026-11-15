package dr;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.core.utils.ToastUtil;
import java.util.HashMap;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a {

    public static final a f59060a = new a();

    private a() {
    }

    public final Uri a(Uri uri) {
        Object objM453constructorimpl;
        if (uri == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String queryParameter = uri.getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE);
            String str = "";
            if (queryParameter == null) {
                queryParameter = "";
            }
            if (queryParameter.length() > 0) {
                return uri.buildUpon().path(queryParameter).build();
            }
            HashMap map = new HashMap();
            map.put("subject", "/movie/detail");
            map.put("post", "/post/detail");
            String string = uri.toString();
            Intrinsics.g(string, "toString(...)");
            if (!TextUtils.isEmpty(string)) {
                List listS0 = StringsKt.S0(string, new String[]{"-"}, false, 0, 6, null);
                if (listS0.size() >= 2) {
                    String str2 = (String) map.get(listS0.get(0));
                    String str3 = (String) listS0.get(1);
                    return new Uri.Builder().encodedPath(str2).encodedQuery("id=" + str3).build();
                }
            }
            String path = uri.getPath();
            if (path != null) {
                str = path;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < str.length(); i11++) {
                if (str.charAt(i11) == '/') {
                    i10++;
                }
            }
            if (i10 < 2) {
                return null;
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                ToastUtil.f("请升级最新版本");
            }
            return uri;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
