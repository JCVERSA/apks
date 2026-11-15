package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeAdBlockVideoWrapperLoader$updateNativeAdsWithWrappers$2", f = "NativeAdBlockVideoWrapperLoader.kt", l = {47}, m = "invokeSuspend")
final class x41 extends SuspendLambda implements s74 {
    w41 b;
    Collection c;
    Iterator d;
    g41 e;
    Collection f;
    int g;
    private Object h;
    final List<g41> i;
    final w41 j;

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeAdBlockVideoWrapperLoader$updateNativeAdsWithWrappers$2$1$newAssets$1$1", f = "NativeAdBlockVideoWrapperLoader.kt", l = {43}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final w41 c;
        final ig<?> d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(w41 w41Var, ig<?> igVar, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = w41Var;
            this.d = igVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new a(this.c, this.d, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new a(this.c, this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                w41 w41Var = this.c;
                ig<?> igVar = this.d;
                this.b = 1;
                obj = w41.a(w41Var, igVar, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x41(List<g41> list, w41 w41Var, defpackage.wh1<? super x41> wh1Var) {
        super(2, wh1Var);
        this.i = list;
        this.j = w41Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        x41 x41Var = new x41(this.i, this.j, wh1Var);
        x41Var.h = obj;
        return x41Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((x41) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x004f  */
    /* JADX WARN: Code duplicated, block: B:14:0x006c  */
    /* JADX WARN: Code duplicated, block: B:16:0x0086  */
    /* JADX WARN: Code duplicated, block: B:17:0x0088  */
    /* JADX WARN: Code duplicated, block: B:19:0x008b  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:43:0x010b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x010c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00f8 -> B:41:0x00fb). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.x41.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
