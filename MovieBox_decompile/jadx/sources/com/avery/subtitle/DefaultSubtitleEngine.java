package com.avery.subtitle;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import m5.d;

public final class DefaultSubtitleEngine implements com.avery.subtitle.b {

    public static final a f19240o = new a(null);

    private static final String f19241p = DefaultSubtitleEngine.class.getSimpleName();

    private static final long f19242q = TimeUnit.MINUTES.toMillis(2);

    private HandlerThread f19243a;

    private Handler f19244b;

    private boolean f19245c;

    private k5.a f19247e;

    private com.avery.subtitle.b.InterfaceC0162b f19248f;

    private com.avery.subtitle.b.a f19249g;

    private String f19250h;

    private long f19251i;

    private boolean f19252j;

    private long f19256n;

    private final Map f19246d = new HashMap();

    private n0 f19253k = o0.a(y0.c());

    private n0 f19254l = o0.a(y0.b());

    private final Lazy f19255m = LazyKt.b(new Function0<n5.a>() {
        @Override
        public final n5.a invoke() {
            return new n5.a();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements SubtitleLoader.a {

        final String f19258b;

        final String f19259c;

        final String f19260d;

        final boolean f19261e;

        final k5.b f19262f;

        b(String str, String str2, String str3, boolean z10, k5.b bVar) {
            this.f19258b = str;
            this.f19259c = str2;
            this.f19260d = str3;
            this.f19261e = z10;
            this.f19262f = bVar;
        }

        @Override
        public void a(d dVar) {
            n5.a aVarI = DefaultSubtitleEngine.this.i();
            String str = this.f19258b;
            Intrinsics.e(dVar);
            aVarI.k(str, dVar);
            DefaultSubtitleEngine.this.i().i(this.f19258b);
            DefaultSubtitleEngine.this.j(this.f19259c, this.f19260d, this.f19261e, this.f19262f, dVar);
        }

        @Override
        public void b(Exception exc) {
            DefaultSubtitleEngine.this.i().k(this.f19258b, null);
            String str = DefaultSubtitleEngine.f19241p;
            Intrinsics.e(exc);
            Log.e(str, "onError: " + exc.getMessage());
            k5.b bVar = this.f19262f;
            if (bVar != null) {
                bVar.a(false);
            }
        }
    }

    private final void e() {
        if (this.f19246d.isEmpty()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f19256n < 2000) {
            return;
        }
        this.f19256n = jCurrentTimeMillis;
        this.f19246d.put(this.f19250h, Long.valueOf(jCurrentTimeMillis));
        Iterator it = this.f19246d.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            long jLongValue = ((Number) entry.getValue()).longValue();
            if (!TextUtils.equals(str, this.f19250h) && jCurrentTimeMillis - jLongValue > f19242q) {
                Log.v(f19241p, "-----------------------timeout remove~ md5 = " + str + ", setTime = " + jLongValue + ", cur = " + jCurrentTimeMillis);
                it.remove();
                n5.a aVarI = i();
                Intrinsics.e(str);
                aVarI.j(str);
            }
        }
    }

    private final void f() {
        HandlerThread handlerThread = new HandlerThread("SubtitleFindThread");
        this.f19243a = handlerThread;
        Intrinsics.e(handlerThread);
        handlerThread.start();
        HandlerThread handlerThread2 = this.f19243a;
        Intrinsics.e(handlerThread2);
        this.f19244b = new Handler(handlerThread2.getLooper(), new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return DefaultSubtitleEngine.g(this.f19266a, message);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0065  */
    public static final boolean g(DefaultSubtitleEngine this$0, Message msg) {
        long j10;
        k5.a aVar;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(msg, "msg");
        if (this$0.f19252j) {
            return true;
        }
        try {
            k5.a aVar2 = this$0.f19247e;
            Float speed = aVar2 != null ? aVar2.getSpeed() : null;
            float fFloatValue = speed == null ? 1.0f : speed.floatValue();
            boolean z10 = msg.what == 2185;
            k5.a aVar3 = this$0.f19247e;
            long currentPosition = (aVar3 != null ? aVar3.getCurrentPosition() : 0L) + this$0.f19251i;
            if (z10 || ((aVar = this$0.f19247e) != null && aVar.isPlaying())) {
                n5.a aVarI = this$0.i();
                String str = this$0.f19250h;
                Intrinsics.e(str);
                m5.b bVarA = c.a(currentPosition, aVarI.d(str));
                this$0.m(bVarA);
                if (bVarA != null) {
                    j10 = ((long) bVarA.f66264c.f66266a) - currentPosition;
                } else {
                    j10 = 1000;
                }
            } else {
                j10 = 1000;
            }
            this$0.e();
            long j11 = (long) (j10 / fFloatValue);
            Handler handler = this$0.f19244b;
            if (handler != null) {
                Intrinsics.e(handler);
                handler.removeMessages(2184);
                Handler handler2 = this$0.f19244b;
                Intrinsics.e(handler2);
                handler2.sendEmptyMessageDelayed(2184, j11);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return true;
    }

    private final void h() {
        if (this.f19243a != null) {
            return;
        }
        f();
    }

    public final n5.a i() {
        return (n5.a) this.f19255m.getValue();
    }

    public final void j(String str, String str2, boolean z10, k5.b bVar, d dVar) {
        if (dVar == null) {
            if (bVar != null) {
                bVar.a(false);
            }
            Log.e(f19241p, "onSuccess: timedTextObject is null.");
            return;
        }
        TreeMap treeMap = dVar.f66275i;
        if (treeMap == null) {
            if (bVar != null) {
                bVar.a(false);
            }
            Log.e(f19241p, "onSuccess: captions is null.");
            return;
        }
        String md5 = n5.b.a(str);
        String str3 = dVar.f66276j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSuccess: md5 = ");
        sb2.append(md5);
        sb2.append(".,path = ");
        sb2.append(str);
        sb2.append(" warnings = ");
        sb2.append(str3);
        ArrayList arrayList = new ArrayList(treeMap.values());
        n5.a aVarI = i();
        Intrinsics.g(md5, "md5");
        aVarI.f(md5, arrayList);
        if (!this.f19245c) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("add timeout map : md5 = ");
            sb3.append(md5);
            sb3.append("， path = ");
            sb3.append(str);
            this.f19246d.put(md5, Long.valueOf(System.currentTimeMillis()));
        }
        if (!this.f19245c || TextUtils.equals(md5, this.f19250h)) {
            l(z10);
        }
        if (bVar != null) {
            bVar.a(true);
        }
    }

    private final void k(String str, final String str2, final String str3, final boolean z10, final k5.b bVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("loadSubtitle: path = ");
        sb2.append(str2);
        if (!i().h(str)) {
            i().a(str);
            SubtitleLoader.f19263a.h(str2, str3, new b(str, str2, str3, z10, bVar));
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("loadSubtitle, 当前有加载，无需处理: path = ");
            sb3.append(str2);
            i().b(new Function2<String, d, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((String) obj, (d) obj2);
                    return Unit.f64096a;
                }

                public final void invoke(String str4, d dVar) {
                    String unused = DefaultSubtitleEngine.f19241p;
                    String str5 = str2;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("其他的加载成功: path = ");
                    sb4.append(str5);
                    this.j(str2, str3, z10, bVar, dVar);
                }
            });
        }
    }

    private final void l(boolean z10) {
        com.avery.subtitle.b.InterfaceC0162b interfaceC0162b;
        if (i().g() || this.f19252j || (interfaceC0162b = this.f19248f) == null) {
            return;
        }
        if (z10) {
            Intrinsics.e(interfaceC0162b);
            interfaceC0162b.onRefreshSubtitle();
        } else {
            Intrinsics.e(interfaceC0162b);
            interfaceC0162b.onSubtitlePrepared();
        }
    }

    private final void m(m5.b bVar) {
        com.avery.subtitle.b.a aVar = this.f19249g;
        if (aVar != null) {
            k.d(this.f19253k, null, null, new DefaultSubtitleEngine$notifyRefreshUI$1$1(aVar, bVar, null), 3, null);
        }
    }

    private final void n() {
        HandlerThread handlerThread = this.f19243a;
        if (handlerThread != null) {
            Intrinsics.e(handlerThread);
            handlerThread.quit();
            this.f19243a = null;
        }
        Handler handler = this.f19244b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeCallbacksAndMessages(null);
            this.f19244b = null;
        }
    }

    @Override
    public void destroy() {
        reset();
        n();
        this.f19252j = false;
    }

    @Override
    public void initSubtitle(k5.a playerControl, boolean z10) {
        Intrinsics.h(playerControl, "playerControl");
        this.f19247e = playerControl;
        this.f19245c = z10;
    }

    @Override
    public void pause() {
        this.f19252j = true;
        Handler handler = this.f19244b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
        }
    }

    @Override
    public void refreshImmediately() {
        if (i().g()) {
            return;
        }
        this.f19252j = false;
        Handler handler = this.f19244b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
            Handler handler2 = this.f19244b;
            Intrinsics.e(handler2);
            handler2.sendEmptyMessage(2185);
        }
    }

    @Override
    public void reset() {
        this.f19252j = false;
        n();
        i().c();
    }

    @Override
    public void resume() {
        start();
    }

    @Override
    public void selectSubtitle(String path, String unicode, k5.b bVar) {
        Intrinsics.h(path, "path");
        Intrinsics.h(unicode, "unicode");
        if (path.length() == 0) {
            if (bVar != null) {
                bVar.a(false);
                return;
            }
            return;
        }
        String md5 = n5.b.a(path);
        if (TextUtils.equals(md5, this.f19250h)) {
            if (bVar != null) {
                bVar.a(true);
                return;
            }
            return;
        }
        this.f19250h = md5;
        n5.a aVarI = i();
        Intrinsics.g(md5, "md5");
        if (!aVarI.e(md5)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("selectSubtitle: load md5 = ");
            sb2.append(md5);
            sb2.append(", path = ");
            sb2.append(path);
            k(md5, path, unicode, true, bVar);
            return;
        }
        this.f19246d.put(this.f19250h, Long.valueOf(System.currentTimeMillis()));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("selectSubtitle: immediately, md5 = ");
        sb3.append(md5);
        sb3.append(", path = ");
        sb3.append(path);
        l(true);
        if (bVar != null) {
            bVar.a(true);
        }
    }

    @Override
    public void setDefaultSubtitle(String path) {
        Intrinsics.h(path, "path");
        String strA = n5.b.a(path);
        if (TextUtils.equals(strA, this.f19250h)) {
            return;
        }
        this.f19250h = strA;
    }

    @Override
    public void setOnSubtitleChangeListener(com.avery.subtitle.b.a listener) {
        Intrinsics.h(listener, "listener");
        this.f19249g = listener;
    }

    @Override
    public void setOnSubtitlePreparedListener(com.avery.subtitle.b.InterfaceC0162b listener) {
        Intrinsics.h(listener, "listener");
        this.f19248f = listener;
    }

    @Override
    public void setSubtitlePath(String path, String unicode) {
        Intrinsics.h(path, "path");
        Intrinsics.h(unicode, "unicode");
        h();
        if (TextUtils.isEmpty(path)) {
            Log.w(f19241p, "loadSubtitleFromRemote: path is null.");
            return;
        }
        String md5 = n5.b.a(path);
        if (!TextUtils.isEmpty(md5)) {
            n5.a aVarI = i();
            Intrinsics.g(md5, "md5");
            if (aVarI.e(md5)) {
                return;
            }
        }
        if (this.f19245c || TextUtils.isEmpty(this.f19250h) || TextUtils.equals(this.f19250h, md5)) {
            Intrinsics.g(md5, "md5");
            k(md5, path, unicode, false, null);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setSubtitlePath: skip~ md5 = ");
        sb2.append(md5);
        sb2.append(", path = ");
        sb2.append(path);
    }

    @Override
    public void start() {
        if (i().g()) {
            return;
        }
        if (this.f19247e == null) {
            Log.w(f19241p, "PlayerControl is not bind, You must bind PlayerControl to " + com.avery.subtitle.b.class.getSimpleName() + " before start() method be called, you can do this by call bindPlayerControl(PlayerControl playerControl) method.");
            return;
        }
        this.f19252j = false;
        Handler handler = this.f19244b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
            Handler handler2 = this.f19244b;
            Intrinsics.e(handler2);
            handler2.sendEmptyMessageDelayed(2184, 1000L);
        }
    }

    @Override
    public void stop() {
        this.f19252j = true;
        Handler handler = this.f19244b;
        if (handler != null) {
            Intrinsics.e(handler);
            handler.removeMessages(2184);
        }
    }

    @Override
    public void subtitleDelay(long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("subtitleDelay = ");
        sb2.append(j10);
        this.f19251i = j10;
        l(true);
    }
}
