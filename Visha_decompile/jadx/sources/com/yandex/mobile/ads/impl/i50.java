package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.WorkerThread;
import defpackage.y45;
import defpackage.z45;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class i50 {
    private final o3 a;
    private final uj b;
    private final da c;
    private final ld1 d;

    @defpackage.nt1(c = "com.monetization.ads.base.mediation.bidding.EncodedHeaderBiddingDataLoader", f = "EncodedHeaderBiddingDataLoader.kt", l = {35, 44}, m = "loadEncodedBiddingData")
    public static final class a extends ContinuationImpl {
        i50 b;
        Object c;
        int e;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return i50.this.a(null, this);
        }
    }

    public i50(o3 o3Var, fl flVar, uj ujVar, da daVar, gy0 gy0Var, ld1 ld1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(flVar, "biddingSettings");
        y45.j(ujVar, StringLookupFactory.KEY_BASE64_ENCODER);
        y45.j(daVar, "adUnitIdHeaderBiddingSettingsProvider");
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(ld1Var, "networksHeaderBiddingDataLoader");
        this.a = o3Var;
        this.b = ujVar;
        this.c = daVar;
        this.d = ld1Var;
    }

    @WorkerThread
    private final String a(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("networks", jSONArray);
                uj ujVar = this.b;
                String string = jSONObject.toString();
                y45.i(string, "toString(...)");
                ujVar.getClass();
                return uj.a(string);
            } catch (JSONException unused) {
                sp0.c(new Object[0]);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @WorkerThread
    public final Object a(Context context, defpackage.wh1<? super String> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.e = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objG = aVar.c;
        Object objF = z45.f();
        int i2 = aVar.e;
        if (i2 != 0) {
            if (i2 == 1) {
                this = aVar.b;
                kotlin.c.b(objG);
                return this.a((JSONArray) objG);
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this = aVar.b;
            kotlin.c.b(objG);
            return this.a((JSONArray) objG);
        }
        kotlin.c.b(objG);
        ba baVarA = this.c.a(this.a.c());
        if (baVarA == null) {
            return null;
        }
        List<lz0> listF = baVarA.f();
        if (this.a.b() == ts.d) {
            gz1 gz1VarR = this.a.r();
            if (gz1VarR != null) {
                ld1 ld1Var = this.d;
                aVar.b = this;
                aVar.e = 1;
                ld1Var.getClass();
                objG = defpackage.cl0.g(qu.b(), new kd1(ld1Var, context, gz1VarR, listF, null), aVar);
                if (objG == objF) {
                    return objF;
                }
                return this.a((JSONArray) objG);
            }
            sp0.b(new Object[0]);
            return null;
        }
        ld1 ld1Var2 = this.d;
        aVar.b = this;
        aVar.e = 2;
        ld1Var2.getClass();
        objG = defpackage.cl0.g(qu.b(), new kd1(ld1Var2, context, null, listF, null), aVar);
        if (objG == objF) {
            return objF;
        }
        return this.a((JSONArray) objG);
    }
}
