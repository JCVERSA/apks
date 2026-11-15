package defpackage;

import android.content.Context;
import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;

public final class lh5 implements ru4 {
    @Override
    public void a(Context context, Uri uri) {
        int iM0;
        y45.j(context, "context");
        y45.j(uri, "uri");
        String encodedQuery = uri.getEncodedQuery();
        String strDecode = "";
        if (encodedQuery != null && encodedQuery.length() != 0 && (iM0 = j1a.m0(encodedQuery, "share_url=", 0, false, 6, null)) != -1) {
            String strSubstring = encodedQuery.substring(iM0 + 10);
            y45.i(strSubstring, "substring(...)");
            strDecode = Uri.decode(strSubstring);
        }
        LogUtils.j("KtShareTask", "Processing kt_share with url: " + strDecode);
        h27.c().e(1132, strDecode);
    }

    @Override
    public String b() {
        return "kt_share";
    }
}
