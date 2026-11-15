package com.transsion.player.orplayer;

import com.aliyun.loader.MediaLoader;
import com.aliyun.player.AliPlayerGlobalSettings;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ORPlayerPreloadManager implements MediaLoader.OnLoadStatusListener {

    public static final a f46433i = new a(null);

    private static final Lazy f46434j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ORPlayerPreloadManager.d();
        }
    });

    private final String f46435a = "ORPlayerPreload";

    private final long f46436b = 4000;

    private long f46437c = 4000;

    private String f46438d = "";

    private final CopyOnWriteArrayList f46439e = new CopyOnWriteArrayList();

    private final CopyOnWriteArrayList f46440f = new CopyOnWriteArrayList();

    private final CopyOnWriteArrayList f46441g = new CopyOnWriteArrayList();

    private long f46442h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ORPlayerPreloadManager a() {
            return (ORPlayerPreloadManager) ORPlayerPreloadManager.f46434j.getValue();
        }

        private a() {
        }
    }

    public ORPlayerPreloadManager() {
        MediaLoader.getInstance().setOnLoadStatusListener(this);
        File externalCacheDir = Utils.a().getExternalCacheDir();
        String absolutePath = externalCacheDir != null ? externalCacheDir.getAbsolutePath() : null;
        String str = absolutePath + File.separator + "video_cache";
        try {
            Result.Companion companion = Result.INSTANCE;
            AliPlayerGlobalSettings.enableLocalCache(true, 0, str);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final ORPlayerPreloadManager d() {
        return new ORPlayerPreloadManager();
    }

    private final void l(String str) {
        this.f46442h = System.currentTimeMillis();
        sn.e.b(sn.e.f72355a, this.f46435a, "startPreload, url = " + str, false, 4, null);
        MediaLoader.getInstance().load(str, this.f46437c);
    }

    public final void c() {
        sn.e.b(sn.e.f72355a, this.f46435a, "cancelAll", false, 4, null);
        this.f46438d = "";
        this.f46441g.clear();
        this.f46439e.clear();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ORPlayerPreloadManager$cancelAll$1(null), 3, null);
    }

    public final boolean e(String url) {
        Intrinsics.h(url, "url");
        return this.f46440f.contains(url);
    }

    public final boolean f(String url) {
        Intrinsics.h(url, "url");
        return (this.f46438d.length() > 0 && Intrinsics.c(url, this.f46438d)) || this.f46441g.contains(url);
    }

    public final void g(String url) {
        Intrinsics.h(url, "url");
        if (!f(url)) {
            sn.e.b(sn.e.f72355a, this.f46435a, "pause, but not contains, PausedContains =  " + this.f46439e.contains(url) + ", url = " + url, false, 4, null);
            return;
        }
        sn.e.b(sn.e.f72355a, this.f46435a, "pause, url = " + url, false, 4, null);
        this.f46439e.add(url);
        if (!Intrinsics.c(this.f46438d, url)) {
            if (this.f46441g.contains(url)) {
                this.f46441g.remove(url);
                return;
            }
            return;
        }
        this.f46438d = "";
        MediaLoader.getInstance().pause(url);
        if (this.f46441g.isEmpty()) {
            return;
        }
        Object objI0 = CollectionsKt.i0(this.f46441g);
        Intrinsics.g(objI0, "first(...)");
        String str = (String) objI0;
        this.f46438d = str;
        l(str);
        this.f46441g.remove(this.f46438d);
    }

    public final void h() {
        sn.e.b(sn.e.f72355a, this.f46435a, "pauseAll, paused size = " + this.f46439e.size() + ", urlsCache size = " + this.f46441g.size() + ", curUrl = " + this.f46438d + " ", false, 4, null);
        if (this.f46438d.length() > 0) {
            MediaLoader.getInstance().pause(this.f46438d);
            this.f46439e.add(this.f46438d);
            this.f46438d = "";
        }
        if (this.f46441g.isEmpty()) {
            return;
        }
        this.f46439e.addAll(this.f46441g);
        this.f46441g.clear();
    }

    public final void i(String url) {
        Intrinsics.h(url, "url");
        j(url, this.f46436b);
    }

    public final void j(String url, long j10) {
        Intrinsics.h(url, "url");
        if (j10 > 0) {
            this.f46437c = j10;
        }
        if (f(url)) {
            sn.e.b(sn.e.f72355a, this.f46435a, "start preload, contains return~ url = " + url, false, 4, null);
            return;
        }
        if (this.f46439e.contains(url)) {
            sn.e.b(sn.e.f72355a, this.f46435a, "start preload, pause contains resume~ url = " + url, false, 4, null);
            if (this.f46438d.length() > 0) {
                this.f46441g.add(url);
            } else {
                this.f46438d = url;
                MediaLoader.getInstance().resume(url);
            }
            this.f46439e.remove(url);
            return;
        }
        if (this.f46440f.contains(url)) {
            sn.e.b(sn.e.f72355a, this.f46435a, "is preloaded, return, url = " + url, false, 4, null);
            return;
        }
        if (this.f46438d.length() <= 0) {
            this.f46438d = url;
            l(url);
            return;
        }
        if (System.currentTimeMillis() - this.f46442h <= 5000) {
            sn.e.b(sn.e.f72355a, this.f46435a, "start preload, add to cache, url = " + url, false, 4, null);
            this.f46441g.add(url);
            return;
        }
        sn.e.i(sn.e.f72355a, this.f46435a, "last is more than 5 sec, preload new url", false, 4, null);
        if (this.f46441g.isEmpty()) {
            this.f46438d = url;
            l(url);
            return;
        }
        Object objI0 = CollectionsKt.i0(this.f46441g);
        Intrinsics.g(objI0, "first(...)");
        String str = (String) objI0;
        this.f46438d = str;
        l(str);
        this.f46441g.remove(this.f46438d);
        this.f46441g.add(url);
    }

    public final void k() {
        sn.e.b(sn.e.f72355a, this.f46435a, "resumeAll, paused size = " + this.f46439e.size() + ", urlsCache size = " + this.f46441g.size() + ", curUrl = " + this.f46438d + " ", false, 4, null);
        if (this.f46438d.length() > 0) {
            return;
        }
        if (!this.f46439e.isEmpty()) {
            Iterator it = this.f46439e.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                String str = (String) it.next();
                if (this.f46438d.length() > 0) {
                    this.f46441g.add(str);
                } else {
                    Intrinsics.e(str);
                    this.f46438d = str;
                    MediaLoader.getInstance().resume(str);
                }
            }
        }
        this.f46439e.clear();
    }

    @Override
    public void onCanceled(String str) {
    }

    @Override
    public void onCompleted(String str) {
        sn.e.i(sn.e.f72355a, this.f46435a, "preload complete, url = " + str, false, 4, null);
        this.f46439e.remove(str);
        if (this.f46441g.isEmpty()) {
            this.f46438d = "";
        } else {
            Object objI0 = CollectionsKt.i0(this.f46441g);
            Intrinsics.g(objI0, "first(...)");
            String str2 = (String) objI0;
            this.f46438d = str2;
            l(str2);
            this.f46441g.remove(this.f46438d);
        }
        if (str != null) {
            this.f46440f.add(str);
        }
    }

    @Override
    public void onError(String str, int i10, String str2) {
        sn.e.b(sn.e.f72355a, this.f46435a, "preload error, " + (i10 == -300 ? "is preloaded code" : "errorCode") + " = " + i10 + ", errorMsg= " + str2 + ", url = " + str, false, 4, null);
        if (!this.f46441g.isEmpty()) {
            Object objI0 = CollectionsKt.i0(this.f46441g);
            Intrinsics.g(objI0, "first(...)");
            String str3 = (String) objI0;
            this.f46438d = str3;
            l(str3);
            this.f46441g.remove(this.f46438d);
        }
        this.f46439e.remove(str);
        if (i10 == -300) {
            this.f46440f.add(str);
        }
    }
}
