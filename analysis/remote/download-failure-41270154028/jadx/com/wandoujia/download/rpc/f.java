package com.wandoujia.download.rpc;

import android.content.ContentValues;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.bytedance.sdk.component.pglcrypt.PglCryptUtils;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.snaptube.ad.guardian.TrackConstant;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.util.ProductionEnv;
import com.snaptube.video.videoextractor.net.HttpHeader;
import com.twmacinta.util.MD5;
import com.twmacinta.util.MD5State;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.download.listener.NetworkStatusStub;
import com.wandoujia.download.model.DownloadUrlInfo;
import com.wandoujia.download.model.segments.DownloadBlockInfo;
import com.wandoujia.download.model.segments.DownloadConfigInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import net.pubnative.library.request.PubnativeAsset;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.bg8;
import o.cn3;
import o.cq1;
import o.dg0;
import o.gz1;
import o.hu1;
import o.if9;
import o.ig4;
import o.it1;
import o.iu1;
import o.j23;
import o.js;
import o.ju1;
import o.nf5;
import o.rg4;
import o.sr1;
import o.t03;
import o.tg4;
import o.tu1;
import o.vu1;
import o.wc1;
import o.x29;
import o.y48;
import o.yg7;
import o.yj2;
import o.yq5;
import o.yu;
import o.yv3;
import o.zr7;
import org.json.JSONException;

public class f {
    public static final int[] v = {0, TrackConstant.SCAN_MAX_COUNT, 1000, 2000};
    public static final Executor w = new dg0(1);
    public static final Executor x = new dg0(1);
    public final com.wandoujia.download.rpc.h a;
    public int e;
    public final ExecutorService f;
    public final yu g;
    public final sr1 i;
    public final Context j;
    public final vu1 k;
    public final rg4 l;
    public final NetworkStatusStub m;
    public final yg7 n;

    public final com.wandoujia.download.rpc.b f496o;
    public Map q;
    public MD5 r;
    public final InterfaceC0496f u;
    public int b = 0;
    public final SparseIntArray c = new SparseIntArray(3);
    public final int[] d = {1, 2, 4, 8, 16};
    public final HashMap h = new HashMap();
    public final Map p = new HashMap();
    public long s = 0;
    public final cn3 t = new a();

    public class a implements cn3 {
        public long a;
        public long b;

        public a() {
        }

        @Override
        public void a(IBlockDownloadTask iBlockDownloadTask, int i, IBlockDownloadTask.BlockStatus blockStatus) {
            synchronized (f.c(f.this)) {
                try {
                    if (f.c(f.this).d() != 299 && f.c(f.this).d() != 300) {
                        if (this.b == 0 && blockStatus == IBlockDownloadTask.BlockStatus.RUNNING && f.c(f.this).c() <= 0) {
                            this.b = SystemClock.elapsedRealtime();
                            if (f.c(f.this).M != null) {
                                this.a = f.c(f.this).M.d();
                            }
                        }
                        if (blockStatus.getParentStatus() == IBlockDownloadTask.BlockParentStatus.FAILED && f.u(f.this, i, blockStatus, iBlockDownloadTask.c())) {
                            return;
                        }
                        if (iBlockDownloadTask == null) {
                            return;
                        }
                        Integer numR = f.r(f.this, blockStatus, iBlockDownloadTask);
                        if (numR != null && numR.intValue() != f.c(f.this).d()) {
                            f.y(f.this, i, numR.intValue());
                            if (zr7.e(f.c(f.this).d()) && f.c(f.this).g == DownloadConstants.ResourceType.MUSIC) {
                                f fVar = f.this;
                                f.q(fVar, i, true, f.c(fVar).y);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public void b(int i, long j) {
            synchronized (f.c(f.this)) {
                f.c(f.this).j += j;
                ContentValues contentValues = new ContentValues();
                contentValues.put(IntentUtil.DURATION, Long.valueOf(f.c(f.this).j));
                f.a(f.this).g(f.c(f.this).a, contentValues);
            }
        }

        @Override
        public void c(int i, long j, byte[] bArr, int i2, com.wandoujia.mtdownload.c cVar, long j2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            synchronized (f.c(f.this)) {
                try {
                    if (f.c(f.this).d() != 192) {
                        ProductionEnv.w(NativeAdPresenter.DOWNLOAD, "Receiver progress change, but task status is " + f.c(f.this).d());
                        return;
                    }
                    f.c(f.this).M = cVar;
                    if (f.c(f.this).x == null) {
                        f.c(f.this).r = j;
                        if (f.e(f.this) != null) {
                            tg4.f(f.e(f.this), bArr, 0, i2);
                        }
                    } else {
                        f.c(f.this).x.updateBlockInfo(i, j);
                        Iterator<DownloadBlockInfo> it2 = f.c(f.this).x.getBlocks().iterator();
                        long currentSize = 0;
                        while (it2.hasNext()) {
                            currentSize += it2.next().getCurrentSize();
                        }
                        f.c(f.this).r = currentSize;
                    }
                    if (this.b == 0) {
                        this.b = jElapsedRealtime;
                        this.a = j;
                    }
                    if (jElapsedRealtime - this.b >= f.z()[f.h(f.this)] || f.c(f.this).r == f.c(f.this).f) {
                        long j3 = j - this.a;
                        if (j2 > 0) {
                            j3 *= j2;
                        }
                        long j4 = jElapsedRealtime - this.b;
                        if (j3 > 0) {
                            f.j(f.this, 0);
                        }
                        long j5 = (j4 <= 0 || j3 <= 0) ? 0L : (j3 * 1000) / j4;
                        this.a = j;
                        this.b = jElapsedRealtime;
                        f.c(f.this).e(j5);
                    }
                    it1.b().e(f.c(f.this));
                    t03.a().b(i2);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if ((f.d(f.this) > 0 && jCurrentTimeMillis - f.d(f.this) > AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS) || f.c(f.this).r == f.c(f.this).f) {
                        ContentValues contentValues = new ContentValues();
                        if (f.c(f.this).x != null) {
                            contentValues.put("segment_config", f.c(f.this).x.toJson());
                        } else if (f.e(f.this) != null) {
                            contentValues.put("md5_state", j23.h(f.c(f.this).H));
                        }
                        contentValues.put("current_bytes", Long.valueOf(f.c(f.this).r));
                        contentValues.put("speed", Long.valueOf(f.c(f.this).c()));
                        contentValues.put("is_download_with_multi_thread", Integer.valueOf(f.c(f.this).L ? 1 : 0));
                        if (f.c(f.this).M != null) {
                            try {
                                contentValues.put("downloaded_sections", f.c(f.this).M.k());
                            } catch (JSONException unused) {
                            }
                        }
                        f.a(f.this).g(f.c(f.this).a, contentValues);
                        f.i(f.this, jCurrentTimeMillis);
                    } else if (f.d(f.this) == 0) {
                        f.i(f.this, jCurrentTimeMillis);
                    }
                    if (f.h(f.this) < f.z().length - 1) {
                        f fVar = f.this;
                        f.k(fVar, f.h(fVar) + 1);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public void d() {
            i("");
        }

        @Override
        public void e() {
            i(PhoenixApplication.z().getResources().getString(R.string.download_confirming_file_total_size));
        }

        @Override
        public String f(int i, String str) {
            String strB;
            synchronized (f.c(f.this)) {
                f.c(f.this).m = str;
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", f.c(f.this).m);
                f.a(f.this).g(f.c(f.this).a, contentValues);
                strB = f.c(f.this).b();
            }
            return strB;
        }

        @Override
        public void g(int i, long j) {
            synchronized (f.c(f.this)) {
                try {
                    if (f.c(f.this).f != j && !f.w(f.this)) {
                        f.c(f.this).f = j;
                        if (f.g(f.this) != null) {
                            f.g(f.this).a(f.c(f.this).a());
                        }
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(DownloadModel.TOTAL_BYTES, Long.valueOf(f.c(f.this).f));
                        if (f.c(f.this).x != null && f.c(f.this).x.getBlocks().size() == 1 && f.c(f.this).x.getBlocks().get(0).getEndPos() <= 0) {
                            f.c(f.this).x.getBlocks().get(0).setEndPos(j - 1);
                            contentValues.put("segment_config", f.c(f.this).x.toJson());
                        }
                        f.a(f.this).g(f.c(f.this).a, contentValues);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i("");
        }

        @Override
        public void h(int i) {
            i(js.b(R.string.download_creating_file, Integer.valueOf(i)));
        }

        public final void i(String str) {
            synchronized (f.c(f.this)) {
                f.c(f.this).e = str;
                ContentValues contentValues = new ContentValues();
                contentValues.put(PubnativeAsset.DESCRIPTION, f.c(f.this).e);
                f.a(f.this).g(f.c(f.this).a, contentValues);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            yj2.s(f.c(f.this).b());
        }
    }

    public static class c {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;
        public static final int[] d;

        static {
            int[] iArr = new int[NetworkStatusStub.NetworkStatus.values().length];
            d = iArr;
            try {
                iArr[NetworkStatusStub.NetworkStatus.NETWORK_NO_CONNECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[NetworkStatusStub.NetworkStatus.NETWORK_MOBILE_CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                d[NetworkStatusStub.NetworkStatus.NETWORK_USB_CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                d[NetworkStatusStub.NetworkStatus.NETWORK_WIFI_CONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IBlockDownloadTask.BlockStatus.values().length];
            c = iArr2;
            try {
                iArr2[IBlockDownloadTask.BlockStatus.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.QUEUED_FOR_WIFI_OR_USB.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.CRC_VERIFY_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.TOO_MANY_REDIRECTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.RESOLVE_REDIRECT_URL_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.EXCEED_MAX_RETRY_TIMES.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.DOWNLOAD_SIZE_UNKNOWN.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.DOWNLOADED_BYTES_OVERFLOW.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.FILE_NOT_FOUND.ordinal()] = 11;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.STORAGE_NOT_READY.ordinal()] = 12;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.INSUFFICIENT_STORAGE.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.FILE_ERROR.ordinal()] = 14;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.URL_NULL_ERROR.ordinal()] = 15;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.QUEUED_FOR_MEDIA.ordinal()] = 16;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.CONNECTION_TIMEOUT.ordinal()] = 17;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.INTERNET_NO_ACCESS.ordinal()] = 18;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.UMP_ERROR.ordinal()] = 19;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.HTTP_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                c[IBlockDownloadTask.BlockStatus.UNKNOWN_ERROR.ordinal()] = 21;
            } catch (NoSuchFieldError unused25) {
            }
            int[] iArr3 = new int[DownloadConstants.VerifyType.values().length];
            b = iArr3;
            try {
                iArr3[DownloadConstants.VerifyType.MD5.ordinal()] = 1;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                b[DownloadConstants.VerifyType.PF5.ordinal()] = 2;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr4 = new int[DownloadConstants.ResourceType.values().length];
            a = iArr4;
            try {
                iArr4[DownloadConstants.ResourceType.VIDEO_YOUTUBE.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                a[DownloadConstants.ResourceType.MUSIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    public class d implements InterfaceC0496f {
        public d() {
        }

        public d(f fVar, hu1 hu1Var) {
            this();
        }

        @Override
        public boolean a(String str) {
            f.p(f.this, new com.wandoujia.download.rpc.g(f.c(f.this)));
            return true;
        }

        @Override
        public boolean b(int i, IBlockDownloadTask.BlockStatus blockStatus, int i2) {
            if (!f.l(f.this, i2) || TextUtils.isEmpty(f.c(f.this).k)) {
                if (f.A(blockStatus) || f.v(f.this, i)) {
                    return false;
                }
                f.x(f.this, i);
                return true;
            }
            f fVar = f.this;
            int iF = f.f(fVar) + 1;
            f.j(fVar, iF);
            if (iF > f.t(f.this)) {
                return false;
            }
            f.b(f.this).execute(new g(f.this, null));
            return true;
        }

        @Override
        public void start() {
            a(null);
        }
    }

    public final class e extends TimerTask {
        public final int a;

        public e(int i) {
            this.a = i;
        }

        @Override
        public void run() {
            synchronized (f.c(f.this)) {
                int iD = f.c(f.this).d();
                if (iD != 299 && iD != 300 && iD != 193 && iD != 196 && iD != 197) {
                    f.m(f.this, this.a);
                }
            }
        }
    }

    public interface InterfaceC0496f {
        boolean a(String str);

        boolean b(int i, IBlockDownloadTask.BlockStatus blockStatus, int i2);

        void start();
    }

    public class g implements Runnable {
        public g() {
        }

        public g(f fVar, iu1 iu1Var) {
            this();
        }

        public final boolean a(String str, Format format) {
            if (format == null || !TextUtils.equals(str, format.getTag())) {
                return false;
            }
            f.c(f.this).b = format.getDownloadUrl();
            return true;
        }

        @Override
        public void run() {
            String extractorType;
            if (f.f(f.this) == 1 && x29.K(f.c(f.this).b, true)) {
                f.p(f.this, new com.wandoujia.download.rpc.g(f.c(f.this)));
                return;
            }
            String strS = f.s(f.this);
            if (TextUtils.isEmpty(strS)) {
                f.p(f.this, new com.wandoujia.download.rpc.g(f.c(f.this)));
                return;
            }
            VideoInfo videoInfoZ = PhoenixApplication.O().z(new com.snaptube.premium.extractor.a.C0416a(f.c(f.this).k, "download_retry").c(true).b("RETRY_FROM_FORBIDDEN").a());
            if (videoInfoZ != null) {
                extractorType = videoInfoZ.getExtractorType();
                Iterator<Format> it2 = videoInfoZ.getFormats().iterator();
                while (it2.hasNext()) {
                    try {
                        Format formatClone = it2.next().clone();
                        f.n(f.this, formatClone);
                        f.o(f.this, formatClone);
                        if (a(strS, formatClone)) {
                            break;
                        }
                    } catch (CloneNotSupportedException unused) {
                    }
                }
            } else {
                extractorType = null;
            }
            if (!TextUtils.isEmpty(extractorType)) {
                f.c(f.this).N = extractorType;
            }
            f.p(f.this, new com.wandoujia.download.rpc.g(f.c(f.this)));
        }
    }

    public class h implements InterfaceC0496f {

        public class a implements Callable {
            public a() {
            }

            public Void a() {
                f.b(f.this).execute(new g(f.this, null));
                return null;
            }

            @Override
            public Object call() {
                return a();
            }
        }

        public h() {
        }

        public h(f fVar, ju1 ju1Var) {
            this();
        }

        @Override
        public boolean a(String str) {
            f.p(f.this, new com.wandoujia.download.rpc.g(f.c(f.this)));
            return true;
        }

        @Override
        public boolean b(int i, IBlockDownloadTask.BlockStatus blockStatus, int i2) {
            if (!f.l(f.this, i2) || TextUtils.isEmpty(f.c(f.this).k)) {
                if (f.A(blockStatus) || f.v(f.this, i)) {
                    return false;
                }
                f.x(f.this, i);
                return true;
            }
            f fVar = f.this;
            int iF = f.f(fVar) + 1;
            f.j(fVar, iF);
            if (iF > f.t(f.this)) {
                return false;
            }
            rx.c.M(new a()).s(GlobalConfig.getDownloadRetryDelaySeconds(), TimeUnit.SECONDS).w0(nf5.a());
            return true;
        }

        @Override
        public void start() {
            a(null);
        }
    }

    public f(Context context, com.wandoujia.download.rpc.h hVar, sr1 sr1Var, ExecutorService executorService, yu yuVar, vu1 vu1Var, rg4 rg4Var, com.wandoujia.download.rpc.b bVar, NetworkStatusStub networkStatusStub, yg7 yg7Var) {
        this.j = context;
        this.a = hVar;
        this.i = sr1Var;
        this.f = executorService;
        this.g = yuVar;
        this.k = vu1Var;
        this.l = rg4Var;
        this.f496o = bVar;
        this.m = networkStatusStub;
        this.n = yg7Var;
        if (Z()) {
            if (hVar.H == null) {
                hVar.H = new MD5State();
            }
            this.r = new MD5(context, hVar.H);
        } else {
            this.r = null;
        }
        if (c.a[hVar.g.ordinal()] != 1) {
            this.u = new d(this, null);
        } else {
            this.u = new h(this, null);
        }
    }

    public static boolean A(IBlockDownloadTask.BlockStatus blockStatus) {
        return V(blockStatus);
    }

    public static void E(String str) {
        try {
            Class<?> cls = Class.forName("android.os.FileUtils");
            Class<?> cls2 = Integer.TYPE;
            cls.getMethod("setPermissions", String.class, cls2, cls2, cls2).invoke(cls, str, 420, -1, -1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean V(IBlockDownloadTask.BlockStatus blockStatus) {
        return blockStatus == IBlockDownloadTask.BlockStatus.CRC_VERIFY_ERROR || blockStatus == IBlockDownloadTask.BlockStatus.TOO_MANY_REDIRECTS || blockStatus == IBlockDownloadTask.BlockStatus.EXCEED_MAX_RETRY_TIMES || blockStatus == IBlockDownloadTask.BlockStatus.DOWNLOAD_SIZE_UNKNOWN || blockStatus == IBlockDownloadTask.BlockStatus.HTTP_ERROR || blockStatus == IBlockDownloadTask.BlockStatus.URL_NULL_ERROR || blockStatus == IBlockDownloadTask.BlockStatus.INTERNET_NO_ACCESS || blockStatus == IBlockDownloadTask.BlockStatus.UNKNOWN_ERROR;
    }

    public static boolean W(String str) {
        return !TextUtils.isEmpty(str) && new File(str).exists();
    }

    public static com.wandoujia.download.rpc.b a(f fVar) {
        return fVar.f496o;
    }

    public static ExecutorService b(f fVar) {
        return fVar.f;
    }

    public static com.wandoujia.download.rpc.h c(f fVar) {
        return fVar.a;
    }

    public static long d(f fVar) {
        return fVar.s;
    }

    public static MD5 e(f fVar) {
        return fVar.r;
    }

    public static int f(f fVar) {
        return fVar.e;
    }

    public static yg7 g(f fVar) {
        return fVar.n;
    }

    public static int h(f fVar) {
        return fVar.b;
    }

    public static void i(f fVar, long j) {
        fVar.s = j;
    }

    public static void j(f fVar, int i) {
        fVar.e = i;
    }

    public static void k(f fVar, int i) {
        fVar.b = i;
    }

    public static boolean l(f fVar, int i) {
        return fVar.B(i);
    }

    public static boolean m(f fVar, int i) {
        return fVar.F(i);
    }

    public static boolean n(f fVar, Format format) {
        return fVar.G(format);
    }

    public static boolean o(f fVar, Format format) {
        return fVar.H(format);
    }

    public static boolean p(f fVar, com.wandoujia.download.rpc.g gVar) {
        return fVar.J(gVar);
    }

    public static void q(f fVar, int i, boolean z, long j) {
        fVar.L(i, z, j);
    }

    public static Integer r(f fVar, IBlockDownloadTask.BlockStatus blockStatus, IBlockDownloadTask iBlockDownloadTask) {
        return fVar.O(blockStatus, iBlockDownloadTask);
    }

    public static String s(f fVar) {
        return fVar.P();
    }

    public static int t(f fVar) {
        return fVar.R();
    }

    public static boolean u(f fVar, int i, IBlockDownloadTask.BlockStatus blockStatus, int i2) {
        return fVar.T(i, blockStatus, i2);
    }

    public static boolean v(f fVar, int i) {
        return fVar.U(i);
    }

    public static boolean w(f fVar) {
        return fVar.X();
    }

    public static void x(f fVar, int i) {
        fVar.e0(i);
    }

    public static void y(f fVar, int i, int i2) {
        fVar.j0(i, i2);
    }

    public static int[] z() {
        return v;
    }

    public final boolean B(int i) {
        return i == 403 || (i >= 600 && i <= 699);
    }

    public boolean C() {
        synchronized (this.a) {
            try {
                if (this.a.d() != 299 && this.a.d() != 300) {
                    h0();
                    if (!this.f496o.f(this.a.a)) {
                        return false;
                    }
                    this.i.a(this.a.a);
                    if (!zr7.c(this.a.d())) {
                        this.a.f(299);
                        it1.b().f(this.a);
                    }
                    this.a.f(TrackConstant.SCAN_MAX_COUNT);
                    it1.b().f(this.a);
                    if (TextUtils.isEmpty(this.a.b())) {
                        return true;
                    }
                    y48.k(new b());
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void D(int i) {
        TimerTask timerTask;
        synchronized (this.h) {
            timerTask = (TimerTask) this.h.remove(Integer.valueOf(i));
        }
        if (timerTask != null) {
            timerTask.cancel();
        }
    }

    public final boolean F(int i) {
        DownloadConfigInfo downloadConfigInfo = this.a.x;
        return downloadConfigInfo == null ? J(new com.wandoujia.download.rpc.g(this.a)) : I(downloadConfigInfo, i);
    }

    public final boolean G(Format format) {
        YoutubeCodec originCodec;
        if (format == null || !YoutubeCodec.isYoutubeHDTag(format.getTag()) || (originCodec = YoutubeCodec.getOriginCodec(format.getTag())) == null) {
            return false;
        }
        if9.a(originCodec, format);
        return true;
    }

    public final boolean H(Format format) {
        YoutubeCodec originCodec;
        if (format == null || !YoutubeCodec.isYoutubeWebMTag(format.getTag()) || (originCodec = YoutubeCodec.getOriginCodec(format.getTag())) == null) {
            return false;
        }
        if9.a(originCodec, format);
        return true;
    }

    public final boolean I(DownloadConfigInfo downloadConfigInfo, int i) {
        if (downloadConfigInfo.getBackupUrls() == null || downloadConfigInfo.getBackupUrls().isEmpty() || downloadConfigInfo.getBlocks() == null || downloadConfigInfo.getBlocks().isEmpty()) {
            return false;
        }
        synchronized (this.a) {
            try {
                if (this.a.d() != 299 && this.a.d() != 300) {
                    DownloadBlockInfo downloadBlockInfo = downloadConfigInfo.getBlocks().get(i);
                    if (!tu1.b(downloadBlockInfo)) {
                        String strA = gz1.a(this.a.x.getBackupUrls().get(downloadBlockInfo.getUsedUrlIndex()));
                        long j = this.a.t;
                        J(new com.wandoujia.download.rpc.g(this.a, strA, i, downloadBlockInfo.getStartPos(), downloadBlockInfo.getEndPos(), downloadBlockInfo.getCurrentSize(), downloadConfigInfo.getSegInfos(), downloadConfigInfo.getSegSize(), j > 0 ? j / downloadConfigInfo.getSegSize() : -1L, downloadConfigInfo.getBlocks().size()));
                    }
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean J(com.wandoujia.download.rpc.g gVar) {
        com.wandoujia.mtdownload.c cVar;
        IBlockDownloadTask iBlockDownloadTask;
        String strN;
        synchronized (this.a) {
            try {
                if (this.a.d() != 299 && this.a.d() != 300) {
                    if (ig4.l(gVar.b)) {
                        i iVar = new i(this.j, gVar);
                        this.a.L = i0(gVar);
                        iBlockDownloadTask = iVar;
                    } else if (wc1.d(gVar.b)) {
                        com.wandoujia.download.rpc.a aVar = new com.wandoujia.download.rpc.a(this.j, gVar);
                        this.a.L = i0(gVar);
                        iBlockDownloadTask = aVar;
                    } else if (bg8.d(gVar.b)) {
                        n nVar = new n(this.j, gVar, this.f);
                        com.wandoujia.download.rpc.h hVar = this.a;
                        if (hVar.r > 0 && (cVar = hVar.M) != null) {
                            nVar.j(cVar);
                        }
                        this.a.L = false;
                        iBlockDownloadTask = nVar;
                    } else if (i0(gVar)) {
                        j jVar = new j(this.j, this.m, this.g, Q(gVar), Y() && Config.U6());
                        com.wandoujia.download.rpc.h hVar2 = this.a;
                        hVar2.L = true;
                        iBlockDownloadTask = jVar;
                        if (hVar2.r > 0) {
                            jVar.E(hVar2.f, hVar2.M);
                            iBlockDownloadTask = jVar;
                        }
                    } else {
                        SingleThreadBlockDownloadTask singleThreadBlockDownloadTask = new SingleThreadBlockDownloadTask(this.j, gVar, this.m, this.f);
                        this.a.L = false;
                        iBlockDownloadTask = singleThreadBlockDownloadTask;
                    }
                    if (this.q == null) {
                        this.q = new HashMap();
                    }
                    if (!TextUtils.isEmpty(gVar.i)) {
                        this.q.put("User-Agent", Arrays.asList(gVar.i));
                    }
                    if (!this.q.containsKey(HttpHeader.KEY_COOKIE)) {
                        try {
                            strN = N(gVar.b);
                        } catch (Throwable th) {
                            ProductionEnv.throwExceptForDebugging(th);
                            strN = null;
                        }
                        if (!TextUtils.isEmpty(strN)) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(strN);
                            this.q.put(HttpHeader.KEY_COOKIE, arrayList);
                        }
                    }
                    iBlockDownloadTask.f(this.q);
                    this.p.put(Integer.valueOf(gVar.f), iBlockDownloadTask);
                    iBlockDownloadTask.d(gVar, this.t);
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void K(DownloadConfigInfo downloadConfigInfo) {
        List<DownloadUrlInfo> backupUrls = downloadConfigInfo.getBackupUrls();
        if (backupUrls == null || backupUrls.isEmpty()) {
            return;
        }
        List<DownloadBlockInfo> blocks = downloadConfigInfo.getBlocks();
        synchronized (this.a) {
            if (this.a.d() != 299 && this.a.d() != 300) {
                synchronized (this.f) {
                    try {
                        Iterator<DownloadBlockInfo> it2 = blocks.iterator();
                        while (it2.hasNext()) {
                            I(downloadConfigInfo, it2.next().getBlockId());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public final void L(int i, boolean z, long j) {
        DownloadBlockInfo downloadBlockInfo;
        DownloadConfigInfo downloadConfigInfo = this.a.x;
        if (downloadConfigInfo == null || downloadConfigInfo.getBlocks() == null || (downloadBlockInfo = this.a.x.getBlocks().get(i)) == null) {
            return;
        }
        Context context = this.j;
        com.wandoujia.download.rpc.h hVar = this.a;
        cq1.a(context, hVar.w[0], hVar.x.getBackupUrls().get(downloadBlockInfo.getUsedUrlIndex()).getUrl(), z, j);
    }

    public final ContentValues M() {
        ContentValues contentValues = new ContentValues();
        com.wandoujia.download.rpc.h hVar = this.a;
        hVar.r = 0L;
        if (!TextUtils.isEmpty(hVar.z)) {
            com.wandoujia.download.rpc.h hVar2 = this.a;
            hVar2.z = hVar2.z.replace(".", "_");
        }
        if (!TextUtils.isEmpty(this.a.z) && !this.a.z.endsWith("/")) {
            StringBuilder sb = new StringBuilder();
            com.wandoujia.download.rpc.h hVar3 = this.a;
            sb.append(hVar3.z);
            sb.append("/");
            hVar3.z = sb.toString();
            File file = new File(this.a.z);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        yj2.s(this.a.m);
        this.a.f(PsExtractor.PRIVATE_STREAM_1);
        if (Z()) {
            this.a.H = new MD5State();
            this.r = new MD5(this.j, this.a.H);
        }
        contentValues.put("current_bytes", Long.valueOf(this.a.r));
        contentValues.put("md5_state", j23.h(this.a.H));
        contentValues.put("status", Integer.valueOf(this.a.d()));
        contentValues.put("_data", this.a.m);
        contentValues.put("filename", this.a.z);
        DownloadConfigInfo downloadConfigInfo = this.a.x;
        if (downloadConfigInfo != null) {
            Iterator<DownloadBlockInfo> it2 = downloadConfigInfo.getBlocks().iterator();
            while (it2.hasNext()) {
                this.a.x.updateBlockInfo(it2.next().getBlockId(), 0L);
            }
            contentValues.put("segment_config", this.a.x.toJson());
        }
        return contentValues;
    }

    public final String N(String str) {
        CookieSyncManager.createInstance(GlobalConfig.getAppContext()).startSync();
        return CookieManager.getInstance().getCookie(str);
    }

    public final Integer O(IBlockDownloadTask.BlockStatus blockStatus, IBlockDownloadTask iBlockDownloadTask) {
        IBlockDownloadTask.BlockStatus status = IBlockDownloadTask.BlockStatus.SUCCESS;
        synchronized (this.p) {
            try {
                for (Map.Entry entry : this.p.entrySet()) {
                    if (((Integer) entry.getKey()).intValue() != iBlockDownloadTask.l() && status.getPriority() < ((IBlockDownloadTask) entry.getValue()).getStatus().getPriority()) {
                        status = ((IBlockDownloadTask) entry.getValue()).getStatus();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (blockStatus.getPriority() < status.getPriority()) {
            return null;
        }
        switch (c.c[blockStatus.ordinal()]) {
            case 1:
                return 200;
            case 2:
                return 191;
            case 3:
                return Integer.valueOf(PsExtractor.AUDIO_STREAM);
            case 4:
                return 196;
            case 5:
                return 474;
            case 6:
                return 497;
            case 7:
                return 479;
            case 8:
                return 481;
            case 9:
                return 480;
            case 10:
                return 482;
            case 11:
                return 476;
            case 12:
                return 499;
            case 13:
                return 498;
            case 14:
                return 492;
            case 15:
                return 473;
            case 16:
                return 197;
            case 17:
                return 3001;
            case 18:
                return Integer.valueOf(AuthApiStatusCodes.AUTH_API_SERVER_ERROR);
            case 19:
                return Integer.valueOf(iBlockDownloadTask.c());
            case 20:
                if (iBlockDownloadTask.c() >= 400 && iBlockDownloadTask.c() <= 424) {
                    return Integer.valueOf(iBlockDownloadTask.c());
                }
                if (iBlockDownloadTask.c() >= 500) {
                    return Integer.valueOf(PglCryptUtils.LOAD_SO_FAILED);
                }
                if (iBlockDownloadTask.c() == 429) {
                    return 429;
                }
                break;
        }
        return 491;
    }

    public final String P() {
        try {
            return ((yv3) j23.b(this.a.i, yv3.class)).y(SnaptubeAdModel.KEY_FORMAT).m();
        } catch (Throwable unused) {
            return null;
        }
    }

    public final long Q(com.wandoujia.download.rpc.g gVar) {
        String str;
        int videoDownloadMaxPieceSize;
        com.wandoujia.download.rpc.h hVar = this.a;
        if (hVar != null && (str = hVar.k) != null) {
            if (gVar.n == DownloadConstants.ResourceType.MUSIC && tu1.c(str, GlobalConfig.getAudioSupportMaxPieceSizeRegex())) {
                videoDownloadMaxPieceSize = GlobalConfig.getAudioDownloadMaxPieceSize();
            } else {
                DownloadConstants.ResourceType resourceType = gVar.n;
                if ((resourceType == DownloadConstants.ResourceType.VIDEO_YOUTUBE || resourceType == DownloadConstants.ResourceType.VIDEO) && tu1.c(this.a.k, GlobalConfig.getVideoSupportMaxPieceSizeRegex())) {
                    videoDownloadMaxPieceSize = GlobalConfig.getVideoDownloadMaxPieceSize();
                }
            }
            return videoDownloadMaxPieceSize;
        }
        return 0L;
    }

    public final int R() {
        com.wandoujia.download.rpc.h hVar = this.a;
        if (hVar != null && hVar.L) {
            return GlobalConfig.getMultiThreadTaskMaxDownloadRetryTimes();
        }
        return 3;
    }

    public final int S(com.wandoujia.download.rpc.h hVar) throws Throwable {
        if (bg8.d(hVar.b)) {
            return new File(hVar.m).length() > 0 ? 200 : 486;
        }
        if (ig4.k(hVar.m) || ig4.l(hVar.b) || wc1.d(hVar.b)) {
            return new File(hVar.m).length() > 0 ? 200 : 486;
        }
        if (!TextUtils.isEmpty(hVar.m) && TextUtils.isEmpty(hVar.n) && hVar.f != 0 && new File(hVar.m).length() != hVar.f) {
            return 486;
        }
        if (hVar.u != null && !TextUtils.isEmpty(hVar.v) && TextUtils.isEmpty(hVar.n)) {
            int i = c.b[hVar.u.ordinal()];
            if (i == 1) {
                String str = hVar.s;
                if (str != null && !hVar.v.equals(str)) {
                    return 1000;
                }
            } else if (i == 2) {
                try {
                    String strB = yq5.b(this.j, hVar.m);
                    if (!TextUtils.isEmpty(strB) && !TextUtils.isEmpty(hVar.v) && !hVar.v.equals(strB)) {
                        return 1001;
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }
        vu1 vu1Var = this.k;
        return (vu1Var == null || vu1Var.a(hVar)) ? 200 : 485;
    }

    public final boolean T(int i, IBlockDownloadTask.BlockStatus blockStatus, int i2) {
        if (blockStatus == IBlockDownloadTask.BlockStatus.STORAGE_NOT_READY || blockStatus == IBlockDownloadTask.BlockStatus.INSUFFICIENT_STORAGE || blockStatus == IBlockDownloadTask.BlockStatus.FILE_ERROR || blockStatus == IBlockDownloadTask.BlockStatus.FILE_NOT_FOUND) {
            return false;
        }
        return this.u.b(i, blockStatus, i2);
    }

    public final boolean U(int i) {
        boolean z;
        synchronized (this.c) {
            int i2 = this.c.get(i, 0) + 1;
            this.c.put(i, i2);
            z = i2 > R();
        }
        return z;
    }

    public final boolean X() {
        DownloadConfigInfo downloadConfigInfo = this.a.x;
        return downloadConfigInfo != null && downloadConfigInfo.getBlocks().size() > 1;
    }

    public final boolean Y() {
        String str;
        com.wandoujia.download.rpc.h hVar = this.a;
        if (hVar == null || (str = hVar.k) == null) {
            return false;
        }
        return if9.D(str);
    }

    public final boolean Z() {
        rg4 rg4Var = this.l;
        return (rg4Var != null && rg4Var.a(this.a)) || this.a.u == DownloadConstants.VerifyType.MD5;
    }

    public boolean a0(DownloadConstants.PauseReason pauseReason) {
        synchronized (this.a) {
            try {
                if (this.a.d() != 189 && this.a.d() != 191 && this.a.d() != 192) {
                    return false;
                }
                h0();
                this.a.f(pauseReason.getStatus());
                ContentValues contentValues = new ContentValues();
                DownloadConfigInfo downloadConfigInfo = this.a.x;
                if (downloadConfigInfo != null) {
                    contentValues.put("segment_config", downloadConfigInfo.toJson());
                }
                contentValues.put("status", Integer.valueOf(pauseReason.getStatus()));
                contentValues.put("current_bytes", Long.valueOf(this.a.r));
                contentValues.put("md5_state", j23.h(this.a.H));
                if (!this.f496o.g(this.a.a, contentValues)) {
                    return false;
                }
                this.i.a(this.a.a);
                it1.b().f(this.a);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b0() {
        return this.f496o.g(this.a.a, M());
    }

    public boolean c0() {
        synchronized (this.a) {
            if (!W(this.a.b())) {
                b0();
                g0();
                return true;
            }
            try {
                DownloadConfigInfo downloadConfigInfo = this.a.x;
                if (downloadConfigInfo == null) {
                    J(new com.wandoujia.download.rpc.g(this.a));
                } else {
                    K(downloadConfigInfo);
                }
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public boolean d0(String str) {
        synchronized (this.a) {
            try {
                if (this.a.d() != 299 && this.a.d() != 300 && this.a.d() != 192 && this.a.d() != 189 && this.a.d() != 191) {
                    if (!TextUtils.isEmpty(str) && !str.equals(this.a.b)) {
                        ContentValues contentValues = new ContentValues();
                        com.wandoujia.download.rpc.h hVar = this.a;
                        hVar.f = 0L;
                        hVar.b = str;
                        if (TextUtils.isEmpty(hVar.n)) {
                            com.wandoujia.download.rpc.h hVar2 = this.a;
                            hVar2.n = hVar2.b;
                            hVar2.f498o = 1;
                        } else {
                            com.wandoujia.download.rpc.h hVar3 = this.a;
                            if (hVar3.n.endsWith(hVar3.b)) {
                                this.a.f498o++;
                                return false;
                            }
                            com.wandoujia.download.rpc.h hVar4 = this.a;
                            hVar4.n = TextUtils.join(RequestTimeModel.DELIMITER, new String[]{hVar4.n, hVar4.b});
                            this.a.f498o = 1;
                        }
                        contentValues.put(DownloadModel.TOTAL_BYTES, Long.valueOf(this.a.f));
                        contentValues.put("uri", this.a.b);
                        contentValues.put("retried_urls", this.a.n);
                        contentValues.put("last_url_retried_times", Integer.valueOf(this.a.f498o));
                        this.f496o.g(this.a.a, contentValues);
                        b0();
                    } else if (zr7.d(this.a.d()) && !W(this.a.b())) {
                        b0();
                    } else if (zr7.e(this.a.d()) && !W(this.a.m)) {
                        b0();
                    }
                    return this.u.a(str);
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e0(int i) {
        D(i);
        int i2 = this.c.get(i, 0);
        Timer timer = new Timer();
        e eVar = new e(i);
        timer.schedule(eVar, ((long) this.d[i2 - 1]) * 500);
        synchronized (this.h) {
            this.h.put(Integer.valueOf(i), eVar);
        }
    }

    public void f0(Map map) {
        this.q = map;
    }

    public void g0() {
        if (this.a.d() != 189) {
            return;
        }
        this.u.start();
    }

    public final void h0() {
        LinkedList<IBlockDownloadTask> linkedList = new LinkedList();
        synchronized (this.p) {
            linkedList.addAll(this.p.values());
            this.p.clear();
        }
        for (IBlockDownloadTask iBlockDownloadTask : linkedList) {
            iBlockDownloadTask.stop();
            D(iBlockDownloadTask.l());
        }
    }

    public final boolean i0(com.wandoujia.download.rpc.g gVar) {
        String str;
        DownloadConstants.ResourceType resourceType = gVar.n;
        if (resourceType == DownloadConstants.ResourceType.VIDEO_YOUTUBE) {
            return true;
        }
        com.wandoujia.download.rpc.h hVar = this.a;
        if (hVar != null && (str = hVar.k) != null) {
            if (resourceType == DownloadConstants.ResourceType.MUSIC && tu1.c(str, Config.o())) {
                return true;
            }
            if (gVar.n == DownloadConstants.ResourceType.VIDEO && tu1.c(this.a.k, Config.k2())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005e  */
    public final void j0(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        if (i2 == 189) {
            this.a.f(i2);
        } else if (i2 == 200) {
            yj2.W(this.a.b(), this.a.m);
            E(this.a.m);
            MD5 md5 = this.r;
            if (md5 != null) {
                this.a.s = tg4.b(md5);
                contentValues.put("md5_checksum", this.a.s);
            }
            com.wandoujia.download.rpc.h hVar = this.a;
            hVar.f(S(hVar));
        } else if (i2 == 191) {
            this.a.f(i2);
        } else if (i2 != 192) {
            h0();
            this.a.f(i2);
        } else {
            D(i);
            this.s = 0L;
            this.a.f(i2);
        }
        contentValues.put("status", Integer.valueOf(this.a.d()));
        DownloadConfigInfo downloadConfigInfo = this.a.x;
        if (downloadConfigInfo != null) {
            contentValues.put("segment_config", downloadConfigInfo.toJson());
        }
        contentValues.put("is_download_with_multi_thread", Integer.valueOf(this.a.L ? 1 : 0));
        com.wandoujia.mtdownload.c cVar = this.a.M;
        if (cVar != null) {
            try {
                contentValues.put("downloaded_sections", cVar.k());
            } catch (JSONException unused) {
            }
        }
        this.f496o.g(this.a.a, contentValues);
        if (this.a.d() != 189 && this.a.d() != 191 && this.a.d() != 192) {
            this.i.a(this.a.a);
        }
        it1.b().f(this.a);
    }
}
