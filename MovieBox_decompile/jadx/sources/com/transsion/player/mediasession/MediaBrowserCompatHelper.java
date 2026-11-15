package com.transsion.player.mediasession;

import android.app.Application;
import android.content.ComponentName;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class MediaBrowserCompatHelper {

    public static final a f46405h = new a(null);

    private static final Lazy f46406i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MediaBrowserCompatHelper.q();
        }
    });

    private MediaBrowserCompat f46410d;

    private MediaControllerCompat f46411e;

    private boolean f46413g;

    private final MediaBrowserCompat.n f46407a = new d();

    private final MediaControllerCompat.a f46408b = new c();

    private final MediaBrowserCompat.c f46409c = new b();

    private List f46412f = new ArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaBrowserCompatHelper a() {
            return (MediaBrowserCompatHelper) MediaBrowserCompatHelper.f46406i.getValue();
        }

        private a() {
        }
    }

    public static final class b extends MediaBrowserCompat.c {
        b() {
        }

        @Override
        public void a() {
            String strC;
            super.a();
            try {
                try {
                    MediaBrowserCompat mediaBrowserCompat = MediaBrowserCompatHelper.this.f46410d;
                    if (mediaBrowserCompat != null && (strC = mediaBrowserCompat.c()) != null) {
                        MediaBrowserCompatHelper mediaBrowserCompatHelper = MediaBrowserCompatHelper.this;
                        MediaBrowserCompat mediaBrowserCompat2 = mediaBrowserCompatHelper.f46410d;
                        if (mediaBrowserCompat2 != null) {
                            mediaBrowserCompat2.g(strC);
                        }
                        MediaBrowserCompat mediaBrowserCompat3 = mediaBrowserCompatHelper.f46410d;
                        if (mediaBrowserCompat3 != null) {
                            mediaBrowserCompat3.f(strC, mediaBrowserCompatHelper.f46407a);
                        }
                    }
                    MediaBrowserCompatHelper mediaBrowserCompatHelper2 = MediaBrowserCompatHelper.this;
                    Application applicationA = Utils.a();
                    MediaBrowserCompat mediaBrowserCompat4 = MediaBrowserCompatHelper.this.f46410d;
                    Intrinsics.e(mediaBrowserCompat4);
                    mediaBrowserCompatHelper2.f46411e = new MediaControllerCompat(applicationA, mediaBrowserCompat4.d());
                    MediaControllerCompat mediaControllerCompat = MediaBrowserCompatHelper.this.f46411e;
                    if (mediaControllerCompat != null) {
                        mediaControllerCompat.c(MediaBrowserCompatHelper.this.f46408b);
                    }
                    List<Function1> list = MediaBrowserCompatHelper.this.f46412f;
                    MediaBrowserCompatHelper mediaBrowserCompatHelper3 = MediaBrowserCompatHelper.this;
                    for (Function1 function1 : list) {
                        MediaControllerCompat mediaControllerCompat2 = mediaBrowserCompatHelper3.f46411e;
                        function1.invoke(mediaControllerCompat2 != null ? mediaControllerCompat2.b() : null);
                    }
                    MediaBrowserCompatHelper.this.f46412f.clear();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    i.f46432a.a("mediaSource --> connectionCallback --> e = " + Log.getStackTraceString(e10));
                }
            } finally {
                MediaBrowserCompatHelper.this.f46413g = false;
            }
        }

        @Override
        public void b() {
            super.b();
            MediaBrowserCompatHelper.this.f46413g = false;
        }

        @Override
        public void c() {
            super.c();
        }
    }

    public static final class c extends MediaControllerCompat.a {
        c() {
        }

        @Override
        public void d(MediaMetadataCompat metadata) {
            Intrinsics.h(metadata, "metadata");
            super.d(metadata);
        }

        @Override
        public void e(PlaybackStateCompat playbackStateCompat) {
            super.e(playbackStateCompat);
        }
    }

    public static final class d extends MediaBrowserCompat.n {
        d() {
        }

        @Override
        public void a(String parentId, List children) {
            Intrinsics.h(parentId, "parentId");
            Intrinsics.h(children, "children");
            super.a(parentId, children);
            i.f46432a.a("mediaSource --> subscriptionCallback --> onChildrenLoaded() --> parentId = " + parentId + " -- children = " + children);
        }
    }

    public static final Unit A(MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.c();
        }
        return Unit.f64096a;
    }

    public static final MediaBrowserCompatHelper q() {
        return new MediaBrowserCompatHelper();
    }

    public static final Unit s(MediaItem mediaItem, MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.a("transsion_pause", androidx.core.os.d.b(new Pair("MediaItem", mediaItem)));
        }
        return Unit.f64096a;
    }

    public static final Unit u(MediaItem mediaItem, MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.a("transsion_play", androidx.core.os.d.b(new Pair("MediaItem", mediaItem)));
        }
        return Unit.f64096a;
    }

    private final void w(Function1 function1) {
        p(function1);
    }

    public static final Unit y(MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.b();
        }
        return Unit.f64096a;
    }

    public final void p(Function1 function1) {
        Object objD;
        try {
            Result.Companion companion = Result.INSTANCE;
            MediaBrowserCompat mediaBrowserCompat = this.f46410d;
            Object obj = null;
            if (mediaBrowserCompat != null && mediaBrowserCompat.e()) {
                if (function1 != null) {
                    MediaControllerCompat mediaControllerCompat = this.f46411e;
                    function1.invoke(mediaControllerCompat != null ? mediaControllerCompat.b() : null);
                    return;
                }
                return;
            }
            if (this.f46413g) {
                if (function1 != null) {
                    this.f46412f.add(function1);
                    return;
                }
                return;
            }
            this.f46413g = true;
            Application applicationA = Utils.a();
            if (applicationA != null) {
                if (ThreadUtils.i()) {
                    if (function1 != null) {
                        this.f46412f.add(function1);
                    }
                    MediaBrowserCompat mediaBrowserCompat2 = new MediaBrowserCompat(applicationA, new ComponentName(applicationA, (Class<?>) MediaService.class), this.f46409c, null);
                    this.f46410d = mediaBrowserCompat2;
                    mediaBrowserCompat2.a();
                    objD = Unit.f64096a;
                } else {
                    objD = k.d(o0.a(y0.c()), null, null, new MediaBrowserCompatHelper$init$1$2$2(function1, this, applicationA, null), 3, null);
                }
                obj = objD;
            }
            Result.m453constructorimpl(obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void r(final MediaItem mediaItem) {
        w(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.s(mediaItem, (MediaControllerCompat.e) obj);
            }
        });
    }

    public final void t(final MediaItem mediaItem) {
        w(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.u(mediaItem, (MediaControllerCompat.e) obj);
            }
        });
    }

    public final void v(String mediaId) {
        Intrinsics.h(mediaId, "mediaId");
    }

    public final void x() {
        w(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.y((MediaControllerCompat.e) obj);
            }
        });
    }

    public final void z() {
        w(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.A((MediaControllerCompat.e) obj);
            }
        });
    }
}
