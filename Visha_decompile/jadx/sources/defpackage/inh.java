package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.internal.ads.zzauz;
import com.transsion.apiinvoke.common.router.ProcessInfo;

public final class inh {
    public final fre a;

    public inh(fre freVar) {
        this.a = freVar;
    }

    public static final Uri b(Uri uri, String str) throws zzauz {
        if (uri != null) {
            try {
                try {
                    String host = uri.getHost();
                    String path = uri.getPath();
                    if (host != null && host.equals("ad.doubleclick.net") && path != null && path.contains(ProcessInfo.SPLIT_NEW_VERSION)) {
                        if (uri.toString().contains("dc_ms=")) {
                            throw new zzauz("Parameter already exists: dc_ms");
                        }
                        String string = uri.toString();
                        int iIndexOf = string.indexOf(";adurl");
                        if (iIndexOf != -1) {
                            int i = iIndexOf + 1;
                            StringBuilder sb = new StringBuilder(string.substring(0, i));
                            sb.append("dc_ms");
                            sb.append("=");
                            sb.append(str);
                            sb.append(ProcessInfo.SPLIT_NEW_VERSION);
                            sb.append((CharSequence) string, i, string.length());
                            return Uri.parse(sb.toString());
                        }
                        String encodedPath = uri.getEncodedPath();
                        if (encodedPath == null) {
                            throw new UnsupportedOperationException();
                        }
                        int iIndexOf2 = string.indexOf(encodedPath);
                        StringBuilder sb2 = new StringBuilder(string.substring(0, encodedPath.length() + iIndexOf2));
                        sb2.append(ProcessInfo.SPLIT_NEW_VERSION);
                        sb2.append("dc_ms");
                        sb2.append("=");
                        sb2.append(str);
                        sb2.append(ProcessInfo.SPLIT_NEW_VERSION);
                        sb2.append((CharSequence) string, iIndexOf2 + encodedPath.length(), string.length());
                        return Uri.parse(sb2.toString());
                    }
                } catch (NullPointerException unused) {
                }
            } catch (UnsupportedOperationException unused2) {
                throw new zzauz("Provided Uri is not in a valid state");
            }
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
        StringBuilder sb3 = new StringBuilder(string2.substring(0, i2));
        sb3.append("ms");
        sb3.append("=");
        sb3.append(str);
        sb3.append("&");
        sb3.append((CharSequence) string2, i2, string2.length());
        return Uri.parse(sb3.toString());
    }

    public final Uri a(Uri uri, Context context, View view, Activity activity) throws zzauz {
        try {
            return b(uri, this.a.c().zze(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzauz("Provided Uri is not in a valid state");
        }
    }
}
