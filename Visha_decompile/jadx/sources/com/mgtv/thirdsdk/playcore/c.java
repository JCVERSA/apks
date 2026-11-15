package com.mgtv.thirdsdk.playcore;

import android.app.Activity;
import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.subtitle.SubtitleSource;
import com.hunantv.media.report.ReportParams;
import com.mgmi.ssp.PreRollVideoAd;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.ssp.play.bean.SubTitleData;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.callback.MgtvPlayerListener;
import com.mgtv.thirdsdk.playcore.callback.PlayerListener;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import com.mgtv.thirdsdk.playcore.view.ScreenOrientationContainer;
import com.transsion.dbdata.beans.media.PlayAudioData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

public class c implements com.mgtv.thirdsdk.playcore.b {
    private static final String d = "c";
    private String E;
    private boolean F;
    private long G;
    private com.mgtv.thirdsdk.playcore.d.a H;
    private boolean I;
    a a;
    protected InterfaceC0188c b;
    boolean c;
    private ScreenOrientationContainer e;
    private MgtvPlayerView f;
    private com.mgtv.thirdsdk.playcore.e.f g;
    private com.mgtv.thirdsdk.playcore.e.g h;
    private com.mgtv.thirdsdk.playcore.e.h i;
    private com.mgtv.thirdsdk.playcore.e.d j;
    private com.mgtv.thirdsdk.playcore.e.c k;
    private com.mgtv.thirdsdk.playcore.e.e l;
    private com.mgtv.thirdsdk.playcore.e.a m;
    private com.mgtv.thirdsdk.playcore.e.b n;
    private Context o;
    private Activity p;
    private com.mgtv.thirdsdk.playcore.e q;
    private String r;
    private String s;
    private String t;
    private String u;
    private MgtvPlayerListener.AuthResultListener v;
    private MgtvPlayerListener.VideoListener w;
    private MgtvPlayerListener.ErrorListener x;
    private com.mgtv.thirdsdk.playcore.d y;
    private com.mgtv.thirdsdk.playcore.f z;
    private boolean A = false;
    private boolean B = false;
    private boolean C = false;
    private int D = -1;
    private b J = new b() {
        @Override
        public void a(int i2) {
            c.this.j(i2);
        }

        @Override
        public void b(int i2) {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:135:0x021f  */
        @Override
        public void a(String str, String str2) {
            byte b2 = 1;
            com.hunantv.imgo.log.e.d(c.d, "onerror:" + str + " ms " + str2, true);
            str.hashCode();
            switch (str.hashCode()) {
                case 1449559522:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED) ? (byte) -1 : (byte) 0;
                    break;
                case 1449559523:
                    if (!str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_JUST_LOOK)) {
                        b2 = -1;
                    }
                    break;
                case 1449559524:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_IP_NOT_PERMITTED) ? (byte) -1 : (byte) 2;
                    break;
                case 1449559525:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_REQUEST_SOURCE_OFFLINE) ? (byte) -1 : (byte) 3;
                    break;
                case 1449559526:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NETWORE_ERROR) ? (byte) -1 : (byte) 4;
                    break;
                case 1449559527:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NO_RESOUCE) ? (byte) -1 : (byte) 5;
                    break;
                case 1449559528:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_AT_NOUSE) ? (byte) -1 : (byte) 6;
                    break;
                case 1449559529:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP) ? (byte) -1 : (byte) 7;
                    break;
                case 1449559552:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_TO_MGTV) ? (byte) -1 : (byte) 8;
                    break;
                case 1450483042:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_URL) ? (byte) -1 : (byte) 9;
                    break;
                case 1450483043:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_URL_NETWOR) ? (byte) -1 : (byte) 10;
                    break;
                case 1451406564:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINATION_VIP) ? (byte) -1 : ByteCode.T_LONG;
                    break;
                case 1451406567:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINATION_NOTIFY) ? (byte) -1 : (byte) 12;
                    break;
                case 1451406568:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_NETWORK) ? (byte) -1 : (byte) 13;
                    break;
                case 1451406569:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_SERVICE) ? (byte) -1 : (byte) 14;
                    break;
                case 1451406570:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_NOT_EXIST) ? (byte) -1 : (byte) 15;
                    break;
                case 1451406571:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.ERROR_CHANNE_DEFINITION_PLAYER) ? (byte) -1 : (byte) 16;
                    break;
                case 1453257450:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_NULL) ? (byte) -1 : (byte) 17;
                    break;
                case 1453257451:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL) ? (byte) -1 : (byte) 18;
                    break;
                case 1453257452:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOAD_NOT_COMPLETE) ? (byte) -1 : (byte) 19;
                    break;
                case 1455099687:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_ERROR_NO_SOURCE) ? (byte) -1 : (byte) 20;
                    break;
                case 1455099688:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_AT_ERROR) ? (byte) -1 : (byte) 21;
                    break;
                case 1455099689:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_VIP) ? (byte) -1 : (byte) 22;
                    break;
                case 1455099690:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILEd) ? (byte) -1 : (byte) 23;
                    break;
                case 1455099691:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILED_NEEDVIP) ? (byte) -1 : (byte) 24;
                    break;
                case 1457223784:
                    b2 = !str.equals(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_OUTPUT) ? (byte) -1 : (byte) 25;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            switch (b2) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 8:
                case 20:
                case 21:
                case 22:
                    VideoSDKReport.a().a("1", str);
                    if (c.this.v != null) {
                        c.this.v.onAuthResult(str, str2);
                    }
                    break;
                case 1:
                    if (c.this.v != null) {
                        c.this.v.onAuthResult(str, str2);
                    }
                    break;
                case 7:
                    if (c.this.v != null) {
                        c.this.v.onAuthResult(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP, str2);
                    }
                    VideoSDKReport.a().a("1", str);
                    break;
                case 9:
                case 10:
                case 17:
                case 18:
                case 19:
                    VideoSDKReport.a().a("1", str);
                    if (!c.this.q.ai && c.this.x != null) {
                        c.this.x.onError(str);
                    }
                    break;
                case 11:
                case 24:
                    if (c.this.w != null) {
                        c.this.w.onVideoDefinitionChanged("0104");
                    }
                    break;
                case 12:
                    if (c.this.l != null) {
                        c.this.l.b();
                    }
                    break;
                case 13:
                case 14:
                case 15:
                case 16:
                    if (!c.this.q.ai) {
                        c.this.x.onError(str);
                    }
                    break;
                case 23:
                    if (c.this.w != null) {
                        c.this.w.onVideoDefinitionChanged("0103");
                    }
                    break;
                case 25:
                    if (c.this.v != null) {
                        c.this.v.onAuthResult(str2, str2);
                    }
                    break;
            }
            if (c.this.f == null || c.this.f.getVideoPlayer() == null) {
                return;
            }
            c.this.f.getVideoPlayer().setIsChangeDefinition(false);
        }

        @Override
        public boolean a() {
            return c.this.w();
        }
    };
    private final com.mgtv.thirdsdk.playcore.d.a.b K = new com.mgtv.thirdsdk.playcore.d.a.b() {
        @Override
        public void a() {
            if (c.this.f != null) {
                c.this.f.removeSubtitleSource();
            }
        }

        @Override
        public void a(ArrayList<SubTitleData> arrayList, SubTitleData subTitleData) {
            if (c.this.w != null) {
                c.this.w.ontSubtitleList(arrayList, subTitleData);
            }
        }

        @Override
        public void a(byte[] bArr) {
            if (c.this.f != null) {
                c.this.f.setSubtitleSource(bArr);
            }
        }
    };

    public static class a extends ContentObserver {
        private WeakReference<c> a;

        public a(Handler handler, c cVar) {
            super(handler);
            this.a = new WeakReference<>(cVar);
        }

        @Override
        public boolean deliverSelfNotifications() {
            return super.deliverSelfNotifications();
        }

        @Override
        public void onChange(boolean z) {
            super.onChange(z);
            WeakReference<c> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.a.get().J();
        }
    }

    public interface b {
        void a(int i);

        void a(String str, String str2);

        boolean a();

        void b(int i);
    }

    public interface InterfaceC0188c {
        void onVolumeChangePorcess(int i);
    }

    public static class d extends com.mgtv.thirdsdk.playcore.a<c> implements MgtvPlayerListener.AdUpdateStatusListener {
        public d(c cVar) {
            super(cVar);
        }

        @Override
        public void onUpdateStatus(boolean z, boolean z2, boolean z3) {
            if (this.a.get() == null || ((c) this.a.get()).w == null || !z2) {
                return;
            }
            ((c) this.a.get()).l(z);
        }
    }

    public static class e extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnBufferListener {
        public e(c cVar) {
            super(cVar);
        }

        @Override
        public void onBufferUpdate(String str) {
            if (this.a.get() != null) {
                ((c) this.a.get()).c(str);
            }
        }

        @Override
        public void onBuffering(int i) {
            if (this.a.get() != null) {
                ((c) this.a.get()).h(i);
            }
        }

        @Override
        public void onEndBuffer(int i) {
            if (this.a.get() != null) {
                ((c) this.a.get()).k(i);
            }
        }

        @Override
        public void onStartBuffer(int i) {
            if (this.a.get() != null) {
                ((c) this.a.get()).l(i);
            }
        }
    }

    public static class f extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnChangeSourceListener {
        public f(c cVar) {
            super(cVar);
        }

        @Override
        public void onChangeSourceFailed(String str, int i, int i2) {
            if (this.a.get() != null) {
                ((c) this.a.get()).d(str, i, i2);
            }
        }

        @Override
        public void onChangeSourceInfo(String str, int i, int i2) {
            if (this.a.get() != null) {
                ((c) this.a.get()).b(str, i, i2);
            }
        }

        @Override
        public void onChangeSourceSuccess(String str, int i, int i2) {
            if (this.a.get() != null) {
                ((c) this.a.get()).c(str, i, i2);
            }
        }
    }

    public static class g extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnCompletionListener {
        public g(c cVar) {
            super(cVar);
        }

        @Override
        public void onCompletion(int i, int i2) {
            if (this.a.get() != null) {
                ((c) this.a.get()).a(i, i2);
            }
        }
    }

    public static class h extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnErrorListener {
        public h(c cVar) {
            super(cVar);
        }

        @Override
        public boolean onError(int i, int i2) {
            if (this.a.get() == null || ((c) this.a.get()).f == null) {
                return false;
            }
            ((c) this.a.get()).c(((c) this.a.get()).f.getVideoPlayer(), i, i2);
            return false;
        }
    }

    public static class i extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.onEventInfoListener {
        public i(c cVar) {
            super(cVar);
        }

        @Override
        public void onInfo(int i, int i2) {
            if (this.a.get() != null) {
                com.hunantv.imgo.log.e.b(c.d, "info:" + i, true);
                ((c) this.a.get()).b(i, i2);
            }
        }
    }

    public static class j extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnInfoListener {
        public j(c cVar) {
            super(cVar);
        }

        @Override
        public boolean onInfo(int i, int i2) {
            if (this.a.get() == null) {
                return false;
            }
            ((c) this.a.get()).c(i, i2);
            return false;
        }
    }

    public static class k extends com.mgtv.thirdsdk.playcore.a<c> implements com.mgtv.thirdsdk.playcore.b.c {
        public k(c cVar) {
            super(cVar);
        }

        @Override
        public void a(boolean z, boolean z2) {
            com.hunantv.imgo.log.e.b(c.d, "onNetStatusChanged-------->control:" + this.a, true);
            if (this.a.get() != null) {
                ((c) this.a.get()).a(z, z2);
            }
        }
    }

    public static class l extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnPauseListener {
        public l(c cVar) {
            super(cVar);
        }

        @Override
        public void onPause() {
            if (this.a.get() != null) {
                ((c) this.a.get()).ac();
            }
        }
    }

    public static class m extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnPreparedListener {
        public m(c cVar) {
            super(cVar);
        }

        @Override
        public void onPrepared() {
            if (this.a.get() == null || ((c) this.a.get()).f == null) {
                return;
            }
            ((c) this.a.get()).c(((c) this.a.get()).f.getVideoPlayer());
        }
    }

    public static class n extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnSeekCompleteListener {
        public n(c cVar) {
            super(cVar);
        }

        @Override
        public void onSeekComplete() {
            if (this.a.get() != null) {
                ((c) this.a.get()).W();
            }
        }
    }

    public static class o extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnStartListener {
        public o(c cVar) {
            super(cVar);
        }

        @Override
        public void onStart() {
            if (this.a.get() != null) {
                ((c) this.a.get()).ab();
            }
        }
    }

    public static class p extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnSubtitleCallback {
        public p(c cVar) {
            super(cVar);
        }

        @Override
        public void onError(SubtitleSource subtitleSource) {
            if (this.a.get() != null) {
                ((c) this.a.get()).b(subtitleSource);
            }
        }

        @Override
        public void onSuccess(SubtitleSource subtitleSource) {
            if (this.a.get() != null) {
                ((c) this.a.get()).a(subtitleSource);
            }
        }
    }

    public static class q extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnTickListener {
        public q(c cVar) {
            super(cVar);
        }

        @Override
        public void onTick(int i, int i2, int i3) {
            if (this.a.get() == null || ((c) this.a.get()).f == null || ((c) this.a.get()).f.getVideoPlayer() == null) {
                return;
            }
            VideoSDKReport.a().g(String.valueOf(((c) this.a.get()).f.getVideoPlayer().getLoadingSpeed()));
            VideoSDKReport.a().onTick(((c) this.a.get()).f.getVideoPlayer().getCurrentPosition(), i2, 1000);
            ((c) this.a.get()).a(((c) this.a.get()).f.getVideoPlayer(), i, i2);
        }
    }

    public static class r extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnUpdateStatusListener {
        public r(c cVar) {
            super(cVar);
        }

        @Override
        public void onUpdateStatus(boolean z, boolean z2, boolean z3) {
            if (this.a.get() == null || ((c) this.a.get()).w == null || !z2 || z3) {
                return;
            }
            ((c) this.a.get()).m(z);
        }
    }

    public static class s extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnVideoSizeChangedListener {
        public s(c cVar) {
            super(cVar);
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            if (this.a.get() == null || ((c) this.a.get()).w == null) {
                return;
            }
            ((c) this.a.get()).w.onVideoSizeChanged(i, i2);
        }
    }

    public static class t extends com.mgtv.thirdsdk.playcore.a<c> implements PlayerListener.OnWarningListener {
        public t(c cVar) {
            super(cVar);
        }

        @Override
        public void onTsSkip(String str, int i, int i2) {
            if (this.a.get() != null) {
                VideoSDKReport.a().a(str, i, i2);
                ((c) this.a.get()).a(str, i, i2);
            }
        }

        @Override
        public void onWarning(int i, String str, String str2) {
            if (this.a.get() != null) {
                ((c) this.a.get()).a(i, str, str2);
            }
        }
    }

    public c(Context context, MgtvPlayerView mgtvPlayerView) {
        this.o = context;
        this.f = mgtvPlayerView;
        ScreenOrientationContainer screenOrientationContainer = new ScreenOrientationContainer(context);
        this.e = screenOrientationContainer;
        screenOrientationContainer.addView(this.f);
    }

    private void I() {
        this.a = new a(new Handler(), this);
        try {
            this.o.getApplicationContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.a);
        } catch (Exception unused) {
        }
    }

    public void J() {
        try {
            int streamVolume = ((AudioManager) this.o.getSystemService("audio")).getStreamVolume(3);
            if (this.b != null && i(streamVolume)) {
                this.b.onVolumeChangePorcess(streamVolume);
            }
            this.D = streamVolume;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void K() {
        MgtvPlayerView mgtvPlayerView;
        String str = d;
        com.hunantv.imgo.log.e.b(str, "controlAdCompleteNotify", true);
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar == null) {
            return;
        }
        eVar.T = 2;
        if (eVar.ah) {
            j(9);
            return;
        }
        System.out.println("isVideoPrepare  controlAdNotify  " + this.q.X + " isback " + this.q.aA);
        com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
        if (!eVar2.X) {
            eVar2.U = true;
            eVar2.b(5);
            return;
        }
        eVar2.U = false;
        if (eVar2.aA && eVar2.v) {
            return;
        }
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onVideoPrepare();
            VideoSDKReport.a().h(true);
            this.q.b(5);
            com.hunantv.imgo.log.e.b(str, "controlAdCompleteNotify:一层到prepare耗时---：" + String.valueOf(this.q.a(5)) + "ms", true);
        }
        if (!this.q.ae || (mgtvPlayerView = this.f) == null || mgtvPlayerView.getVideoPlayer() == null || this.f.getVideoPlayer().getIsChangeDefinition()) {
            return;
        }
        f();
        com.hunantv.imgo.log.e.b(str, "controlAdCompleteNotify():play", true);
        this.q.a(3, 8);
    }

    private void L() {
        com.hunantv.imgo.log.e.b(d, "controlAsyncChangeDefination", true);
        com.mgtv.thirdsdk.playcore.e.e eVar = this.l;
        if (eVar != null) {
            eVar.a(this.q.n);
        }
    }

    private void M() {
        com.hunantv.imgo.log.e.b(d, "controlAsyncVideoChangeDefination", true);
        com.mgtv.thirdsdk.playcore.e.d dVar = this.j;
        if (dVar != null) {
            dVar.a(this.q.H);
        }
    }

    private void N() {
        com.hunantv.imgo.log.e.b(d, "controlUrlChangeDefination", true);
        com.mgtv.thirdsdk.playcore.e.h hVar = this.i;
        if (hVar != null) {
            hVar.a(O(), this.q.n);
        }
    }

    private boolean O() {
        if ("vod".equalsIgnoreCase(this.E)) {
            return com.hunantv.imgo.util.b.af();
        }
        if ("card".equalsIgnoreCase(this.E)) {
            return com.hunantv.imgo.util.b.ah();
        }
        if ("immersion".equalsIgnoreCase(this.E)) {
            return com.hunantv.imgo.util.b.ag();
        }
        if ("detail".equalsIgnoreCase(this.E)) {
            return com.hunantv.imgo.util.b.ai();
        }
        return false;
    }

    private void P() {
        this.G = System.currentTimeMillis();
        com.hunantv.imgo.log.e.b(d, "controlGetSource", true);
        this.q.a(0, 5, 6);
        new com.hunantv.imgo.log.c.c.a().a(true).a(getClass().getSimpleName()).b("controlGetSource").c("01").d(com.hunantv.imgo.b.c.a().f).e().d();
        com.mgtv.thirdsdk.playcore.e.g gVar = this.h;
        if (gVar != null) {
            gVar.a(this.o, this.r, "");
        }
    }

    private void Q() {
        com.hunantv.imgo.log.e.b(d, "controlLiveGetSource", true);
        this.G = System.currentTimeMillis();
        new com.hunantv.imgo.log.c.c.a().a(true).a(getClass().getSimpleName()).b("controlLiveGetSource").c("01").d(com.hunantv.imgo.b.c.a().f).e().d();
        com.mgtv.thirdsdk.playcore.e.a aVar = this.m;
        if (aVar != null) {
            aVar.a(this.u, this.s);
        }
    }

    private void R() {
        com.hunantv.imgo.util.e.b = System.currentTimeMillis() - this.G;
        String str = d;
        com.hunantv.imgo.log.e.b(str, "controlGetAd", true);
        this.q.b(0);
        this.q.a(4);
        com.hunantv.imgo.log.e.b(str, "请求一层耗时--------------：" + String.valueOf(this.q.a(0)) + "ms", true);
        com.mgtv.thirdsdk.playcore.e.f fVar = this.g;
        if (fVar != null) {
            fVar.b();
        }
    }

    private void S() {
        com.hunantv.imgo.log.e.b(d, "controlLiveGetVideo", true);
        this.G = System.currentTimeMillis();
        com.mgtv.thirdsdk.playcore.e.b bVar = this.n;
        if (bVar != null) {
            bVar.a();
        }
    }

    private void T() {
        com.hunantv.imgo.log.e.b(d, "controlGetUrl", true);
        this.G = System.currentTimeMillis();
        this.q.a(1);
        com.mgtv.thirdsdk.playcore.e.h hVar = this.i;
        if (hVar != null) {
            hVar.a();
        }
    }

    private void U() {
        if (this.q.aK) {
            com.hunantv.imgo.util.e.c = -1L;
        } else {
            com.hunantv.imgo.util.e.c = System.currentTimeMillis() - this.G;
        }
        this.G = System.currentTimeMillis();
        String str = d;
        com.hunantv.imgo.log.e.b(str, "controlGetVideo", true);
        this.q.b(1);
        this.q.a(2);
        com.hunantv.imgo.log.e.b(str, "请求二层耗时--------------：" + String.valueOf(this.q.a(1)) + "ms,------重试次数：" + this.q.y, true);
        com.mgtv.thirdsdk.playcore.e.d dVar = this.j;
        if (dVar != null) {
            dVar.a();
        }
    }

    private void V() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        com.hunantv.imgo.log.e.b(d, "initVideoLinstener", true);
        this.f.getVideoPlayer().setOnStartListener(new o(this));
        this.f.getVideoPlayer().setOnPauseListener(new l(this));
        this.f.getVideoPlayer().setOnPreparedListener(new m(this));
        this.f.getVideoPlayer().setOnErrorListener(new h(this));
        this.f.getVideoPlayer().setOnCompletionListener(new g(this));
        this.f.getVideoPlayer().setOnBufferListener(new e(this));
        this.f.getVideoPlayer().setOnSeekCompleteListener(new n(this));
        this.f.getVideoPlayer().setOnInfoListener(new j(this));
        this.f.getVideoPlayer().setOnEventInfoListener(new i(this));
        this.f.getVideoPlayer().setOnTickListener(new q(this), 1000);
        this.f.getVideoPlayer().setOnWarningListener(new t(this));
        this.f.getVideoPlayer().setOnChangeSourceListener(new f(this));
        this.f.getVideoPlayer().setOnNetStatusChangedListener(new k(this));
        this.f.getVideoPlayer().setOnUpdateStatusListener(new r(this));
        this.f.getVideoPlayer().setOnVideoSizeChangedListener(new s(this));
        this.f.getVideoPlayer().setOnSubtitlesCallback(new p(this));
        this.g.a(new d(this));
    }

    public void W() {
        MgtvPlayerView mgtvPlayerView;
        if (!this.q.W || (mgtvPlayerView = this.f) == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        com.hunantv.imgo.log.e.b(d, "onSeekComplete():play", true);
    }

    private PlayerAuthDataEntity.PointEntity X() {
        List<PlayerAuthDataEntity.PointEntity> list = this.q.j;
        if (list == null) {
            return null;
        }
        for (PlayerAuthDataEntity.PointEntity pointEntity : list) {
            if (pointEntity.pointType == 2) {
                return pointEntity;
            }
        }
        return null;
    }

    private PlayerAuthDataEntity.PointEntity Y() {
        List<PlayerAuthDataEntity.PointEntity> list = this.q.j;
        if (list == null) {
            return null;
        }
        for (PlayerAuthDataEntity.PointEntity pointEntity : list) {
            if (pointEntity.pointType == 1) {
                return pointEntity;
            }
        }
        return null;
    }

    private void Z() {
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar.aN == null || eVar.Z) {
            aa();
            return;
        }
        eVar.aA = true;
        com.hunantv.imgo.log.e.b(d, "videoContentCompletes  ", true);
        this.q.aN.videoContentComplete();
    }

    private void aa() {
        com.hunantv.imgo.log.e.b(d, "onVideoCompletion", true);
        this.q.b(11);
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onVideoComplete();
        }
    }

    public void ab() {
        com.mgtv.thirdsdk.playcore.e eVar;
        com.hunantv.imgo.log.e.b(d, "onVideoStart", true);
        this.q.b(8);
        com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
        if (eVar2 != null) {
            eVar2.i();
        }
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener == null || (eVar = this.q) == null || !eVar.W) {
            return;
        }
        videoListener.onVideoStartPlayering(false);
    }

    public void ac() {
        com.hunantv.imgo.log.e.b(d, "onVideoPause", true);
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            eVar.j();
        }
    }

    private void ad() {
        Activity activity = this.p;
        if (activity != null) {
            activity.getWindow().addFlags(8192);
        }
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.f.getVideoPlayer().setSecure(true);
    }

    private void ae() {
        Activity activity = this.p;
        if (activity != null) {
            activity.getWindow().clearFlags(8192);
        }
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.f.getVideoPlayer().setSecure(false);
    }

    private void af() {
        if (this.q == null) {
            return;
        }
        if (this.H == null) {
            this.H = new com.mgtv.thirdsdk.playcore.d.a(this.K);
        }
        this.H.a(this.q);
        this.H.a(this.q.h);
    }

    public void m(boolean z) {
        String str = d;
        com.hunantv.imgo.log.e.b(str, "onUpdateStatus:isPlaying1 " + z + "; isStarted:" + this.B, true);
        if (this.B == z) {
            com.hunantv.imgo.log.e.b(str, "onUpdateStatus:return", true);
            return;
        }
        if (z) {
            this.B = true;
            this.w.onVideoStarted();
            return;
        }
        this.B = false;
        if (!this.A) {
            this.w.onVideoPaused();
        } else {
            this.A = false;
            this.w.onVideoStopped();
        }
    }

    @Override
    public void A() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        System.out.println("mPlayerControl setBackgroundStatus true");
        this.f.getVideoPlayer().setBackgroundStatus(true);
    }

    @Override
    public void B() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        System.out.println("mPlayerControl setBackgroundStatus false");
        this.f.getVideoPlayer().setBackgroundStatus(false);
    }

    @Override
    public SubTitleData C() {
        if (this.H == null) {
            this.H = new com.mgtv.thirdsdk.playcore.d.a(this.K);
        }
        return this.H.b();
    }

    @Override
    public void D() {
        if (this.q.aI) {
            String str = d;
            com.hunantv.imgo.log.e.b(str, PlayAudioData.TAG_NEED_PLAY, true);
            com.mgtv.thirdsdk.playcore.e eVar = this.q;
            if (!eVar.W && eVar.ao && eVar.as) {
                eVar.c();
            }
            MgtvPlayerView mgtvPlayerView = this.f;
            if (mgtvPlayerView == null || this.q.T != 2) {
                if (mgtvPlayerView != null) {
                    com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
                    if (eVar2.T != 1 || eVar2.aN == null) {
                        return;
                    }
                    eVar2.b(3);
                    this.q.aN.doResume();
                    com.hunantv.imgo.log.e.b(str, "play():AdPlayer.play", true);
                    return;
                }
                return;
            }
            if (mgtvPlayerView.getVideoPlayer() != null) {
                if (G()) {
                    com.mgtv.thirdsdk.playcore.e eVar3 = this.q;
                    if (!eVar3.aE) {
                        eVar3.b(14);
                        return;
                    }
                }
                if ("live".equals(this.E)) {
                    this.f.getVideoPlayer().stop();
                    S();
                } else {
                    this.f.getVideoPlayer().play();
                    F();
                }
                com.hunantv.imgo.log.e.b(str, "play():VideoPlayer.play", true);
            }
        }
    }

    @Override
    public boolean E() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return false;
        }
        return this.f.getVideoPlayer().isSupport3X();
    }

    public void F() {
        if (this.q.ap) {
            VideoSDKReport.a().v();
        }
    }

    public boolean G() {
        return false;
    }

    @Override
    public void a(MgtvPlayerListener.AdStopListener adStopListener) {
    }

    @Override
    public void n() {
        PreRollVideoAd preRollVideoAd;
        com.hunantv.imgo.log.e.b(d, "onActivityStop", true);
        d();
        this.I = true;
        this.q.b(9);
        VideoSDKReport.a().i();
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (!eVar.as || (preRollVideoAd = eVar.aN) == null) {
            return;
        }
        preRollVideoAd.noticeActivityStatus(false);
    }

    @Override
    public int o() {
        com.hunantv.imgo.log.e.b(d, "getDefaultDefinition---------->definition:" + PreferencesUtil.a("video_definition", -1), true);
        return PreferencesUtil.a("video_definition", -1);
    }

    @Override
    public void p() {
        com.hunantv.imgo.log.e.b(d, "adClick", true);
    }

    @Override
    public void q() {
        if (this.q.aI) {
            this.I = false;
            String str = d;
            com.hunantv.imgo.log.e.b(str, TtmlNode.START, true);
            if (this.f != null) {
                com.mgtv.thirdsdk.playcore.e eVar = this.q;
                if (eVar.ae && !eVar.as) {
                    PreRollVideoAd preRollVideoAd = eVar.aN;
                    if (preRollVideoAd != null) {
                        preRollVideoAd.doResume();
                        this.q.ao = true;
                        com.hunantv.imgo.log.e.b(str, "start():AdPlayer.play", true);
                        return;
                    }
                    return;
                }
                eVar.a(3, 8);
                MgtvPlayerView mgtvPlayerView = this.f;
                if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
                    return;
                }
                if (G()) {
                    com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
                    if (!eVar2.aE) {
                        eVar2.b(14);
                        return;
                    }
                }
                this.f.getVideoPlayer().play();
                this.q.ao = true;
                F();
                com.hunantv.imgo.log.e.b(str, "start():VideoPlayer.play", true);
            }
        }
    }

    @Override
    public int r() {
        int totalBuffering;
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null || (totalBuffering = this.f.getVideoPlayer().getTotalBuffering() - this.f.getVideoPlayer().getCurrentPosition()) < 0) {
            return 0;
        }
        return totalBuffering;
    }

    @Override
    public int s() {
        int currentPosition;
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null || this.f.getVideoPlayer().getTotalBuffering() == 0 || (currentPosition = this.f.getVideoPlayer().getCurrentPosition() / this.f.getVideoPlayer().getTotalBuffering()) < 0) {
            return 0;
        }
        return currentPosition;
    }

    @Override
    public int t() {
        return this.q.af;
    }

    @Override
    public float u() {
        if (this.q == null) {
            return 1.0f;
        }
        com.hunantv.imgo.log.e.b(d, "getPlaySpeed:" + this.q.V, true);
        return this.q.V;
    }

    @Override
    public boolean v() {
        com.hunantv.imgo.log.e.b(d, "isLocalPlay:" + this.q.ag, true);
        return this.q.ag;
    }

    @Override
    public boolean w() {
        ScreenOrientationContainer screenOrientationContainer;
        if (this.f == null || (screenOrientationContainer = this.e) == null) {
            return false;
        }
        return screenOrientationContainer.isFullScreen();
    }

    @Override
    public Map<Integer, Long> x() {
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            return eVar.u;
        }
        return null;
    }

    @Override
    public boolean y() {
        MgtvPlayerView mgtvPlayerView;
        MgtvPlayerView mgtvPlayerView2 = this.f;
        if (mgtvPlayerView2 != null && this.q.T == 2) {
            if (mgtvPlayerView2.getVideoPlayer() == null || (mgtvPlayerView = this.f) == null || mgtvPlayerView.getVideoPlayer() == null) {
                return false;
            }
            return this.f.getVideoPlayer().isPlaying();
        }
        if (mgtvPlayerView2 == null) {
            return false;
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar.T == 1) {
            return !eVar.as;
        }
        return false;
    }

    @Override
    public View z() {
        return this.e;
    }

    private boolean i(int i2) {
        return this.D != i2;
    }

    public void j(int i2) {
        com.hunantv.imgo.log.e.b(d, "enterPlayerStep:" + i2, true);
        switch (i2) {
            case 0:
                System.out.println("pvs enterPlayerStep controlGetSource ");
                P();
                break;
            case 1:
                R();
                break;
            case 2:
                T();
                break;
            case 3:
                U();
                break;
            case 4:
                L();
                break;
            case 5:
                M();
                break;
            case 6:
                N();
                break;
            case 7:
                K();
                break;
            case 8:
                Q();
                break;
            case 9:
                S();
                break;
            case 10:
                d();
                break;
            case 11:
                aa();
                break;
        }
    }

    public void k(int i2) {
        com.hunantv.imgo.log.e.b(d, "onVideoEndBuffer--------->type:" + i2, true);
        this.q.ad = 0L;
        MgtvPlayerView mgtvPlayerView = this.f;
        if ((mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) ? false : !this.f.getVideoPlayer().mHandPause) {
            this.q.b(8);
        } else if (this.q.k() != 3) {
            this.q.b(9);
        }
        this.q.ad = -1L;
        VideoSDKReport.a().onEndBuffer(i2);
    }

    public void l(boolean z) {
        String str = d;
        com.hunantv.imgo.log.e.b(str, "onUpdateStatus:isPlaying" + z + "; isAdStarted:" + this.C, true);
        if (this.C == z) {
            com.hunantv.imgo.log.e.b(str, "onUpdateStatus:return", true);
            return;
        }
        if (z) {
            this.C = true;
            this.q.b(3);
            return;
        }
        this.C = false;
        if (this.A) {
            this.A = false;
            this.w.onVideoStopped();
        }
    }

    @Override
    public void e() {
        PreRollVideoAd preRollVideoAd;
        MgtvPlayerListener.VideoListener videoListener;
        MgtvPlayerView mgtvPlayerView;
        com.hunantv.imgo.log.e.b(d, "stop", true);
        this.I = true;
        boolean zIsPlaying = (this.q == null || (mgtvPlayerView = this.f) == null || mgtvPlayerView.getVideoPlayer() == null) ? false : this.f.getVideoPlayer().isPlaying();
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (!eVar.W && eVar.ao && eVar.as) {
            eVar.b();
        }
        MgtvPlayerView mgtvPlayerView2 = this.f;
        if (mgtvPlayerView2 == null || this.q.T != 2) {
            if (mgtvPlayerView2 != null) {
                com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
                if (eVar2.T == 1 && (preRollVideoAd = eVar2.aN) != null) {
                    preRollVideoAd.doPause();
                }
            }
        } else if (mgtvPlayerView2.getVideoPlayer() != null) {
            this.q.b(9);
            if (!this.q.ah) {
                if (zIsPlaying) {
                    this.f.getVideoPlayer().exPause();
                } else {
                    this.f.getVideoPlayer().pauseLoadData();
                }
                this.f.hideRenderView();
            }
        }
        if (zIsPlaying) {
            this.A = true;
        }
        if (this.q != null) {
            System.out.println("isVideoPrepare  stop resetData  ");
            this.q.m();
        }
        com.mgtv.thirdsdk.playcore.e.g gVar = this.h;
        if (gVar != null) {
            gVar.a();
        }
        com.mgtv.thirdsdk.playcore.e.f fVar = this.g;
        if (fVar != null) {
            fVar.c();
        }
        if (zIsPlaying || (videoListener = this.w) == null) {
            return;
        }
        videoListener.onVideoStopped();
    }

    @Override
    public void f() {
        if (this.q.aI) {
            this.I = false;
            String str = d;
            com.hunantv.imgo.log.e.b(str, PlayAudioData.TAG_NEED_PLAY, true);
            com.mgtv.thirdsdk.playcore.e eVar = this.q;
            if (!eVar.W && eVar.ao && eVar.as) {
                eVar.c();
            }
            MgtvPlayerView mgtvPlayerView = this.f;
            if (mgtvPlayerView == null || this.q.T != 2) {
                if (mgtvPlayerView != null) {
                    com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
                    if (eVar2.T != 1 || eVar2.aN == null) {
                        return;
                    }
                    eVar2.b(3);
                    this.q.aN.doResume();
                    com.hunantv.imgo.log.e.b(str, "play():AdPlayer.play", true);
                    return;
                }
                return;
            }
            if (mgtvPlayerView.getVideoPlayer() != null) {
                if (G()) {
                    com.mgtv.thirdsdk.playcore.e eVar3 = this.q;
                    if (!eVar3.aE) {
                        eVar3.b(14);
                        return;
                    }
                }
                this.f.getVideoPlayer().play();
                F();
                com.hunantv.imgo.log.e.b(str, "play():VideoPlayer.play", true);
            }
        }
    }

    @Override
    public com.mgtv.thirdsdk.playcore.e g() {
        return this.q;
    }

    @Override
    public int h() {
        MgtvPlayerView mgtvPlayerView = this.f;
        int videoHeight = 0;
        if (mgtvPlayerView == null) {
            return 0;
        }
        if (mgtvPlayerView.getVideoPlayer() != null) {
            com.hunantv.imgo.log.e.b(d, "getVideoWidth play:" + this.f.getVideoPlayer().getVideoHeight(), true);
            videoHeight = this.f.getVideoPlayer().getVideoHeight();
        }
        if (videoHeight != 0 || this.q.T != 1 || this.f.getAdLayout() == null) {
            return videoHeight;
        }
        com.hunantv.imgo.log.e.b(d, "getVideoWidth ad:" + this.f.getAdLayout().getHeight(), true);
        return this.f.getAdLayout().getHeight();
    }

    public void d(String str, int i2, int i3) {
        com.mgtv.thirdsdk.playcore.e.e eVar = this.l;
        if (eVar != null) {
            eVar.a(i2, i3);
        }
        try {
            this.w.onVideoDefinitionChanged("0103");
        } catch (Exception unused) {
            new com.hunantv.imgo.log.c.c.a().a(true).a(getClass().getSimpleName()).c("01").d(com.hunantv.imgo.b.c.a().f).a("exception:", Log.getStackTraceString(new Throwable())).e().d();
        }
    }

    @Override
    public void g(boolean z) {
        this.F = z;
    }

    @Override
    public int i() {
        MgtvPlayerView mgtvPlayerView = this.f;
        int videoWidth = 0;
        if (mgtvPlayerView == null) {
            return 0;
        }
        if (mgtvPlayerView.getVideoPlayer() != null) {
            com.hunantv.imgo.log.e.b(d, "getVideoWidth play:" + this.f.getVideoPlayer().getVideoWidth(), true);
            videoWidth = this.f.getVideoPlayer().getVideoWidth();
        }
        if (videoWidth != 0 || this.q.T != 1 || this.f.getAdLayout() == null) {
            return videoWidth;
        }
        com.hunantv.imgo.log.e.b(d, "getVideoWidth ad:" + this.f.getAdLayout().getWidth(), true);
        return this.f.getAdLayout().getWidth();
    }

    @Override
    public void g(int i2) {
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            eVar.az = i2 == 1;
            PreRollVideoAd preRollVideoAd = eVar.aN;
            if (preRollVideoAd != null) {
                preRollVideoAd.noticePlayViewMode(i2);
            }
        }
    }

    public void c(String str, int i2, int i3) {
        com.mgtv.thirdsdk.playcore.e.e eVar = this.l;
        if (eVar != null) {
            eVar.b(str, i2, i3);
        }
        try {
            this.w.onVideoDefinitionChanged("0000");
        } catch (Exception unused) {
            new com.hunantv.imgo.log.c.c.a().a(true).a(getClass().getSimpleName()).c("01").d(com.hunantv.imgo.b.c.a().f).a("exception:", Log.getStackTraceString(new Throwable())).e().d();
        }
    }

    @Override
    public void b(String str) {
        com.mgtv.thirdsdk.playcore.e.a aVar;
        this.E = str;
        if (!"live".equals(str) || (aVar = this.m) == null) {
            return;
        }
        aVar.a();
    }

    @Override
    public void d() {
        String str = d;
        com.hunantv.imgo.log.e.b(str, "pause", true);
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (!eVar.W && eVar.ao && eVar.as) {
            eVar.b();
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Player pause ");
        sb.append(this.f != null && this.q.T == 2);
        printStream.println(sb.toString());
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null) {
            if (this.q.k() == 8) {
                this.q.b(9);
            }
            if (!this.q.ah) {
                com.hunantv.imgo.log.e.b(str, "Video pause", true);
            } else {
                com.hunantv.imgo.log.e.b(str, "Live pause", true);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Player pause 222 ");
            sb2.append(this.f != null && this.q.T == 1);
            printStream.println(sb2.toString());
            if (this.f.getVideoPlayer().isPlaying()) {
                VideoSDKReport.a().u();
            }
            this.f.getVideoPlayer().pause();
            this.q.ap = true;
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
        if (eVar2.aN == null || eVar2.as) {
            return;
        }
        if (eVar2.ao) {
            eVar2.b(4);
        }
        com.hunantv.imgo.log.e.b(str, "ad pause", true);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Player pause 333 ");
        sb3.append(this.f != null && this.q.T == 1);
        printStream.println(sb3.toString());
        this.q.aN.doPause();
    }

    @Override
    public void h(boolean z) {
        ScreenOrientationContainer screenOrientationContainer = this.e;
        if (screenOrientationContainer != null) {
            screenOrientationContainer.setSupportChangeOrientation(z);
        }
    }

    @Override
    public void i(boolean z) {
        ScreenOrientationContainer screenOrientationContainer = this.e;
        if (screenOrientationContainer != null) {
            screenOrientationContainer.setNeedChangeScreenMode(z);
        }
    }

    public void c(String str) {
        try {
            MgtvPlayerView mgtvPlayerView = this.f;
            if (mgtvPlayerView == null || this.q.ad == mgtvPlayerView.getVideoPlayer().getLoadingSpeed()) {
                return;
            }
            this.q.ad = this.f.getVideoPlayer().getLoadingSpeed();
            MgtvPlayerListener.VideoListener videoListener = this.w;
            if (videoListener != null) {
                videoListener.onVideoLoading(Integer.parseInt(str));
            }
        } catch (Exception unused) {
            this.q.ad = -1L;
        }
    }

    public void l(int i2) {
        com.hunantv.imgo.log.e.b(d, "onVideoStartBuffer-------->type:" + i2, true);
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar.W) {
            eVar.b(7);
        }
        VideoSDKReport.a().onStartBuffer(i2);
    }

    @Override
    public void b(String str, String str2) {
        this.u = str;
        this.s = str2;
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            eVar.m();
        }
        this.B = false;
        this.C = false;
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onVideoPreparing();
        }
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null) {
            this.f.getVideoPlayer().setIsChangeDefinition(false);
            this.f.getVideoPlayer().setLiveMode(true);
        }
        V();
        this.q.ah = true;
        VideoSDKReport.a().h(1);
        VideoSDKReport.a().b(true);
        Q();
    }

    public void h(int i2) {
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onBuffering(i2);
        }
    }

    @Override
    public int k() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return 0;
        }
        return this.f.getVideoPlayer().getDuration();
    }

    @Override
    public void m() {
        Context context;
        ScreenOrientationContainer screenOrientationContainer = this.e;
        if (screenOrientationContainer != null) {
            screenOrientationContainer.destroy();
        }
        String str = d;
        com.hunantv.imgo.log.e.b(str, "release start", true);
        ae();
        VideoSDKReport.a().j();
        VideoSDKReport.a().k();
        if (this.f != null) {
            com.hunantv.imgo.log.e.b(str, "release mMgtvPlayerView", true);
            this.f.destory();
            this.f = null;
        }
        if (this.q != null) {
            com.hunantv.imgo.log.e.b(str, "release mPlayerData", true);
            com.mgtv.task.m mVar = this.q.c;
            if (mVar != null) {
                mVar.a((com.mgtv.task.g) null);
                this.q.c = null;
            }
            com.mgtv.thirdsdk.playcore.e eVar = this.q;
            eVar.d = null;
            eVar.e = null;
            eVar.f = null;
            eVar.g = null;
            PreRollVideoAd preRollVideoAd = eVar.aN;
            if (preRollVideoAd != null) {
                preRollVideoAd.finish();
                com.hunantv.imgo.log.e.b(str, "release PreRollVideoAd", true);
                this.q.aN = null;
            }
            this.q.a = null;
            System.out.println("isVideoPrepare  release resetData  ");
            this.q.m();
            this.q.l();
        }
        this.p = null;
        this.h = null;
        this.l = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.g = null;
        this.r = "";
        this.s = "";
        com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
        if (eVar2 != null) {
            eVar2.b(12);
        }
        if (this.a != null && (context = this.o) != null) {
            context.getApplicationContext().getContentResolver().unregisterContentObserver(this.a);
            this.a = null;
        }
        com.hunantv.imgo.log.e.b(str, "release finish", true);
    }

    @Override
    public void a() {
        com.hunantv.imgo.log.e.b(d, "init", true);
        this.q = new com.mgtv.thirdsdk.playcore.e(new com.mgtv.thirdsdk.playcore.d() {
            @Override
            public int getVideoHeight() {
                if (c.this.y != null) {
                    return c.this.y.getVideoHeight();
                }
                return 0;
            }

            @Override
            public int getVideoWidth() {
                if (c.this.y != null) {
                    return c.this.y.getVideoWidth();
                }
                return 0;
            }

            @Override
            public void onPlayStatusChange(int i2) {
                if (c.this.y != null) {
                    c.this.y.onPlayStatusChange(i2);
                }
            }
        });
        ScreenOrientationContainer screenOrientationContainer = this.e;
        if (screenOrientationContainer != null) {
            screenOrientationContainer.setOrientationChangeListener(new ScreenOrientationContainer.OnScreenOrientationChangeListener() {
                @Override
                public void onScreenOrientationChange(int i2) {
                    if (c.this.z != null) {
                        c.this.z.onScreenOrientationChange(i2);
                    }
                }
            });
            this.e.setSupportChangeOrientation(false);
        }
        this.q.b = VideoSDKReport.a();
        this.q.c = new com.mgtv.task.m(this.o);
        com.mgtv.thirdsdk.playcore.e.g gVar = new com.mgtv.thirdsdk.playcore.e.g(this.o, this.q, this.f);
        this.h = gVar;
        gVar.a(this.E);
        this.h.a(this.J);
        com.mgtv.thirdsdk.playcore.e.f fVar = new com.mgtv.thirdsdk.playcore.e.f(this.f, this.q);
        this.g = fVar;
        fVar.a(this.E);
        this.g.a(this.J);
        com.mgtv.thirdsdk.playcore.e.h hVar = new com.mgtv.thirdsdk.playcore.e.h(this.o, this.q, this.f);
        this.i = hVar;
        hVar.a(this.J);
        com.mgtv.thirdsdk.playcore.e.d dVar = new com.mgtv.thirdsdk.playcore.e.d(this.o, this.q, this.f);
        this.j = dVar;
        dVar.a(this.J);
        com.mgtv.thirdsdk.playcore.e.e eVar = new com.mgtv.thirdsdk.playcore.e.e(this.f, this.o, this.q);
        this.l = eVar;
        eVar.a(this.J);
        com.mgtv.thirdsdk.playcore.e.c cVar = new com.mgtv.thirdsdk.playcore.e.c(this.o, this.q, this.f);
        this.k = cVar;
        cVar.a(this.J);
        com.mgtv.thirdsdk.playcore.e.a aVar = new com.mgtv.thirdsdk.playcore.e.a(this.o, this.q, this.f);
        this.m = aVar;
        aVar.a(this.J);
        com.mgtv.thirdsdk.playcore.e.b bVar = new com.mgtv.thirdsdk.playcore.e.b(this.o, this.q, this.f);
        this.n = bVar;
        bVar.a(this.J);
        com.mgtv.thirdsdk.playcore.utils.c.a(false);
        a(false);
        this.q.b(0);
        I();
    }

    @Override
    public void k(boolean z) {
        ScreenOrientationContainer screenOrientationContainer = this.e;
        if (screenOrientationContainer != null) {
            if (z) {
                screenOrientationContainer.lockScreen();
            } else {
                screenOrientationContainer.unlockScreen();
            }
        }
    }

    @Override
    public int l() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return 0;
        }
        return this.f.getVideoPlayer().getCurrentPosition();
    }

    @Override
    public int j() {
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar.ag) {
            MgtvPlayerView mgtvPlayerView = this.f;
            if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
                return 0;
            }
            return this.f.getVideoPlayer().getRealDuration();
        }
        if (eVar.X) {
            MgtvPlayerView mgtvPlayerView2 = this.f;
            if (mgtvPlayerView2 == null || mgtvPlayerView2.getVideoPlayer() == null) {
                return 0;
            }
            com.hunantv.imgo.log.e.b(d, "getRealDuration player---------->realduration:" + this.f.getVideoPlayer().getRealDuration(), true);
            return this.f.getVideoPlayer().getRealDuration();
        }
        if (eVar.p == null) {
            return 0;
        }
        com.hunantv.imgo.log.e.b(d, "getRealDuration service---------->realduration:" + (this.q.p.time * 1000), true);
        return this.q.p.time * 1000;
    }

    public void c(int i2, int i3) {
        MgtvPlayerView mgtvPlayerView;
        if (i2 == 5) {
            a(80000001, i3 + "", "");
            return;
        }
        if (i2 == 900 && (mgtvPlayerView = this.f) != null) {
            b(mgtvPlayerView.getVideoPlayer(), i2, i3);
            VideoSDKReport.a().onInfo(i2, i3);
            if (com.hunantv.imgo.util.b.f()) {
                af();
            }
        }
    }

    @Override
    public void f(boolean z) {
        ScreenOrientationContainer screenOrientationContainer;
        this.q.at = z;
        if (this.f == null || (screenOrientationContainer = this.e) == null) {
            return;
        }
        if (z) {
            screenOrientationContainer.setLandScape();
        } else {
            screenOrientationContainer.setPortrait();
        }
    }

    public void c(ImgoPlayerView imgoPlayerView, int i2, int i3) {
        PlayerAuthRouterEntity playerAuthRouterEntity;
        MgtvPlayerListener.VideoListener videoListener;
        com.hunantv.imgo.log.e.d(d, "onVideoError:" + i2 + ",extra:" + i3, true);
        if (imgoPlayerView == null || !imgoPlayerView.getTag().equals(ImgoPlayerView.TAG_PLAYER_ADSDK)) {
            if (this.q.ai && (videoListener = this.w) != null) {
                videoListener.onVideoDefinitionChanged("0103");
            }
            com.mgtv.thirdsdk.playcore.e eVar = this.q;
            if (eVar.av && (playerAuthRouterEntity = eVar.l) != null) {
                int i4 = eVar.P;
                int i5 = eVar.Q;
                if (i4 >= i5) {
                    if (i4 == i5) {
                        a(i2, i3, true);
                        return;
                    }
                    return;
                }
                eVar.P = i4 + 1;
                playerAuthRouterEntity.m3u8 = null;
                j(3);
                VideoSDKReport.a().a("1", "140104_" + i2);
                return;
            }
            if (!eVar.ag) {
                if (i2 == 500005) {
                    this.l.a();
                }
                com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
                int i6 = eVar2.P;
                int i7 = eVar2.Q;
                if (i6 < i7) {
                    eVar2.P = i6 + 1;
                    a(i2, i3, false);
                    return;
                } else {
                    if (i6 == i7) {
                        a(i2, i3, true);
                        return;
                    }
                    return;
                }
            }
            if (!eVar.ah) {
                if (i2 == 7000011) {
                    MgtvPlayerListener.ErrorListener errorListener = this.x;
                    if (errorListener != null) {
                        errorListener.onError("150502_" + i2);
                    }
                    VideoSDKReport.a().a("1", "150502_" + i2);
                    return;
                }
                MgtvPlayerListener.ErrorListener errorListener2 = this.x;
                if (errorListener2 != null) {
                    errorListener2.onError("150599_" + i2);
                }
                VideoSDKReport.a().a("1", "150599_" + i2);
                return;
            }
            if (i2 != 400410 && i2 != 400416) {
                switch (i2) {
                    case 100001:
                    case 100002:
                    case 100003:
                    case 100004:
                        MgtvPlayerListener.ErrorListener errorListener3 = this.x;
                        if (errorListener3 != null) {
                            errorListener3.onError("140102_" + i2);
                        }
                        VideoSDKReport.a().a("2", "140102_" + i2);
                        return;
                    default:
                        switch (i2) {
                            case 200001:
                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_200002:
                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_200003:
                                MgtvPlayerListener.ErrorListener errorListener4 = this.x;
                                if (errorListener4 != null) {
                                    errorListener4.onError("140101_" + i2);
                                }
                                VideoSDKReport.a().a("2", "140101_" + i2);
                                return;
                            default:
                                switch (i2) {
                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_300001:
                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_300002:
                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_300003:
                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_300004:
                                        break;
                                    default:
                                        switch (i2) {
                                            case 400400:
                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400401:
                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400402:
                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400403:
                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400404:
                                                break;
                                            default:
                                                switch (i2) {
                                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_400407:
                                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_400408:
                                                        break;
                                                    default:
                                                        switch (i2) {
                                                            case 400499:
                                                            case 400500:
                                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400501:
                                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400502:
                                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400503:
                                                            case MgtvMediaPlayer.MGTVMEDIA_ERROR_400504:
                                                                break;
                                                            default:
                                                                switch (i2) {
                                                                    case 400599:
                                                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_400600:
                                                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_400601:
                                                                    case MgtvMediaPlayer.MGTVMEDIA_ERROR_400602:
                                                                        break;
                                                                    default:
                                                                        MgtvPlayerListener.ErrorListener errorListener5 = this.x;
                                                                        if (errorListener5 != null) {
                                                                            errorListener5.onError("140103_" + i2);
                                                                        }
                                                                        VideoSDKReport.a().a("2", "140103_" + i2);
                                                                        break;
                                                                }
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            MgtvPlayerListener.ErrorListener errorListener6 = this.x;
            if (errorListener6 != null) {
                errorListener6.onError("140100_" + i2);
            }
            VideoSDKReport.a().a("2", "140100_" + i2);
        }
    }

    @Override
    public void f(int i2) {
        if (this.H == null) {
            this.H = new com.mgtv.thirdsdk.playcore.d.a(this.K);
        }
        com.mgtv.thirdsdk.playcore.d.a aVar = this.H;
        aVar.a(aVar.a(i2));
    }

    @Override
    public void j(boolean z) {
        com.mgtv.thirdsdk.playcore.e.f fVar = this.g;
        if (fVar != null) {
            fVar.a(z);
        }
    }

    public void b(String str, int i2, int i3) {
        com.mgtv.thirdsdk.playcore.e.e eVar = this.l;
        if (eVar != null) {
            eVar.a(str, i2, i3);
        }
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onVideoDefinitionChanging();
        }
    }

    @Override
    public void e(int i2) {
        com.hunantv.imgo.log.e.b(d, "setAspectRatio---------->aspectRatio:" + i2, true);
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.f.getVideoPlayer().setAspectRatio(i2);
    }

    public void b(int i2, int i3) {
        MgtvPlayerView mgtvPlayerView;
        if (i2 != 3) {
            if (i2 != 9) {
                return;
            }
            this.q.b(8);
            return;
        }
        this.q.b(3, 6);
        if (this.w == null || (mgtvPlayerView = this.f) == null || mgtvPlayerView.getVideoPlayer() == null || this.f.getVideoPlayer().getIsChangeDefinition()) {
            return;
        }
        this.w.OnVideoFirstFrame();
    }

    @Override
    public void d(int i2) {
        com.hunantv.imgo.log.e.b(d, "setBookmark----------->bookmark:" + i2, true);
        if (this.q.ah) {
            return;
        }
        com.mgtv.thirdsdk.playcore.utils.c.a(i2);
        com.mgtv.thirdsdk.playcore.utils.c.k();
        this.q.ax = i2;
    }

    @Override
    public void e(boolean z) {
        ScreenOrientationContainer screenOrientationContainer;
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        eVar.at = z;
        PreRollVideoAd preRollVideoAd = eVar.aN;
        if (preRollVideoAd != null) {
            preRollVideoAd.onScreenRotate();
        }
        if (this.f == null || (screenOrientationContainer = this.e) == null) {
            return;
        }
        if (z) {
            screenOrientationContainer.setLandScape();
        } else {
            screenOrientationContainer.setPortrait();
        }
    }

    private void b(ImgoPlayerView imgoPlayerView, int i2, int i3) {
        int i4 = 1;
        com.hunantv.imgo.log.e.b(d, "onVideoRenderStart", true);
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null && !eVar.ag && !eVar.ah) {
            VideoSDKReport.a().a(this.q.L);
        }
        VideoSDKReport.a().c(i2, i3);
        this.q.W = true;
        if (this.w != null) {
            if (this.f.getVideoPlayer().getIsChangeDefinition()) {
                this.w.onVideoStartPlayering(false);
                try {
                    this.w.onVideoDefinitionChanged("0000");
                } catch (Error e2) {
                    com.hunantv.imgo.log.e.c(d, e2.getMessage(), true);
                } catch (Exception e3) {
                    com.hunantv.imgo.log.e.c(d, e3.getMessage(), true);
                }
                this.f.getVideoPlayer().setIsChangeDefinition(false);
            } else {
                VideoSDKReport.a().a(System.currentTimeMillis() - com.hunantv.imgo.util.e.a, com.hunantv.imgo.util.e.b, com.hunantv.imgo.util.e.c, com.hunantv.imgo.util.e.d, this.E, "vod");
                this.w.onVideoStartPlayering(true);
            }
        }
        com.hunantv.imgo.log.e.b(d, "prepare到第一帧渲染耗时-----------------：" + this.q.a(3) + "ms", true);
        VideoSDKReport.a().s(String.valueOf(this.q.a(0)));
        VideoSDKReport.a().t(String.valueOf(this.q.a(4)));
        if (this.q.y > 0) {
            VideoSDKReport.a().u(this.q.a(1) + StringUtils.COMMA + this.q.y);
        } else {
            VideoSDKReport.a().u(String.valueOf(this.q.a(1)));
        }
        VideoSDKReport.a().v(String.valueOf(this.q.a(2)));
        long jA = this.q.a(3);
        List<Integer> list = this.q.aq;
        if (list != null && list.size() > 0) {
            for (int i5 = 0; i5 < this.q.aq.size(); i5++) {
                jA -= (long) this.q.aq.get(i5).intValue();
            }
        }
        int memoryPlayType = this.f.getVideoPlayer().getMemoryPlayType();
        VideoSDKReport.a().w(String.valueOf(jA));
        String str = d;
        com.hunantv.imgo.log.e.b(str, "p2p耗时-----------------：" + this.q.a(7), true);
        VideoSDKReport.a().i(String.valueOf(this.q.a(7)));
        VideoSDKReport.a().j(String.valueOf(memoryPlayType));
        this.q.d();
        VideoSDKReport.a().q(String.valueOf(this.q.a(5) + jA));
        com.hunantv.imgo.log.e.b(str, "总耗时-----------------：" + (this.q.a(5) + jA) + "ms", true);
        com.hunantv.imgo.log.e.b(str, "总耗时(一层到第一帧渲染总时长)-----------------：" + this.q.a(6) + "ms", true);
        com.hunantv.imgo.log.e.b(str, "标准总耗时-----------------：" + (this.q.a(5) + this.q.a(8)) + "ms", true);
        VideoSDKReport.a().r(String.valueOf(this.q.a(5) + this.q.a(8)));
        VideoSDKReport.a().j(this.q.au);
        VideoSDKReport.a().k(this.q.av);
        VideoSDKReport videoSDKReportA = VideoSDKReport.a();
        com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
        if (eVar2.aw) {
            i4 = 2;
        } else if (!eVar2.aB.getProxyType().equals(ReportParams.ProxyType.ONLY_P2P)) {
            i4 = 0;
        }
        videoSDKReportA.a(i4);
        b(imgoPlayerView);
    }

    @Override
    public void d(boolean z) {
        PreRollVideoAd preRollVideoAd;
        String str = d;
        com.hunantv.imgo.log.e.b(str, "onActivityStart------>canplay:" + z, true);
        com.hunantv.imgo.log.e.b(str, "hasStart:" + this.q.ao, true);
        if (z) {
            D();
        } else {
            d();
            this.I = true;
        }
        VideoSDKReport.a().h();
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (!eVar.as || (preRollVideoAd = eVar.aN) == null) {
            return;
        }
        preRollVideoAd.noticeActivityStatus(true);
    }

    @Override
    public void a(InterfaceC0188c interfaceC0188c) {
        this.b = interfaceC0188c;
    }

    @Override
    public void a(Activity activity) {
        this.p = activity;
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            eVar.a = activity;
        }
    }

    @Override
    public void a(String str, String str2) {
        com.hunantv.imgo.log.e.b(d, "startPlayer:------>vid:" + str, true);
        new com.hunantv.imgo.log.c.c.a().a(true).a(getClass().getSimpleName()).b("startPlayer").c("01").d(com.hunantv.imgo.b.c.a().f).a("vid", str).e().d();
        this.r = str;
        this.s = str2;
        if (this.q != null) {
            System.out.println("isVideoPrepare  startPlayer resetData  ");
            this.q.m();
        }
        com.mgtv.thirdsdk.playcore.e.g gVar = this.h;
        if (gVar != null) {
            gVar.a();
        }
        this.B = false;
        this.C = false;
        this.I = false;
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onVideoPreparing();
            int iIsFullScreen = this.w.isFullScreen();
            if (iIsFullScreen >= 0) {
                this.q.at = iIsFullScreen == 1;
            }
        }
        V();
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null) {
            this.f.getVideoPlayer().setIsChangeDefinition(false);
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        eVar.ag = false;
        eVar.i = str;
        VideoSDKReport.a().h(0);
        VideoSDKReport.a().c(false);
        VideoSDKReport.a().s();
        System.out.println("pvs  startPlayer cg");
        P();
    }

    public void c(ImgoPlayerView imgoPlayerView) {
        MgtvPlayerListener.VideoListener videoListener;
        MgtvPlayerListener.VideoListener videoListener2;
        String str = d;
        com.hunantv.imgo.log.e.b(str, "onVideoPrepared    adComplete:" + this.q.as + "; getIsChangeDefinition:" + this.f.getVideoPlayer().getIsChangeDefinition(), true);
        PlayerAuthDataEntity playerAuthDataEntity = this.q.p;
        if (playerAuthDataEntity != null && playerAuthDataEntity.hdcp == 1) {
            ad();
        }
        this.q.b(2);
        com.hunantv.imgo.log.e.b(str, "三层到prepare耗时-------------------：" + this.q.a(2) + "ms", true);
        com.hunantv.imgo.util.e.d = System.currentTimeMillis() - this.G;
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar.ag) {
            if (eVar.aJ) {
                MgtvPlayerListener.VideoListener videoListener3 = this.w;
                if (videoListener3 != null) {
                    videoListener3.onVideoPrepare();
                }
            } else if (eVar.as && !this.f.getVideoPlayer().getIsChangeDefinition() && (videoListener2 = this.w) != null) {
                videoListener2.onVideoPrepare();
                VideoSDKReport.a().h(false);
                this.q.b(5);
                com.hunantv.imgo.log.e.b(str, "一层到prepare耗时-------------------：" + this.q.a(5) + "ms", true);
            }
        } else if (!eVar.ah) {
            if (eVar.as && !this.f.getVideoPlayer().getIsChangeDefinition() && (videoListener = this.w) != null) {
                videoListener.onVideoPrepare();
                VideoSDKReport.a().h(false);
                this.q.b(5);
                com.hunantv.imgo.log.e.b(str, "一层到prepare耗时-------------------：" + this.q.a(5) + "ms", true);
            }
        } else if (this.w != null && !this.f.getVideoPlayer().getIsChangeDefinition()) {
            this.w.onVideoPrepare();
        }
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null && this.f.getVideoPlayer().getIsChangeDefinition()) {
            f();
            com.hunantv.imgo.log.e.b(str, "onVideoPrepared():play", true);
        }
        this.q.X = true;
        System.out.println("isVideoPrepare   onVideoPrepared  " + this.q.X);
    }

    @Override
    public void a(String str) {
        this.t = str;
        this.s = this.s;
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            eVar.m();
        }
        this.B = false;
        this.C = false;
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onVideoPreparing();
        }
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null) {
            this.f.getVideoPlayer().setIsChangeDefinition(false);
        }
        V();
        this.q.ag = true;
        VideoSDKReport.a().h(0);
        VideoSDKReport.a().c(true);
        VideoSDKReport.a().h();
        VideoSDKReport.a().s();
        this.G = System.currentTimeMillis();
        com.mgtv.thirdsdk.playcore.e.c cVar = this.k;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    private void b(ImgoPlayerView imgoPlayerView) {
        int i2;
        int i3;
        com.hunantv.imgo.log.e.b(d, "jumpBeforePlay", true);
        if (imgoPlayerView == null || this.q.v) {
            return;
        }
        int currentPosition = imgoPlayerView.getCurrentPosition();
        int duration = imgoPlayerView.getDuration();
        if (currentPosition < 0 || duration <= 0 || currentPosition > duration) {
            return;
        }
        PlayerAuthDataEntity.PointEntity pointEntityY = Y();
        PlayerAuthDataEntity.PointEntity pointEntityX = X();
        if (!imgoPlayerView.isPosPlay) {
            if (!this.q.ac || pointEntityY == null || (i3 = pointEntityY.pointStart) <= 0 || i3 >= duration / 1000) {
                return;
            }
            imgoPlayerView.seekTo(i3 * 1000);
            return;
        }
        int i4 = currentPosition / 1000;
        int i5 = duration / 1000;
        if (i4 >= i5 - 3) {
            if (!this.q.ac) {
                imgoPlayerView.seekTo(0);
                return;
            } else {
                if (pointEntityY != null && (i2 = pointEntityY.pointStart) > 0 && i2 < i5) {
                    imgoPlayerView.seekTo(i2 * 1000);
                    return;
                }
                return;
            }
        }
        if (pointEntityX == null) {
            return;
        }
        int i6 = pointEntityX.pointStart;
        if (i4 < i6 - 1 || i4 > i6 + 1 || !this.q.ac) {
            return;
        }
        if (pointEntityY != null && i6 > 0 && i6 < i5) {
            imgoPlayerView.seekTo(i6 * 1000);
        } else {
            imgoPlayerView.seekTo(0);
        }
    }

    @Override
    public void a(int i2) {
        com.hunantv.imgo.log.e.b(d, "changeDefination:------>" + i2, true);
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar.ah) {
            System.out.println("isVideoPrepare  changeDefination resetData  ");
            this.q.m();
            com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
            eVar2.ah = true;
            eVar2.ai = true;
            VideoSDKReport.a().b(true);
            c(i2);
            this.f.getVideoPlayer().setIsChangeDefinition(true);
            j(8);
            return;
        }
        if (eVar.o != null) {
            for (int i3 = 0; i3 < this.q.o.size(); i3++) {
                if (this.q.o.get(i3) != null && i2 == this.q.o.get(i3).definition) {
                    com.mgtv.thirdsdk.playcore.e eVar3 = this.q;
                    eVar3.n = eVar3.o.get(i3);
                    break;
                }
            }
        }
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        com.mgtv.thirdsdk.playcore.utils.c.a(this.r, this.f.getVideoPlayer().getCurrentPosition());
        com.hunantv.imgo.log.e.b(d, "supportChangeSourceAsync:" + this.f.getVideoPlayer().supportChangeSourceAsync(), true);
        if (this.f.getVideoPlayer().supportChangeSourceAsync()) {
            this.f.getVideoPlayer().openImgoSourceModule(true);
            j(4);
        } else {
            this.f.getVideoPlayer().openImgoSourceModule(false);
            j(6);
        }
    }

    @Override
    public void c(int i2) {
        com.hunantv.imgo.log.e.b(d, "setDefaultDefination--------->definition:" + i2, true);
        PreferencesUtil.putInt("video_definition", i2);
    }

    @Override
    public int c() {
        int i2;
        MgtvPlayerView mgtvPlayerView;
        if (this.q.ag && (mgtvPlayerView = this.f) != null && mgtvPlayerView.getVideoPlayer() != null) {
            return this.f.getVideoPlayer().getRealDuration();
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (!eVar.v || eVar.p == null) {
            i2 = 0;
        } else {
            com.hunantv.imgo.log.e.b(d, "getRealDuration service---------->realduration:" + (this.q.p.time * 1000), true);
            i2 = this.q.p.time * 1000;
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
        if (eVar2.X) {
            MgtvPlayerView mgtvPlayerView2 = this.f;
            if (mgtvPlayerView2 == null || mgtvPlayerView2.getVideoPlayer() == null) {
                return i2;
            }
            com.hunantv.imgo.log.e.b(d, "getRealDuration player---------->realduration:" + this.f.getVideoPlayer().getRealDuration(), true);
            return Math.max(this.f.getVideoPlayer().getRealDuration(), i2);
        }
        if (eVar2.p == null) {
            return i2;
        }
        com.hunantv.imgo.log.e.b(d, "getRealDuration service---------->realduration:" + (this.q.p.time * 1000), true);
        return this.q.p.time * 1000;
    }

    @Override
    public void b(int i2) {
        MgtvPlayerView mgtvPlayerView;
        com.hunantv.imgo.log.e.b(d, "seek:" + i2, true);
        if (this.q.ah || (mgtvPlayerView = this.f) == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.f.getVideoPlayer().seekTo(i2);
    }

    @Override
    public void b(boolean z) {
        PreRollVideoAd preRollVideoAd;
        PreRollVideoAd preRollVideoAd2;
        com.hunantv.imgo.log.e.b(d, "setMuteStatus----------->mute:" + z, true);
        if (this.f != null) {
            if (z) {
                com.mgtv.thirdsdk.playcore.e eVar = this.q;
                if (eVar.T == 1 && (preRollVideoAd2 = eVar.aN) != null) {
                    preRollVideoAd2.doAdMute();
                }
                if (this.f.getVideoPlayer() != null) {
                    try {
                        this.f.getVideoPlayer().setVolume(0.0f);
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                return;
            }
            com.mgtv.thirdsdk.playcore.e eVar2 = this.q;
            if (eVar2.T == 1 && (preRollVideoAd = eVar2.aN) != null) {
                preRollVideoAd.doAdunMute();
            }
            if (this.f.getVideoPlayer() != null) {
                try {
                    this.f.getVideoPlayer().setVolume(1.0f);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }

    @Override
    public void c(boolean z) {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        com.hunantv.imgo.log.e.b(d, "setBufferStatus------>allowbuffer:" + z, true);
        this.f.getVideoPlayer().setBufferStatus(z);
    }

    @Override
    public void a(boolean z) {
        com.hunantv.imgo.log.e.b(d, "setJumpBeforeOrEnd", true);
        new com.hunantv.imgo.log.c.c.a().a(true).a(getClass().getSimpleName()).b("setJumpBeforeOrEnd").c("01").d(com.hunantv.imgo.b.c.a().f).e().d();
        com.mgtv.thirdsdk.playcore.e eVar = this.q;
        if (eVar != null) {
            eVar.ac = z;
        }
    }

    @Override
    public boolean b() {
        com.hunantv.imgo.log.e.b(d, "isPreview:" + this.q.v, true);
        return this.q.v;
    }

    public void b(SubtitleSource subtitleSource) {
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onSubtitlesError("");
        }
    }

    public void a(String str, int i2, int i3) {
        com.hunantv.imgo.log.e.b(d, "onVideoTsSkip", true);
    }

    public void a(int i2, int i3) {
        VideoSDKReport.a().g(String.valueOf(this.f.getVideoPlayer().getLoadingSpeed()));
        VideoSDKReport.a().onCompletion(i2, i3);
        com.mgtv.ssp.e.c(this.o);
        if (i2 != 0) {
            this.q.S = true;
        }
        if (i2 != 30020 && i2 != 30030 && i2 != 30031 && i2 != 30032) {
            Z();
        } else {
            c(this.f.getVideoPlayer(), i2, i3);
        }
    }

    public void a(boolean z, boolean z2) {
        com.mgtv.thirdsdk.playcore.e eVar;
        if (!z2 || z) {
            int iC = com.hunantv.imgo.net.c.c();
            MgtvPlayerView mgtvPlayerView = this.f;
            if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null || this.f.getVideoPlayer().isBeforeFirstFrame() || (eVar = this.q) == null || eVar.ag) {
                return;
            }
            if (iC == 2) {
                com.mgtv.thirdsdk.playcore.utils.c.a(eVar.i, this.f.getVideoPlayer().getCurrentPosition());
                d();
                this.c = !this.I;
                MgtvPlayerListener.ErrorListener errorListener = this.x;
                if (errorListener != null) {
                    errorListener.onError("140100");
                }
                VideoSDKReport.a().a("1", "140100");
                return;
            }
            if ((iC == 1 || iC == 0) && this.c) {
                this.c = false;
                f();
            }
        }
    }

    public void a(ImgoPlayerView imgoPlayerView, int i2, int i3) {
        String str = d;
        com.hunantv.imgo.log.e.a(str, "onVideoTick", true);
        if (this.q.ah) {
            return;
        }
        if (imgoPlayerView == null || !imgoPlayerView.getTag().equals(ImgoPlayerView.TAG_PLAYER_ADSDK)) {
            a(imgoPlayerView);
            com.hunantv.imgo.log.e.a(str, "position:" + i2 + "     videoPosition:" + this.f.getVideoPlayer().getCurrentPosition(), true);
            MgtvPlayerView mgtvPlayerView = this.f;
            if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null || this.f.getVideoPlayer().getCurrentPosition() <= this.f.getVideoPlayer().getDuration()) {
                return;
            }
            this.f.getVideoPlayer().stop();
            this.f.getVideoPlayer().onInnerCompletion(0, 0);
        }
    }

    private void a(ImgoPlayerView imgoPlayerView) {
        PlayerAuthDataEntity.PointEntity pointEntityX;
        int i2;
        int i3;
        com.hunantv.imgo.log.e.a(d, "jumpInPlay", true);
        if (imgoPlayerView != null) {
            com.mgtv.thirdsdk.playcore.e eVar = this.q;
            if (!eVar.v && eVar.ac) {
                int currentPosition = imgoPlayerView.getCurrentPosition();
                int duration = imgoPlayerView.getDuration();
                if (currentPosition < 0 || duration <= 0 || currentPosition > duration || (pointEntityX = X()) == null || (i2 = pointEntityX.pointStart) >= duration / 1000 || (i3 = currentPosition / 1000) < i2 - 1 || i3 > i2 + 1) {
                    return;
                }
                imgoPlayerView.reset(false);
                this.q.S = false;
                imgoPlayerView.removeRecordPoint();
            }
        }
    }

    public void a(int i2, String str, String str2) {
        com.hunantv.imgo.log.e.c(d, "onVideoWarning------>what:" + i2, true);
    }

    private void a(int i2, int i3, boolean z) {
        int i4;
        int iIndexOf;
        com.hunantv.imgo.log.e.d(d, "doErrorRetry", true);
        VideoSDKReport.a().n(true);
        if (!z) {
            String strSubstring = this.q.M;
            if (strSubstring != null) {
                int iIndexOf2 = strSubstring.indexOf("//");
                if (iIndexOf2 >= 0 && (i4 = iIndexOf2 + 2) < strSubstring.length() && (iIndexOf = (strSubstring = strSubstring.substring(i4)).indexOf("/")) >= 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                com.mgtv.thirdsdk.playcore.e eVar = this.q;
                if (eVar.P == 1) {
                    eVar.B = "&svrip=" + strSubstring;
                } else {
                    eVar.B = this.q.B + StringUtils.COMMA + strSubstring;
                }
            }
            if (this.f.getVideoPlayer() != null && !this.f.getVideoPlayer().isBeforeFirstFrame()) {
                VideoSDKReport.a().g(3);
            }
            this.q.aB.setLastErrorCodeExtra(i3);
            if (i2 != 30030 && i2 != 30031 && i2 != 30032) {
                T();
            } else {
                System.out.println("pvs doErrorRetry controlGetSource ");
                this.q.aL = true;
                P();
            }
            VideoSDKReport.a().l(this.q.B);
            VideoSDKReport.a().b(i2, i3);
        } else {
            this.q.B = "";
            VideoSDKReport.a().l("");
            VideoSDKReport.a().a(i2, i3);
            VideoSDKReport.a().g();
            VideoSDKReport.a().f();
        }
        if (i2 != 400410 && i2 != 400416) {
            switch (i2) {
                case 100001:
                case 100002:
                case 100003:
                case 100004:
                    MgtvPlayerListener.ErrorListener errorListener = this.x;
                    if (errorListener != null && z) {
                        errorListener.onError("140105_" + i2);
                    }
                    VideoSDKReport.a().a("2", "140102_" + i2);
                    return;
                default:
                    switch (i2) {
                        case 200001:
                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_200002:
                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_200003:
                            MgtvPlayerListener.ErrorListener errorListener2 = this.x;
                            if (errorListener2 != null && z) {
                                errorListener2.onError("140105_" + i2);
                            }
                            VideoSDKReport.a().a("2", "140101_" + i2);
                            return;
                        default:
                            switch (i2) {
                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_300001:
                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_300002:
                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_300003:
                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_300004:
                                    break;
                                default:
                                    switch (i2) {
                                        case 400400:
                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400401:
                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400402:
                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400403:
                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400404:
                                            break;
                                        default:
                                            switch (i2) {
                                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_400407:
                                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_400408:
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 400499:
                                                        case 400500:
                                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400501:
                                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400502:
                                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400503:
                                                        case MgtvMediaPlayer.MGTVMEDIA_ERROR_400504:
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 400599:
                                                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_400600:
                                                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_400601:
                                                                case MgtvMediaPlayer.MGTVMEDIA_ERROR_400602:
                                                                    break;
                                                                default:
                                                                    MgtvPlayerListener.ErrorListener errorListener3 = this.x;
                                                                    if (errorListener3 != null && z) {
                                                                        errorListener3.onError("140105_" + i2);
                                                                    }
                                                                    VideoSDKReport.a().a("2", "140103_" + i2);
                                                                    break;
                                                            }
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        MgtvPlayerListener.ErrorListener errorListener4 = this.x;
        if (errorListener4 != null && z) {
            errorListener4.onError("140105_" + i2);
        }
        VideoSDKReport.a().a("2", "140100_" + i2);
    }

    @Override
    public void a(MgtvPlayerListener.AuthResultListener authResultListener) {
        this.v = authResultListener;
    }

    @Override
    public void a(MgtvPlayerListener.AdListener adListener) {
        this.g.a(adListener);
    }

    @Override
    public void a(MgtvPlayerListener.VideoListener videoListener) {
        this.w = videoListener;
    }

    @Override
    public void a(MgtvPlayerListener.ErrorListener errorListener) {
        this.x = errorListener;
    }

    @Override
    public void a(com.mgtv.thirdsdk.playcore.d dVar) {
        this.y = dVar;
    }

    @Override
    public void a(com.mgtv.thirdsdk.playcore.f fVar) {
        this.z = fVar;
    }

    @Override
    public void a(float f2) {
        com.hunantv.imgo.log.e.b(d, "setPlaySpeed:" + f2, true);
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.q.V = f2;
        this.f.getVideoPlayer().setPlayBackSpeed(f2);
    }

    @Override
    public void a(MgSspAccountCallback mgSspAccountCallback) {
        com.mgtv.thirdsdk.playcore.e.f fVar = this.g;
        if (fVar != null) {
            fVar.a(mgSspAccountCallback);
        }
    }

    @Override
    public void a(com.mgtv.ssp.authbase.c cVar) {
        com.mgtv.thirdsdk.playcore.e.f fVar = this.g;
        if (fVar != null) {
            fVar.a(cVar);
        }
    }

    @Override
    public void a(com.mgtv.ssp.c cVar) {
        com.mgtv.thirdsdk.playcore.e.g gVar = this.h;
        if (gVar != null) {
            gVar.a(cVar);
        }
    }

    public void a(SubtitleSource subtitleSource) {
        MgtvPlayerListener.VideoListener videoListener = this.w;
        if (videoListener != null) {
            videoListener.onSubtitlesSuccess("");
        }
    }
}
