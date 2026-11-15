package com.cloud.hisavana.sdk;

import android.content.res.AssetManager;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.C0520g0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.inapp.CachedAdInfos;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultDataDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.DefaultResponse;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.google.gson.reflect.TypeToken;
import defpackage.c74;
import defpackage.dnd;
import defpackage.dv3;
import defpackage.e74;
import defpackage.el0;
import defpackage.ikd;
import defpackage.ly0;
import defpackage.md8;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.o9;
import defpackage.p9;
import defpackage.r6;
import defpackage.s74;
import defpackage.ul4;
import defpackage.uva;
import defpackage.vl4;
import defpackage.wh1;
import defpackage.wzc;
import defpackage.xh5;
import defpackage.y45;
import defpackage.y71;
import defpackage.yu3;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;
import okhttp3.Headers;
import org.mozilla.classfile.ByteCode;

public final class C0520g0 {
    public static final C0520g0 a = new C0520g0();
    public static long b = 86400000;
    public static AtomicBoolean c = new AtomicBoolean(true);
    public static AtomicInteger d = new AtomicInteger(-1);
    public static final String e = "https://transsion-eagllwin-material-static-test.oss-ap-southeast-1.aliyuncs.com/adInternal/json/" + r6.b + '_' + md8.l() + ".txt";
    public static final String f = "https://material-static-oss.eagllwin.com/adInternal/json/" + r6.b + '_' + md8.l() + ".txt";

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @nt1(c = "com.cloud.hisavana.sdk.manager.DefaultAdManager", f = "DefaultAdManager.kt", l = {373}, m = "downloadDefaultAdMaterial")
    public static final class a extends ContinuationImpl {
        Object a;
        Object b;
        Object c;
        int e;

        public a(wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return C0520g0.this.g(this);
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/g0$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class b extends TypeToken<List<? extends AdsDTO>> {
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/Function1;", "Lzfb;", "resume", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Le74;)V"}, k = 3, mv = {1, 9, 0})
    public static final class c extends Lambda implements e74 {
        final String a;
        final List<AdsDTO> b;
        final AtomicInteger c;

        @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V"}, k = 3, mv = {1, 9, 0})
        public static final class a extends Lambda implements c74 {
            final AtomicInteger a;
            final String b;
            final e74 c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(AtomicInteger atomicInteger, String str, e74 e74Var) {
                super(0);
                this.a = atomicInteger;
                this.b = str;
                this.c = e74Var;
            }

            public final void a() {
                if (this.a.get() == 0) {
                    l0.a.e(this.b);
                }
                this.c.invoke(zfb.a);
            }

            @Override
            public Object invoke() {
                a();
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(String str, List<? extends AdsDTO> list, AtomicInteger atomicInteger) {
            super(1);
            this.a = str;
            this.b = list;
            this.c = atomicInteger;
        }

        public final void a(e74 e74Var) {
            y45.j(e74Var, "resume");
            k0 k0Var = k0.a;
            String str = this.a;
            dnd dndVarA = k0Var.a(this.b);
            AtomicInteger atomicInteger = this.c;
            k0Var.f(str, dndVarA, atomicInteger, new a(atomicInteger, this.a, e74Var));
        }

        @Override
        public Object invoke(Object obj) {
            a((e74) obj);
            return zfb.a;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @nt1(c = "com.cloud.hisavana.sdk.manager.DefaultAdManager", f = "DefaultAdManager.kt", l = {ByteCode.ATHROW}, m = "requestDefaultData")
    public static final class d extends ContinuationImpl {
        Object a;
        int c;

        public d(wh1<? super d> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return C0520g0.this.r(this);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/Function1;", "Lzfb;", "resume", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Le74;)V"}, k = 3, mv = {1, 9, 0})
    public static final class e extends Lambda implements e74 {
        final String a;
        final RequestParams b;
        final String c;

        public static final class a extends StringCallback {
            public final String c;
            public final RequestParams d;
            public final String e;
            public final e74 f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, RequestParams requestParams, String str2, e74 e74Var) {
                super(false);
                this.c = str;
                this.d = requestParams;
                this.e = str2;
                this.f = e74Var;
            }

            @Override
            public void l(Headers headers) {
                super.l(headers);
            }

            @Override
            public void x(int i, String str, Throwable th) {
                String message;
                if (r6.p()) {
                    String str2 = "----- full url = " + this.c + " \n----- postBodyString = " + this.d.getPostBody() + '}';
                    ikd ikdVarB = ikd.b();
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(" \n ----- status code =  ");
                    sb.append(i);
                    sb.append("\n ----- error message =  + ");
                    if (th == null || (message = th.getMessage()) == null) {
                        message = "";
                    }
                    sb.append(message);
                    sb.append(" ----- response = ");
                    sb.append(str);
                    ikdVarB.w("DefaultAdManager", sb.toString());
                }
                AthenaTracker.Q(this.e, i);
                this.f.invoke(zfb.a);
            }

            @Override
            public void y(int i, String str) {
                if (r6.p()) {
                    String str2 = "----- full url = " + this.c + " \n----- postBodyString = " + this.d.getPostBody() + '}';
                    ikd.b().w("DefaultAdManager", str2 + " \n ----- status code =  " + i + "\n ----- response = " + str);
                }
                AthenaTracker.Q(this.e, C0520g0.a.d(i, str));
                this.f.invoke(zfb.a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, RequestParams requestParams, String str2) {
            super(1);
            this.a = str;
            this.b = requestParams;
            this.c = str2;
        }

        public final void a(e74 e74Var) {
            y45.j(e74Var, "resume");
            HttpRequest httpRequest = HttpRequest.a;
            String str = this.a;
            RequestParams requestParams = this.b;
            httpRequest.h(str, requestParams, new a(str, requestParams, this.c, e74Var));
        }

        @Override
        public Object invoke(Object obj) {
            a((e74) obj);
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.DefaultAdManager$requestDefaultDataByNet$1", f = "DefaultAdManager.kt", l = {127, 128}, m = "invokeSuspend")
    public static final class f extends SuspendLambda implements s74 {
        int a;

        public f(wh1<? super f> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((f) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new f(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.a;
            try {
                if (i != 0) {
                    if (i == 1) {
                        kotlin.c.b(obj);
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kotlin.c.b(obj);
                    }
                    C0520g0.d.set(0);
                    return zfb.a;
                }
                kotlin.c.b(obj);
                CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
                if ((commonConfigData != null ? y45.e(commonConfigData.getIsRequestDefaultAdOnNetChange(), mk0.a(false)) : false) || !C0520g0.c.get() || !C0520g0.d.compareAndSet(0, 1)) {
                    return zfb.a;
                }
                C0520g0 c0520g0 = C0520g0.a;
                this.a = 1;
                if (c0520g0.r(this) == objF) {
                    return objF;
                }
                C0520g0 c0520g1 = C0520g0.a;
                this.a = 2;
                if (c0520g1.g(this) == objF) {
                    return objF;
                }
                C0520g0.d.set(0);
                return zfb.a;
            } catch (Throwable th) {
                C0520g0.d.set(0);
                throw th;
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.DefaultAdManager$setupDefaultAdOperations$1", f = "DefaultAdManager.kt", l = {112, 113}, m = "invokeSuspend")
    public static final class g extends SuspendLambda implements s74 {
        int a;
        final long b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(long j, wh1<? super g> wh1Var) {
            super(2, wh1Var);
            this.b = j;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((g) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new g(this.b, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.a;
            try {
                if (i != 0) {
                    if (i == 1) {
                        kotlin.c.b(obj);
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kotlin.c.b(obj);
                    }
                    C0520g0.d.set(0);
                    return zfb.a;
                }
                kotlin.c.b(obj);
                boolean zC = o9.e().c("default_file_save_finished");
                int iG = o9.e().g(String.valueOf(this.b), 0);
                long jH = o9.e().h("default_local_version");
                ikd.b().d("DefaultAdManager", "defaultVersion is " + this.b + ",  local version is " + jH + " , times is " + iG);
                long j = this.b;
                if (j > 0 && jH < j && iG < 3) {
                    C0520g0 c0520g0 = C0520g0.a;
                    if (c0520g0.E()) {
                        DefaultDataDTO defaultDataDTOC = c0520g0.C();
                        if (defaultDataDTOC != null) {
                            c0520g0.m(defaultDataDTOC, true);
                        }
                        k0.a.b();
                    }
                } else if (!zC) {
                    k0.a.b();
                }
                C0520g0 c0520g1 = C0520g0.a;
                this.a = 1;
                if (c0520g1.r(this) == objF) {
                    return objF;
                }
                C0520g0 c0520g2 = C0520g0.a;
                this.a = 2;
                if (c0520g2.g(this) == objF) {
                    return objF;
                }
                C0520g0.d.set(0);
                return zfb.a;
            } catch (Throwable th) {
                C0520g0.d.set(0);
                throw th;
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.DefaultAdManager$updateCreativeShowTimes$1", f = "DefaultAdManager.kt", l = {}, m = "invokeSuspend")
    public static final class h extends SuspendLambda implements s74 {
        int a;
        final String b;
        final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, String str2, wh1<? super h> wh1Var) {
            super(2, wh1Var);
            this.b = str;
            this.c = str2;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((h) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new h(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            l0.a.o(this.b, this.c);
            return zfb.a;
        }
    }

    public static final void l(xh5 xh5Var, CachedAdInfos cachedAdInfos) {
        y45.j(xh5Var, "$listener");
        y45.j(cachedAdInfos, "$cachedAdInfos");
        xh5Var.a(cachedAdInfos.getAdsDTOList(), cachedAdInfos.getAdStatusStr());
    }

    public static final void o(String str) {
        l0 l0Var = l0.a;
        y45.g(str);
        l0Var.n(str);
    }

    public static final void u(int i, String str, int i2, boolean z, int i3, ConcurrentHashMap concurrentHashMap, final xh5 xh5Var) {
        y45.j(str, "$codeSeatId");
        y45.j(xh5Var, "$listener");
        final CachedAdInfos cachedAdInfosA = l0.a.a(i, str, i2, z, i3, concurrentHashMap);
        HSScopeHelper.a.j(new Runnable() {
            @Override
            public final void run() {
                C0520g0.l(xh5Var, cachedAdInfosA);
            }
        });
    }

    public final void A() {
        HttpRequest.a.b(new LruCleanCallBack() {
            @Override
            public final void onCallBack(String str) {
                C0520g0.o(str);
            }
        });
    }

    public final boolean B() {
        return c.get();
    }

    public final DefaultDataDTO C() {
        StringBuilder sb = new StringBuilder();
        sb.append(yu3.b(ul4.a()));
        String str = File.separator;
        sb.append(str);
        sb.append(x());
        sb.append(str);
        sb.append(r6.b);
        sb.append(str);
        sb.append("default_ad_data.txt");
        String string = sb.toString();
        ikd.b().d("DefaultAdManager", "default_ad_data path is " + string);
        File file = new File(string);
        if (!file.exists()) {
            ikd.b().w("DefaultAdManager", "default ad data path is not exist");
            return null;
        }
        try {
            file.setReadable(true);
            file.setWritable(true);
            DefaultDataDTO defaultDataDTO = (DefaultDataDTO) GsonUtil.a(dv3.d(file, null, 1, null), DefaultDataDTO.class);
            if (defaultDataDTO == null) {
                return null;
            }
            long jH = o9.e().h("default_local_version");
            ikd.b().d("DefaultAdManager", "localVersion is " + jH + " , zip version is " + defaultDataDTO.getVersion());
            Long version = defaultDataDTO.getVersion();
            y45.i(version, "getVersion(...)");
            if (jH < version.longValue()) {
                return defaultDataDTO;
            }
        } catch (Throwable th) {
            ikd.b().d("DefaultAdManager", "parse default ad data failed, error is " + th.getMessage());
        }
        return null;
    }

    public final void D() {
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new f(null), 2, null);
    }

    public final boolean E() {
        try {
            AssetManager assets = ul4.a().getAssets();
            if (assets == null) {
                return false;
            }
            InputStream inputStreamOpen = assets.open(r6.b + ".zip");
            if (inputStreamOpen == null) {
                return false;
            }
            try {
                boolean zA = wzc.a(inputStreamOpen, yu3.b(ul4.a()) + File.separator + a.x());
                ikd.b().d("DefaultAdManager", "unzip result is ----> " + zA);
                ly0.a(inputStreamOpen, null);
                return zA;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(inputStreamOpen, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            ikd.b().e("DefaultAdManager", "Please check whether the default advertising zip package is configured correctly");
            return false;
        }
    }

    public final int d(int i, String str) {
        DefaultDataDTO data;
        if (i != 200) {
            return i;
        }
        if (str == null || str.length() == 0) {
            return 2002;
        }
        try {
            DefaultResponse defaultResponse = (DefaultResponse) GsonUtil.a(str, DefaultResponse.class);
            if (defaultResponse == null || (data = defaultResponse.getData()) == null) {
                return 2002;
            }
            long jH = o9.e().h("default_local_version");
            ikd.b().d("DefaultAdManager", "local version is " + jH + ", online version is " + data.getVersion());
            Long version = defaultResponse.getData().getVersion();
            y45.i(version, "getVersion(...)");
            if (jH < version.longValue()) {
                C0520g0 c0520g0 = a;
                DefaultDataDTO data2 = defaultResponse.getData();
                y45.i(data2, "getData(...)");
                c0520g0.m(data2, false);
            }
            o9.e().q("default_last_request_time", System.currentTimeMillis());
            return 0;
        } catch (Exception unused) {
            return 2001;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0093  */
    /* JADX WARN: Code duplicated, block: B:54:0x009d A[EDGE_INSN: B:54:0x009d->B:31:0x009d BREAK  A[LOOP:1: B:24:0x0083->B:56:0x0083], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0099 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bc -> B:36:0x00bf). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:24:0x0083
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object g(defpackage.wh1 r11) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cloud.hisavana.sdk.C0520g0.g(wh1):java.lang.Object");
    }

    public final void j(final int i, final String str, final int i2, final boolean z, final int i3, final ConcurrentHashMap concurrentHashMap, final xh5 xh5Var) {
        y45.j(str, "codeSeatId");
        y45.j(xh5Var, "listener");
        HSScopeHelper.a.j(new Runnable() {
            @Override
            public final void run() {
                C0520g0.u(i, str, i2, z, i3, concurrentHashMap, xh5Var);
            }
        });
    }

    public final void k(long j) {
        boolean zD = o9.e().d("default_is_open", true);
        c.set(zD);
        ikd.b().d("DefaultAdManager", "default ad is open ---> " + zD);
        if (!zD) {
            d.set(0);
            return;
        }
        A();
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new g(j, null), 2, null);
    }

    public final void m(DefaultDataDTO defaultDataDTO, boolean z) {
        List<DefaultAdDTO> nativeAds = defaultDataDTO.getNativeAds();
        if (nativeAds == null) {
            nativeAds = y71.k();
        }
        List<DefaultAdDTO> bannerAds = defaultDataDTO.getBannerAds();
        if (bannerAds == null) {
            bannerAds = y71.k();
        }
        List<DefaultAdDTO> interstitialAds = defaultDataDTO.getInterstitialAds();
        if (interstitialAds == null) {
            interstitialAds = y71.k();
        }
        List<DefaultAdDTO> splashAds = defaultDataDTO.getSplashAds();
        if (splashAds == null) {
            splashAds = y71.k();
        }
        List<DefaultAdDTO> iconAds = defaultDataDTO.getIconAds();
        if (iconAds == null) {
            iconAds = y71.k();
        }
        List<DefaultAdDTO> rewardedAds = defaultDataDTO.getRewardedAds();
        if (rewardedAds == null) {
            rewardedAds = y71.k();
        }
        List<PsAppInfo> psAppInfoList = defaultDataDTO.getPsAppInfoList();
        if (psAppInfoList == null) {
            psAppInfoList = y71.k();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(nativeAds);
        arrayList.addAll(bannerAds);
        arrayList.addAll(interstitialAds);
        arrayList.addAll(splashAds);
        arrayList.addAll(iconAds);
        arrayList.addAll(rewardedAds);
        l0 l0Var = l0.a;
        Long version = defaultDataDTO.getVersion();
        y45.i(version, "getVersion(...)");
        l0Var.i(arrayList, psAppInfoList, z, version.longValue());
    }

    public final void p(String str, String str2) {
        y45.j(str, "adCreativeId");
        y45.j(str2, "codeSeatId");
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new h(str, str2, null), 2, null);
    }

    public final void q(boolean z) {
        c.set(z);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object r(wh1 wh1Var) {
        d dVar;
        if (wh1Var instanceof d) {
            dVar = (d) wh1Var;
            int i = dVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                dVar.c = i - Integer.MIN_VALUE;
            } else {
                dVar = new d(wh1Var);
            }
        } else {
            dVar = new d(wh1Var);
        }
        Object objW = dVar.a;
        Object objF = z45.f();
        int i2 = dVar.c;
        if (i2 == 0) {
            kotlin.c.b(objW);
            String strA = uva.a();
            AthenaTracker.P(strA);
            int iW = w();
            if (iW != 0) {
                AthenaTracker.Q(strA, iW);
                return zfb.a;
            }
            String strG = p9.g();
            RequestParams requestParams = new RequestParams();
            requestParams.i("Accept-Timezone", "UTC");
            HSCommonUtils hSCommonUtils = HSCommonUtils.a;
            e eVar = new e(strG, requestParams, strA);
            dVar.c = 1;
            objW = hSCommonUtils.w(91000L, eVar, dVar);
            if (objW == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(objW);
        }
        if (((zfb) objW) == null) {
            ikd.b().w("DefaultAdManager", "requestDefaultData timeout");
        }
        ikd.b().d("DefaultAdManager", "requestDefaultData finished");
        return zfb.a;
    }

    public final int w() {
        if (!NetStateManager.checkNetworkState(true)) {
            return 2004;
        }
        long jI = o9.e().i("default_last_request_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jI2 = o9.e().i("default_interval", b);
        ikd.b().d("DefaultAdManager", "lastRequestTime is " + jI + ", currentTIme is " + jCurrentTimeMillis + ", default interval is " + jI2);
        return jCurrentTimeMillis - jI <= jI2 ? 2005 : 0;
    }

    public final String x() {
        return vl4.b("default_ad_data");
    }

    public final String y() {
        return f;
    }

    public final String z() {
        return e;
    }
}
