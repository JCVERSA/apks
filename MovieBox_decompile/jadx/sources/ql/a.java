package ql;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f69892a = new a();

    private static String f69893b = "";

    private static BridgeWebView f69894c;

    private a() {
    }

    public final void a(BridgeWebView bridgeWebView) {
        if (bridgeWebView != null) {
            ViewParent parent = bridgeWebView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(bridgeWebView);
            }
            bridgeWebView.stopLoading();
            bridgeWebView.clearHistory();
            bridgeWebView.clearCache(true);
            bridgeWebView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            bridgeWebView.destroy();
        }
    }

    public final BridgeWebView b(String url, Context context) {
        Intrinsics.h(url, "url");
        if (!c(url)) {
            b bVar = b.f69895a;
            bVar.f("get() --> 没有缓存，直接创建一个新的 --> url = " + url);
            if (context == null) {
                context = Utils.a().getApplicationContext();
            }
            Intrinsics.e(context);
            return bVar.b(context);
        }
        BridgeWebView bridgeWebView = f69894c;
        f69894c = null;
        f69893b = null;
        b bVar2 = b.f69895a;
        bVar2.f("get() --> 缓存命中，直接复用 --> url = " + url);
        if (bridgeWebView != null) {
            return bridgeWebView;
        }
        if (context == null) {
            context = Utils.a().getApplicationContext();
        }
        Intrinsics.e(context);
        return bVar2.b(context);
    }

    public final boolean c(String url) {
        Intrinsics.h(url, "url");
        return TextUtils.equals(url, f69893b);
    }

    public final void d(String url) {
        Intrinsics.h(url, "url");
        if (TextUtils.equals(url, f69893b)) {
            b.f69895a.f("preload() --> 正在缓存的地址，无需重复创建 --> url = " + url);
            return;
        }
        f69893b = url;
        if (Build.VERSION.SDK_INT >= 36) {
            b.f69895a.f("preload() --> API 36+，跳过 WebView 预创建 --> url = " + url);
            return;
        }
        if (f69894c == null) {
            b bVar = b.f69895a;
            Context applicationContext = Utils.a().getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            f69894c = bVar.b(applicationContext);
            bVar.f("preloadInternal() --> 不存在创建新的对象");
        }
        BridgeWebView bridgeWebView = f69894c;
        if (bridgeWebView != null) {
            bridgeWebView.setTag(-1001, String.valueOf(System.currentTimeMillis()));
            bridgeWebView.stopLoading();
            bridgeWebView.clearHistory();
            bridgeWebView.clearCache(true);
            bridgeWebView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            bridgeWebView.loadUrl(url);
            b bVar2 = b.f69895a;
            bVar2.f("preloadInternal() --> 创建新对象加入缓存池 --> 预加载埋点 --> url = " + url);
            bVar2.g(url, "preload");
            bridgeWebView.setTag(-1001, Boolean.TRUE);
        }
    }
}
