package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzv;
import defpackage.axg;
import defpackage.cye;
import defpackage.ejf;
import defpackage.fre;
import defpackage.fxg;
import defpackage.hmh;
import defpackage.hue;
import defpackage.ikf;
import defpackage.im5;
import defpackage.inh;
import defpackage.je8;
import defpackage.kkf;
import defpackage.kmh;
import defpackage.mve;
import defpackage.n3f;
import defpackage.nye;
import defpackage.ojf;
import defpackage.oye;
import defpackage.pzh;
import defpackage.sgf;
import defpackage.smg;
import defpackage.y0f;
import defpackage.z0f;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public final class zzcfd extends FrameLayout implements ejf {
    public final ejf b;
    public final sgf c;
    public final AtomicBoolean d;

    /* JADX WARN: Multi-variable type inference failed */
    public zzcfd(ejf ejfVar, @Nullable smg smgVar) {
        super(ejfVar.getContext());
        this.d = new AtomicBoolean();
        this.b = ejfVar;
        this.c = new sgf(ejfVar.zzE(), this, this, smgVar);
        addView((View) ejfVar);
    }

    public static void zzaI(zzcfd zzcfdVar, boolean z) {
        ejf ejfVar = zzcfdVar.b;
        pzh pzhVar = com.google.android.gms.ads.internal.util.zzs.zza;
        Objects.requireNonNull(ejfVar);
        pzhVar.post(new zzcez(ejfVar));
    }

    @Override
    public final boolean canGoBack() {
        return this.b.canGoBack();
    }

    @Override
    public final void destroy() {
        final axg axgVarZzP;
        final fxg fxgVarZzQ = zzQ();
        if (fxgVarZzQ != null) {
            pzh pzhVar = com.google.android.gms.ads.internal.util.zzs.zza;
            pzhVar.post(new Runnable() {
                @Override
                public final void run() {
                    zzv.zzB().i(fxgVarZzQ.a());
                }
            });
            ejf ejfVar = this.b;
            Objects.requireNonNull(ejfVar);
            pzhVar.postDelayed(new zzcez(ejfVar), ((Integer) zzbd.zzc().b(cye.n5)).intValue());
            return;
        }
        if (!((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() || (axgVarZzP = zzP()) == null) {
            this.b.destroy();
        } else {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    axgVarZzP.f(new ojf(this.zza));
                }
            });
        }
    }

    @Override
    public final void goBack() {
        this.b.goBack();
    }

    @Override
    public final void loadData(String str, String str2, String str3) {
        this.b.loadData(str, "text/html", str3);
    }

    @Override
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.b.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override
    public final void loadUrl(String str) {
        this.b.loadUrl(str);
    }

    @Override
    public final void onAdClicked() {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            ejfVar.onAdClicked();
        }
    }

    @Override
    public final void onPause() {
        this.c.f();
        this.b.onPause();
    }

    @Override
    public final void onResume() {
        this.b.onResume();
    }

    @Override
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }

    @Override
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.b.setOnTouchListener(onTouchListener);
    }

    @Override
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.b.setWebChromeClient(webChromeClient);
    }

    @Override
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.b.setWebViewClient(webViewClient);
    }

    @Override
    public final void zzA(int i) {
        this.b.zzA(i);
    }

    @Override
    public final void zzB(int i) {
        this.c.g(i);
    }

    @Override
    public final void zzC(zzcfn zzcfnVar) {
        this.b.zzC(zzcfnVar);
    }

    @Override
    public final hmh zzD() {
        return this.b.zzD();
    }

    @Override
    public final Context zzE() {
        return this.b.zzE();
    }

    @Override
    public final View zzF() {
        return this;
    }

    @Override
    public final WebView zzG() {
        return (WebView) this.b;
    }

    @Override
    public final WebViewClient zzH() {
        return this.b.zzH();
    }

    @Override
    public final fre zzI() {
        return this.b.zzI();
    }

    @Override
    public final mve zzJ() {
        return this.b.zzJ();
    }

    @Override
    @Nullable
    public final z0f zzK() {
        return this.b.zzK();
    }

    @Override
    public final zzm zzL() {
        return this.b.zzL();
    }

    @Override
    public final zzm zzM() {
        return this.b.zzM();
    }

    @Override
    public final ikf zzN() {
        return ((c4) this.b).k();
    }

    @Override
    public final kkf zzO() {
        return this.b.zzO();
    }

    @Override
    public final axg zzP() {
        return this.b.zzP();
    }

    @Override
    public final fxg zzQ() {
        return this.b.zzQ();
    }

    @Override
    public final kmh zzR() {
        return this.b.zzR();
    }

    @Override
    public final inh zzS() {
        return this.b.zzS();
    }

    @Override
    public final im5 zzT() {
        return this.b.zzT();
    }

    @Override
    public final String zzU() {
        return this.b.zzU();
    }

    @Override
    public final List zzV() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != this.b) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @Override
    public final void zzW(hmh hmhVar, kmh kmhVar) {
        this.b.zzW(hmhVar, kmhVar);
    }

    @Override
    public final void zzX() {
        this.c.e();
        this.b.zzX();
    }

    @Override
    public final void zzY() {
        this.b.zzY();
    }

    @Override
    public final void zzZ(int i) {
        this.b.zzZ(i);
    }

    @Override
    public final void zza(String str) {
        ((c4) this.b).w(str);
    }

    @Override
    public final void zzaA(String str, je8 je8Var) {
        this.b.zzaA(str, je8Var);
    }

    @Override
    public final boolean zzaB() {
        return this.b.zzaB();
    }

    @Override
    public final boolean zzaC() {
        return this.b.zzaC();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final boolean zzaD(boolean z, int i) {
        if (!this.d.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzbd.zzc().b(cye.a1)).booleanValue()) {
            return false;
        }
        ejf ejfVar = this.b;
        if (ejfVar.getParent() instanceof ViewGroup) {
            ((ViewGroup) ejfVar.getParent()).removeView((View) ejfVar);
        }
        ejfVar.zzaD(z, i);
        return true;
    }

    @Override
    public final boolean zzaE() {
        return this.b.zzaE();
    }

    @Override
    public final boolean zzaF() {
        return this.b.zzaF();
    }

    @Override
    public final boolean zzaG() {
        return this.d.get();
    }

    @Override
    public final boolean zzaH() {
        return this.b.zzaH();
    }

    @Override
    public final void zzaJ(zzc zzcVar, boolean z, boolean z2, String str) {
        this.b.zzaJ(zzcVar, z, z2, str);
    }

    @Override
    public final void zzaK(String str, String str2, int i) {
        this.b.zzaK(str, str2, 14);
    }

    @Override
    public final void zzaL(boolean z, int i, boolean z2) {
        this.b.zzaL(z, i, z2);
    }

    @Override
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.b.zzaM(z, i, str, str2, z2);
    }

    @Override
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.b.zzaN(z, i, str, z2, z3);
    }

    @Override
    public final void zzaa() {
        this.b.zzaa();
    }

    @Override
    public final void zzab() {
        this.b.zzab();
    }

    @Override
    public final void zzac(boolean z) {
        this.b.zzac(z);
    }

    @Override
    public final void zzad() {
        this.b.zzad();
    }

    @Override
    public final void zzae(String str, String str2, @Nullable String str3) {
        this.b.zzae(str, str2, null);
    }

    @Override
    public final void zzaf() {
        this.b.zzaf();
    }

    @Override
    public final void zzag(String str, n3f n3fVar) {
        this.b.zzag(str, n3fVar);
    }

    @Override
    public final void zzah() {
        fxg fxgVarZzQ;
        axg axgVarZzP;
        TextView textView = new TextView(getContext());
        zzv.zzq();
        textView.setText(com.google.android.gms.ads.internal.util.zzs.zzz());
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
        if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && (axgVarZzP = zzP()) != null) {
            axgVarZzP.a(textView);
        } else if (((Boolean) zzbd.zzc().b(cye.o5)).booleanValue() && (fxgVarZzQ = zzQ()) != null && fxgVarZzQ.b()) {
            zzv.zzB().e(fxgVarZzQ.a(), textView);
        }
    }

    @Override
    public final void zzai(zzm zzmVar) {
        this.b.zzai(zzmVar);
    }

    @Override
    public final void zzaj(kkf kkfVar) {
        this.b.zzaj(kkfVar);
    }

    @Override
    public final void zzak(mve mveVar) {
        this.b.zzak(mveVar);
    }

    @Override
    public final void zzal(boolean z) {
        this.b.zzal(z);
    }

    @Override
    public final void zzam() {
        setBackgroundColor(0);
        this.b.setBackgroundColor(0);
    }

    @Override
    public final void zzan(Context context) {
        this.b.zzan(context);
    }

    @Override
    public final void zzao(boolean z) {
        this.b.zzao(z);
    }

    @Override
    public final void zzap(y0f y0fVar) {
        this.b.zzap(y0fVar);
    }

    @Override
    public final void zzaq(boolean z) {
        this.b.zzaq(z);
    }

    @Override
    public final void zzar(@Nullable z0f z0fVar) {
        this.b.zzar(z0fVar);
    }

    @Override
    public final void zzas(@Nullable axg axgVar) {
        this.b.zzas(axgVar);
    }

    @Override
    public final void zzat(fxg fxgVar) {
        this.b.zzat(fxgVar);
    }

    @Override
    public final void zzau(int i) {
        this.b.zzau(i);
    }

    @Override
    public final void zzav(boolean z) {
        this.b.zzav(true);
    }

    @Override
    public final void zzaw(zzm zzmVar) {
        this.b.zzaw(zzmVar);
    }

    @Override
    public final void zzax(boolean z) {
        this.b.zzax(z);
    }

    @Override
    public final void zzay(boolean z) {
        this.b.zzay(z);
    }

    @Override
    public final void zzaz(String str, n3f n3fVar) {
        this.b.zzaz(str, n3fVar);
    }

    @Override
    public final void zzb(String str, String str2) {
        this.b.zzb("window.inspectorInfo", str2);
    }

    @Override
    public final void zzd(String str, Map map) {
        this.b.zzd(str, map);
    }

    @Override
    public final void zzdd() {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            ejfVar.zzdd();
        }
    }

    @Override
    public final void zzde() {
        this.b.zzde();
    }

    @Override
    public final void zzdf() {
        this.b.zzdf();
    }

    @Override
    public final void zzdg() {
        this.b.zzdg();
    }

    @Override
    public final void zzdn(hue hueVar) {
        this.b.zzdn(hueVar);
    }

    @Override
    public final void zze(String str, JSONObject jSONObject) {
        this.b.zze(str, jSONObject);
    }

    @Override
    public final int zzf() {
        return this.b.zzf();
    }

    @Override
    public final int zzg() {
        return ((Boolean) zzbd.zzc().b(cye.d4)).booleanValue() ? this.b.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override
    public final int zzh() {
        return ((Boolean) zzbd.zzc().b(cye.d4)).booleanValue() ? this.b.getMeasuredWidth() : getMeasuredWidth();
    }

    @Override
    @Nullable
    public final Activity zzi() {
        return this.b.zzi();
    }

    @Override
    public final zza zzj() {
        return this.b.zzj();
    }

    @Override
    public final nye zzk() {
        return this.b.zzk();
    }

    @Override
    public final oye zzl() {
        return this.b.zzl();
    }

    @Override
    public final VersionInfoParcel zzm() {
        return this.b.zzm();
    }

    @Override
    public final sgf zzn() {
        return this.c;
    }

    @Override
    public final z3 zzo(String str) {
        return this.b.zzo(str);
    }

    @Override
    public final void zzp(String str, JSONObject jSONObject) {
        ((c4) this.b).zzb(str, jSONObject.toString());
    }

    @Override
    public final zzcfn zzq() {
        return this.b.zzq();
    }

    @Override
    public final String zzr() {
        return this.b.zzr();
    }

    @Override
    public final String zzs() {
        return this.b.zzs();
    }

    @Override
    public final void zzt(String str, z3 z3Var) {
        this.b.zzt(str, z3Var);
    }

    @Override
    public final void zzu() {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            ejfVar.zzu();
        }
    }

    @Override
    public final void zzv(boolean z, long j) {
        this.b.zzv(z, j);
    }

    @Override
    public final void zzw() {
        this.b.zzw();
    }

    @Override
    public final void zzx(int i) {
    }

    @Override
    public final void zzy(int i) {
    }

    @Override
    public final void zzz(boolean z) {
        this.b.zzz(false);
    }
}
