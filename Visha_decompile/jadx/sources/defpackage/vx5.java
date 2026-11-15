package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.router.RouterUtils;

public final class vx5 {
    public static final vx5 a = new vx5();

    public static final void b(Context context, Uri uri) {
        y45.j(context, "context");
        y45.j(uri, "uri");
        RouterBean.RouterData routerDataE = e(uri);
        if (routerDataE == null) {
            Log.e("MainTabDeepLinkHelper", "execute: invalid main_tab uri=" + uri);
            return;
        }
        Log.i("MainTabDeepLinkHelper", "execute: route to main tab, bottom=" + routerDataE.getBottom_position() + ", top=" + routerDataE.getTop_position());
        Intent intentAddFlags = a.a(context, routerDataE).addFlags(335544320);
        y45.i(intentAddFlags, "addFlags(...)");
        context.startActivity(intentAddFlags);
    }

    public static final boolean d(Uri uri) {
        return y45.e(uri != null ? uri.getLastPathSegment() : null, "main_tab");
    }

    public static final RouterBean.RouterData e(Uri uri) {
        Log.i("MainTabDeepLinkHelper", "parseRouterData uri=" + uri);
        if (!d(uri)) {
            return null;
        }
        y45.g(uri);
        vx5 vx5Var = a;
        int i = 0;
        int iC = vx5Var.c(uri, "bottom_position", 0);
        if (iC < 0 || iC > 4) {
            Log.w("MainTabDeepLinkHelper", "invalid bottom_position: " + iC + ", fallback to OTT tab, uri=" + uri);
            iC = 2;
        }
        int iC2 = vx5Var.c(uri, "top_position", 0);
        if (iC2 < 0) {
            Log.w("MainTabDeepLinkHelper", "invalid top_position: " + iC2 + ", fallback to 0, uri=" + uri);
        } else {
            i = iC2;
        }
        RouterBean.RouterData routerData = new RouterBean.RouterData(iC, i);
        String queryParameter = uri.getQueryParameter("from_card");
        if (queryParameter == null) {
            queryParameter = "external_deeplink";
        }
        routerData.setFrom_card(queryParameter);
        String queryParameter2 = uri.getQueryParameter(SheetDialogParamsConstant.FROM_PAGE);
        if (queryParameter2 != null) {
            routerData.setFrom_page(queryParameter2);
        }
        String queryParameter3 = uri.getQueryParameter("hint_message");
        if (queryParameter3 != null) {
            routerData.setHintMessage(queryParameter3);
        }
        return routerData;
    }

    public final Intent a(Context context, RouterBean.RouterData routerData) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        Intent intent = new Intent("com.transsion.magicmovie.video_player_main_activity");
        intent.setPackage(context.getPackageName());
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        return intent;
    }

    public final int c(Uri uri, String str, int i) {
        Integer numR;
        String queryParameter = uri.getQueryParameter(str);
        return (queryParameter == null || (numR = f1a.r(queryParameter)) == null) ? i : numR.intValue();
    }
}
