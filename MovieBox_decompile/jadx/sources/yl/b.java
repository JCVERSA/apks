package yl;

import android.net.Network;
import android.net.NetworkCapabilities;
import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.FileRemoteDataManager;
import kotlin.jvm.internal.Intrinsics;
import pl.h;
import yg.l;
import yg.m;

public final class b implements m {

    public static final b f76271a = new b();

    private b() {
    }

    private final String a() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b() {
        l.f76264a.l(this);
    }

    @Override
    public void onConnected() {
        m.a.a(this);
    }

    @Override
    public void onDisconnected() {
        com.transsion.lib_web.download_render.utils.d.f44821a.c();
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        com.transsion.lib_web.download_render.utils.d.f44821a.b();
        FileDownloadTaskManager.f44780a.l();
        FileRemoteDataManager.f44791a.k();
        h.f69205a.c(a() + " --> onConnected() --> 网络重新链接的时候检查一下字幕下载 --> 延迟5秒，优化网络抖动 .....");
    }
}
