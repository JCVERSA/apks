package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.monetization.ads.mediation.base.model.MediatedAdObjectInfo;
import com.monetization.ads.quality.base.AdQualityVerifierAdapter;
import com.monetization.ads.quality.base.model.AdQualityVerificationError;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerificationAdConfiguration;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifierAdType;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifierAdapterConfiguration;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import org.mozilla.javascript.ES6Iterator;

public final class y6 implements p7 {
    private final AdQualityVerifierAdapter a;
    private final AdQualityVerifierAdapterConfiguration b;
    private final long c;
    private final n7 d;
    private final h7 e;
    private final i7 f;

    @defpackage.nt1(c = "com.monetization.ads.base.quality.policy.AdQualitySdkVerifierWithPolicy", f = "AdQualitySdkVerifierWithPolicy.kt", l = {82}, m = "verifyAdWithPolicy")
    public static final class a extends ContinuationImpl {
        Object b;
        int d;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            return y6.a(y6.this, this);
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.quality.policy.AdQualitySdkVerifierWithPolicy", f = "AdQualitySdkVerifierWithPolicy.kt", l = {97}, m = "verifyAdWithTimeout")
    public static final class b extends ContinuationImpl {
        y6 b;
        Object c;
        int e;

        public b(defpackage.wh1<? super b> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return y6.b(y6.this, this);
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.quality.policy.AdQualitySdkVerifierWithPolicy$verifyAdWithTimeout$2", f = "AdQualitySdkVerifierWithPolicy.kt", l = {99}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        h7 b;
        int c;
        final Context e;
        final AdQualityVerificationAdConfiguration f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration, defpackage.wh1<? super c> wh1Var) {
            super(2, wh1Var);
            this.e = context;
            this.f = adQualityVerificationAdConfiguration;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return y6.this.new c(this.e, this.f, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((c) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            h7 h7Var;
            Object objF = z45.f();
            int i = this.c;
            if (i == 0) {
                kotlin.c.b(obj);
                h7 h7Var2 = y6.this.e;
                AdQualityVerifierAdapter adQualityVerifierAdapter = y6.this.a;
                Context context = this.e;
                AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfiguration = y6.this.b;
                AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration = this.f;
                this.b = h7Var2;
                this.c = 1;
                Object objVerifyAd = adQualityVerifierAdapter.verifyAd(context, adQualityVerifierAdapterConfiguration, adQualityVerificationAdConfiguration, this);
                if (objVerifyAd == objF) {
                    return objF;
                }
                obj = objVerifyAd;
                h7Var = h7Var2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h7Var = this.b;
                kotlin.c.b(obj);
            }
            return h7Var.a((AdQualityVerificationResult) obj);
        }
    }

    public y6(AdQualityVerifierAdapter adQualityVerifierAdapter, AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfiguration, long j, n7 n7Var, h7 h7Var) {
        this(adQualityVerifierAdapter, adQualityVerifierAdapterConfiguration, j, n7Var, h7Var, new i7());
    }

    @Override
    public final void onAdClicked() {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.a.onAdClicked();
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(kotlin.c.a(th));
        }
    }

    @Override
    public final void onAdClosed() {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.a.onAdClosed();
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(kotlin.c.a(th));
        }
    }

    @Override
    public final void onAdWillDisplay() {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.a.onAdWillDisplay();
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(kotlin.c.a(th));
        }
    }

    @Override
    public final void onInvalidated() {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.a.onInvalidated();
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(kotlin.c.a(th));
        }
    }

    public static final Object a(y6 y6Var, defpackage.wh1 wh1Var) {
        return y6Var.a(null, null, wh1Var);
    }

    public static final Object b(y6 y6Var, defpackage.wh1 wh1Var) {
        return y6Var.b(null, null, wh1Var);
    }

    public y6(AdQualityVerifierAdapter adQualityVerifierAdapter, AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfiguration, long j, n7 n7Var, h7 h7Var, i7 i7Var) {
        y45.j(adQualityVerifierAdapter, "verifierAdapter");
        y45.j(adQualityVerifierAdapterConfiguration, "verifierAdapterConfiguration");
        y45.j(n7Var, "policyAcceptor");
        y45.j(h7Var, "statusHandler");
        y45.j(i7Var, "verifierAdConfigurationCreator");
        this.a = adQualityVerifierAdapter;
        this.b = adQualityVerifierAdapterConfiguration;
        this.c = j;
        this.d = n7Var;
        this.e = h7Var;
        this.f = i7Var;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0061  */
    /* JADX WARN: Code duplicated, block: B:32:0x006b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    private final Object a(Context context, AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration, defpackage.wh1<? super AdQualityVerificationResult> wh1Var) {
        a aVar;
        Object objM279constructorimpl;
        Throwable thM282exceptionOrNullimpl;
        String message;
        Object objA;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.d = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objB = aVar.b;
        Object objF = z45.f();
        int i2 = aVar.d;
        try {
            if (i2 == 0) {
                kotlin.c.b(objB);
                Result.Companion companion = Result.INSTANCE;
                objA = this.d.a(adQualityVerificationAdConfiguration);
                if (objA == null) {
                    aVar.d = 1;
                    objB = b(context, adQualityVerificationAdConfiguration, aVar);
                    if (objB == objF) {
                        return objF;
                    }
                }
                objM279constructorimpl = Result.m279constructorimpl(objA);
                thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
                if (thM282exceptionOrNullimpl != null) {
                    message = thM282exceptionOrNullimpl.getMessage();
                    if (message == null) {
                        message = "Unknown error with empty description";
                    }
                    objM279constructorimpl = new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.UnknownError(message));
                }
                return objM279constructorimpl;
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(objB);
            objA = (AdQualityVerificationResult) objB;
            objM279constructorimpl = Result.m279constructorimpl(objA);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            message = thM282exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "Unknown error with empty description";
            }
            objM279constructorimpl = new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.UnknownError(message));
        }
        return objM279constructorimpl;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    private final Object b(Context context, AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration, defpackage.wh1<? super AdQualityVerificationResult> wh1Var) {
        b bVar;
        if (wh1Var instanceof b) {
            bVar = (b) wh1Var;
            int i = bVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bVar.e = i - Integer.MIN_VALUE;
            } else {
                bVar = new b(wh1Var);
            }
        } else {
            bVar = new b(wh1Var);
        }
        Object objC = bVar.c;
        Object objF = z45.f();
        int i2 = bVar.e;
        try {
            if (i2 == 0) {
                kotlin.c.b(objC);
                long millis = TimeUnit.SECONDS.toMillis(this.c);
                c cVar = new c(context, adQualityVerificationAdConfiguration, null);
                bVar.b = this;
                bVar.e = 1;
                objC = TimeoutKt.c(millis, cVar, bVar);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this = bVar.b;
                kotlin.c.b(objC);
            }
            return (AdQualityVerificationResult) objC;
        } catch (TimeoutCancellationException unused) {
            return new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.TimeoutError(this.c));
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX WARN: Code duplicated, block: B:25:0x005e A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:3:0x0014, B:19:0x003a, B:22:0x0046, B:23:0x0058, B:25:0x005e, B:29:0x0071, B:33:0x007d, B:35:0x0081, B:38:0x008a, B:41:0x0093, B:44:0x009c, B:47:0x00a5, B:49:0x00ac, B:12:0x002b, B:15:0x0031, B:16:0x0034, B:17:0x0037), top: B:61:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0081 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:3:0x0014, B:19:0x003a, B:22:0x0046, B:23:0x0058, B:25:0x005e, B:29:0x0071, B:33:0x007d, B:35:0x0081, B:38:0x008a, B:41:0x0093, B:44:0x009c, B:47:0x00a5, B:49:0x00ac, B:12:0x002b, B:15:0x0031, B:16:0x0034, B:17:0x0037), top: B:61:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0087  */
    /* JADX WARN: Code duplicated, block: B:38:0x008a A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:3:0x0014, B:19:0x003a, B:22:0x0046, B:23:0x0058, B:25:0x005e, B:29:0x0071, B:33:0x007d, B:35:0x0081, B:38:0x008a, B:41:0x0093, B:44:0x009c, B:47:0x00a5, B:49:0x00ac, B:12:0x002b, B:15:0x0031, B:16:0x0034, B:17:0x0037), top: B:61:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0090  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:3:0x0014, B:19:0x003a, B:22:0x0046, B:23:0x0058, B:25:0x005e, B:29:0x0071, B:33:0x007d, B:35:0x0081, B:38:0x008a, B:41:0x0093, B:44:0x009c, B:47:0x00a5, B:49:0x00ac, B:12:0x002b, B:15:0x0031, B:16:0x0034, B:17:0x0037), top: B:61:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0099  */
    /* JADX WARN: Code duplicated, block: B:44:0x009c A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:3:0x0014, B:19:0x003a, B:22:0x0046, B:23:0x0058, B:25:0x005e, B:29:0x0071, B:33:0x007d, B:35:0x0081, B:38:0x008a, B:41:0x0093, B:44:0x009c, B:47:0x00a5, B:49:0x00ac, B:12:0x002b, B:15:0x0031, B:16:0x0034, B:17:0x0037), top: B:61:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a5 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:3:0x0014, B:19:0x003a, B:22:0x0046, B:23:0x0058, B:25:0x005e, B:29:0x0071, B:33:0x007d, B:35:0x0081, B:38:0x008a, B:41:0x0093, B:44:0x009c, B:47:0x00a5, B:49:0x00ac, B:12:0x002b, B:15:0x0031, B:16:0x0034, B:17:0x0037), top: B:61:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:63:0x0070 A[SYNTHETIC] */
    @Override
    @WorkerThread
    public final Object a(Context context, Object obj, o8<?> o8Var, o3 o3Var, MediatedAdObjectInfo mediatedAdObjectInfo, defpackage.wh1<? super AdQualityVerificationResult> wh1Var) {
        AdQualityVerifierAdType adQualityVerifierAdType;
        AdQualityVerifierAdType adQualityVerifierAdType2;
        String strC;
        String strJ;
        Iterator<E> it;
        Object next;
        AdQualityVerifiableNetwork adQualityVerifiableNetworkA;
        String adContent;
        String adUnitId;
        String strD;
        String adId;
        Map<String, Object> extraData;
        this.f.getClass();
        y45.j(obj, "adObject");
        y45.j(o3Var, "adConfiguration");
        adQualityVerificationAdConfiguration = null;
        adQualityVerificationAdConfiguration = null;
        AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            int iOrdinal = o3Var.b().ordinal();
            if (iOrdinal == 0) {
                adQualityVerifierAdType = AdQualityVerifierAdType.BANNER;
            } else if (iOrdinal == 1) {
                adQualityVerifierAdType = AdQualityVerifierAdType.INTERSTITIAL;
            } else if (iOrdinal == 2) {
                adQualityVerifierAdType = AdQualityVerifierAdType.REWARDED;
            } else {
                if (iOrdinal != 3) {
                    adQualityVerifierAdType2 = null;
                } else {
                    adQualityVerifierAdType = AdQualityVerifierAdType.NATIVE;
                }
                strC = o3Var.c();
                strJ = o3Var.j();
                if (strJ == null) {
                    strJ = "yandex";
                }
                z6.c.getClass();
                y45.j(strJ, ES6Iterator.VALUE_PROPERTY);
                it = z6.a().iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!y45.e(((z6) next).b(), strJ));
                adQualityVerifiableNetworkA = z6.a.a((z6) next);
                if (adQualityVerifierAdType2 != null && strC != null && adQualityVerifiableNetworkA != null) {
                    if (mediatedAdObjectInfo != null) {
                        adContent = mediatedAdObjectInfo.getAdContent();
                    } else {
                        adContent = null;
                    }
                    if (mediatedAdObjectInfo != null) {
                        adUnitId = mediatedAdObjectInfo.getAdUnitId();
                    } else {
                        adUnitId = null;
                    }
                    if (o8Var != null) {
                        strD = o8Var.d();
                    } else {
                        strD = null;
                    }
                    if (mediatedAdObjectInfo != null) {
                        adId = mediatedAdObjectInfo.getAdId();
                    } else {
                        adId = null;
                    }
                    if (mediatedAdObjectInfo != null) {
                        extraData = mediatedAdObjectInfo.getExtraData();
                    } else {
                        extraData = null;
                    }
                    adQualityVerificationAdConfiguration = new AdQualityVerificationAdConfiguration(adQualityVerifiableNetworkA, strC, obj, adQualityVerifierAdType2, adContent, adUnitId, strD, adId, extraData);
                }
                if (adQualityVerificationAdConfiguration != null) {
                    return a(context, adQualityVerificationAdConfiguration, wh1Var);
                }
                return new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.InternalError("Failed to create ad configuration for verification"));
            }
            adQualityVerifierAdType2 = adQualityVerifierAdType;
            strC = o3Var.c();
            strJ = o3Var.j();
            if (strJ == null) {
                strJ = "yandex";
            }
            z6.c.getClass();
            y45.j(strJ, ES6Iterator.VALUE_PROPERTY);
            it = z6.a().iterator();
            do {
                if (it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((z6) next).b(), strJ));
            adQualityVerifiableNetworkA = z6.a.a((z6) next);
            if (adQualityVerifierAdType2 != null) {
                if (mediatedAdObjectInfo != null) {
                    adContent = mediatedAdObjectInfo.getAdContent();
                } else {
                    adContent = null;
                }
                if (mediatedAdObjectInfo != null) {
                    adUnitId = mediatedAdObjectInfo.getAdUnitId();
                } else {
                    adUnitId = null;
                }
                if (o8Var != null) {
                    strD = o8Var.d();
                } else {
                    strD = null;
                }
                if (mediatedAdObjectInfo != null) {
                    adId = mediatedAdObjectInfo.getAdId();
                } else {
                    adId = null;
                }
                if (mediatedAdObjectInfo != null) {
                    extraData = mediatedAdObjectInfo.getExtraData();
                } else {
                    extraData = null;
                }
                adQualityVerificationAdConfiguration = new AdQualityVerificationAdConfiguration(adQualityVerifiableNetworkA, strC, obj, adQualityVerifierAdType2, adContent, adUnitId, strD, adId, extraData);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            adQualityVerificationAdConfiguration = (AdQualityVerificationAdConfiguration) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
        }
        if (adQualityVerificationAdConfiguration != null) {
            return a(context, adQualityVerificationAdConfiguration, wh1Var);
        }
        return new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.InternalError("Failed to create ad configuration for verification"));
    }
}
