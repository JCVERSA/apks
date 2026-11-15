package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzauz;
import com.transsion.apiinvoke.common.router.ProcessInfo;

public final class fre {
    public static final String[] d = {"/aclk", "/pcs/click", "/dbm/clk"};
    public final String a = "ad.doubleclick.net";
    public final String[] b = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    public final are c;

    public fre(are areVar) {
        this.c = areVar;
    }

    public final Uri a(Uri uri, Context context, View view, Activity activity) throws zzauz {
        try {
            return g(uri, this.c.zze(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzauz("Provided Uri is not in a valid state");
        }
    }

    public final Uri b(Uri uri, Context context) {
        return g(uri, this.c.zzf(context));
    }

    public final are c() {
        return this.c;
    }

    public final void d(MotionEvent motionEvent) {
        this.c.zzk(motionEvent);
    }

    public final boolean e(Uri uri) {
        if (f(uri)) {
            String[] strArr = d;
            for (int i = 0; i < 3; i++) {
                if (uri.getPath().endsWith(strArr[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean f(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            String[] strArr = this.b;
            for (int i = 0; i < 3; i++) {
                if (host.endsWith(strArr[i])) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final Uri g(Uri uri, String str) throws zzauz {
        try {
            if (uri == null) {
                throw null;
            }
            try {
                if (uri.getHost().equals(this.a) && uri.getPath().contains(ProcessInfo.SPLIT_NEW_VERSION)) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzauz("Parameter already exists: dc_ms");
                    }
                    String string = uri.toString();
                    int iIndexOf = string.indexOf(";adurl");
                    if (iIndexOf != -1) {
                        int i = iIndexOf + 1;
                        return Uri.parse(string.substring(0, i) + "dc_ms=" + str + ProcessInfo.SPLIT_NEW_VERSION + string.substring(i));
                    }
                    String encodedPath = uri.getEncodedPath();
                    int iIndexOf2 = string.indexOf(encodedPath);
                    return Uri.parse(string.substring(0, encodedPath.length() + iIndexOf2) + ProcessInfo.SPLIT_NEW_VERSION + "dc_ms=" + str + ProcessInfo.SPLIT_NEW_VERSION + string.substring(iIndexOf2 + encodedPath.length()));
                }
            } catch (NullPointerException unused) {
            }
            if (uri.getQueryParameter("ms") != null) {
                throw new zzauz("Query parameter already exists: ms");
            }
            String string2 = uri.toString();
            int iIndexOf3 = string2.indexOf("&adurl");
            if (iIndexOf3 == -1) {
                iIndexOf3 = string2.indexOf("?adurl");
            }
            if (iIndexOf3 == -1) {
                return uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            int i2 = iIndexOf3 + 1;
            return Uri.parse(string2.substring(0, i2) + "ms=" + str + "&" + string2.substring(i2));
        } catch (UnsupportedOperationException unused2) {
            throw new zzauz("Provided Uri is not in a valid state");
        }
    }
}
