package defpackage;

import android.content.Context;
import android.util.Log;
import android.webkit.JavascriptInterface;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class aka {
    public static final a e = new a(null);
    public final Context a;
    public boolean b;
    public String c;
    public String d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public aka(Context context) {
        y45.j(context, "context");
        this.a = context;
        this.c = "";
        this.d = "visible";
    }

    public final String a() {
        return this.c;
    }

    public final boolean b() {
        return this.b;
    }

    public final void c(String str) {
        y45.j(str, "<set-?>");
        this.d = str;
    }

    @JavascriptInterface
    public final String getAdTransferParams() {
        soa soaVar = new soa(null, null, 3, null);
        soaVar.b(com.transsion.utils.deviceinfo.a.d.a());
        soaVar.a("visha");
        String strI = ek4.i(soaVar);
        Log.d("TiktokJsInterface", "getAdTransferParams: json = " + strI);
        y45.g(strI);
        return strI;
    }

    @JavascriptInterface
    public final String getVisibilityState() {
        Log.d("TiktokJsInterface", "getVisibilityState: visibilityState = " + this.d);
        return this.d;
    }

    @JavascriptInterface
    public final void onSystemBackListener(boolean z, String str) {
        y45.j(str, "callbackFunctionName");
        Log.d("TiktokJsInterface", "onSystemBackListener: useWebappCallback " + z + "  callbackFunctionName " + str);
        this.b = z;
        this.c = str;
    }
}
