package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.internal.ads.z3;
import com.google.android.gms.internal.ads.zzcfn;
import java.util.List;

public interface ejf extends zza, t8g, vif, p5f, rjf, ujf, x5f, iue, xjf, zzn, akf, bkf, chf, fkf {
    boolean canGoBack();

    void destroy();

    @Override
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    boolean isAttachedToWindow();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void zzC(zzcfn zzcfnVar);

    hmh zzD();

    Context zzE();

    View zzF();

    WebView zzG();

    WebViewClient zzH();

    fre zzI();

    mve zzJ();

    z0f zzK();

    zzm zzL();

    zzm zzM();

    ikf zzN();

    kkf zzO();

    axg zzP();

    fxg zzQ();

    kmh zzR();

    inh zzS();

    im5 zzT();

    String zzU();

    List zzV();

    void zzW(hmh hmhVar, kmh kmhVar);

    void zzX();

    void zzY();

    void zzZ(int i);

    void zzaA(String str, je8 je8Var);

    boolean zzaB();

    boolean zzaC();

    boolean zzaD(boolean z, int i);

    boolean zzaE();

    boolean zzaF();

    boolean zzaG();

    boolean zzaH();

    void zzaa();

    void zzab();

    void zzac(boolean z);

    void zzad();

    void zzae(String str, String str2, String str3);

    void zzaf();

    void zzag(String str, n3f n3fVar);

    void zzah();

    void zzai(zzm zzmVar);

    void zzaj(kkf kkfVar);

    void zzak(mve mveVar);

    void zzal(boolean z);

    void zzam();

    void zzan(Context context);

    void zzao(boolean z);

    void zzap(y0f y0fVar);

    void zzaq(boolean z);

    void zzar(z0f z0fVar);

    void zzas(axg axgVar);

    void zzat(fxg fxgVar);

    void zzau(int i);

    void zzav(boolean z);

    void zzaw(zzm zzmVar);

    void zzax(boolean z);

    void zzay(boolean z);

    void zzaz(String str, n3f n3fVar);

    Activity zzi();

    com.google.android.gms.ads.internal.zza zzj();

    oye zzl();

    VersionInfoParcel zzm();

    zzcfn zzq();

    void zzt(String str, z3 z3Var);
}
