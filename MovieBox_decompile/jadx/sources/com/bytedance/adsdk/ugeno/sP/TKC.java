package com.bytedance.adsdk.ugeno.sP;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.EjP.uA;
import com.bytedance.adsdk.ugeno.core.Dq;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.HiB;
import com.bytedance.adsdk.ugeno.core.IAnimation;
import com.bytedance.adsdk.ugeno.core.Jcg;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.Ym;
import com.bytedance.adsdk.ugeno.core.Zq;
import com.bytedance.adsdk.ugeno.core.aa;
import com.bytedance.adsdk.ugeno.core.vS;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import okio.Utf8;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class TKC<T extends View> implements View.OnTouchListener, EjP, aa.Sj, aa.sP {
    private boolean AVc;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.TKC.Sj Aw;
    protected float Bml;
    protected int Chv;
    private Zq DPc;
    private float DhB;
    protected HiB.Sj Dq;
    protected int EZ;
    protected boolean Ei;
    protected JSONObject EjP;
    protected boolean FPG;
    protected ImageView.ScaleType Fm;
    protected float Fmk;
    private JSONObject GJs;
    private String GMp;
    private boolean Gn;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.sP Grp;
    protected float HS;
    protected float HcZ;
    protected T HiB;
    protected boolean HpB;
    protected boolean IOh;
    protected float Ir;
    protected boolean JcM;
    protected Sj<ViewGroup> Jcg;
    protected float LD;
    protected float LqL;
    protected boolean Mts;
    protected boolean MuB;
    private Jcg Ov;
    private GradientDrawable Ph;
    protected Map<Integer, TEQ> QZ;
    protected float RiZ;
    private boolean RrR;
    private boolean SP;
    private boolean Sj;
    protected boolean TEQ;
    protected float TFd;
    protected JSONObject TKC;
    protected aa TO;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.HiB TX;
    protected float TzV;
    protected float UHs;
    protected float Uc;
    protected boolean WMZ;
    protected int Wjd;
    private boolean WxP;
    private boolean Xqg;
    protected float Yf;
    protected String Ym;
    protected float Zq;
    protected boolean aNB;
    protected float aZ;

    protected String f20212aa;
    protected ViewGroup.LayoutParams cX;
    private boolean dLt;
    protected float dNu;
    private boolean dU;

    protected float f20213db;
    protected boolean dwU;

    protected float f20214dx;
    private com.bytedance.adsdk.ugeno.EjP.Sj.Sj eEJ;
    protected Fmk eI;
    protected vS eMB;
    protected boolean fF;
    protected float gR;
    protected String gY;

    private boolean f20215gq;
    private boolean hif;
    private com.bytedance.adsdk.ugeno.core.Sj hzV;

    protected boolean f20216ib;

    protected float f20217jb;
    private boolean jjS;
    protected boolean kF;

    protected com.bytedance.adsdk.ugeno.Sj.Sj f20218kb;
    protected float ley;
    protected com.bytedance.adsdk.ugeno.Jcg.Sj.C0179Sj liH;
    protected float mZN;

    private boolean f20219mj;
    protected boolean nP;
    protected float ndK;
    private boolean nou;
    protected float nru;
    private boolean oWa;
    protected float pfr;
    protected float qRN;
    private boolean ron;
    protected Context sP;
    protected float sU;
    protected boolean sdp;
    protected float sef;
    private String tPD;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.EjP tX;
    protected uA tY;

    protected float f20220tz;
    protected Dq uA;
    protected boolean uP;
    protected float uvD;
    protected Sj<ViewGroup> vS;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.Sj f20221vb;
    private boolean vll;
    protected float wE;
    protected String xD;
    protected float xhi;

    protected float f20222xu;
    private boolean xzt;
    protected boolean zR;
    private boolean zwV;

    public TKC(Context context) {
        this(context, null);
    }

    @Deprecated
    private void EjP() {
        com.bytedance.adsdk.ugeno.core.sP.TKC tkcEjP;
        this.HiB.setVisibility(this.Chv);
        float f10 = this.HcZ;
        if (f10 != 0.0f) {
            this.HiB.setRotation(f10);
        }
        HiB.Sj sj2 = this.Dq;
        if (sj2 != null && TextUtils.isEmpty(sj2.sP())) {
            this.HiB.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    TKC tkc = TKC.this;
                    if (tkc.eMB != null) {
                        boolean unused = tkc.vll;
                    }
                }
            });
        } else if (sP(1) && !this.WxP) {
            this.HiB.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    TKC tkc = TKC.this;
                    if (tkc.TO == null || !tkc.vll) {
                        return;
                    }
                    TKC tkc2 = TKC.this;
                    aa aaVar = tkc2.TO;
                    TEQ teq = tkc2.QZ.get(1);
                    TKC tkc3 = TKC.this;
                    aaVar.Sj(teq, tkc3, tkc3);
                }
            });
        }
        if (this.TO != null && sP(4)) {
            if (sP(1)) {
                this.dU = true;
                this.tX = new com.bytedance.adsdk.ugeno.core.sP.EjP(this.sP, this.QZ.get(4), this.QZ.get(1), this.dU);
            } else {
                this.tX = new com.bytedance.adsdk.ugeno.core.sP.EjP(this.sP, this.QZ.get(4), this.dU);
            }
        }
        if (this.TO != null && sP(1) && this.WxP) {
            this.Grp = new com.bytedance.adsdk.ugeno.core.sP.sP(this.sP, this.QZ.get(1));
        }
        uA();
        if (this.TO != null && sP(3) && (tkcEjP = com.bytedance.adsdk.ugeno.HiB.Sj().EjP()) != null) {
            this.Aw = tkcEjP.Sj(this.sP, this);
            new Object() {
            };
        }
        if (this.TO != null && sP(9)) {
            com.bytedance.adsdk.ugeno.core.sP.HiB hiB = new com.bytedance.adsdk.ugeno.core.sP.HiB(this.sP, this.QZ.get(9), this);
            this.TX = hiB;
            hiB.Sj(this.TO);
        }
        if (sP(10)) {
            com.bytedance.adsdk.ugeno.core.sP.Sj sj3 = new com.bytedance.adsdk.ugeno.core.sP.Sj(this.sP, this.QZ.get(10), this);
            this.f20221vb = sj3;
            sj3.Sj(this.TO);
        }
    }

    private void TEQ() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.Ym);
        this.HiB.setContentDescription(sb2);
    }

    private void dwU() {
        if (TextUtils.equals("dashed", this.gY)) {
            GradientDrawable gradientDrawable = this.Ph;
            float f10 = this.pfr;
            gradientDrawable.setStroke((int) f10, this.EZ, 3.0f * f10, f10);
        } else {
            if (!TextUtils.equals("dotted", this.gY)) {
                this.Ph.setStroke((int) this.pfr, this.EZ);
                return;
            }
            GradientDrawable gradientDrawable2 = this.Ph;
            float f11 = this.pfr;
            gradientDrawable2.setStroke((int) f11, this.EZ, f11 / 2.0f, f11);
        }
    }

    private void sdp() {
        float f10 = this.dwU ? this.f20213db : this.xhi;
        float f11 = this.sdp ? this.qRN : this.xhi;
        float f12 = this.MuB ? this.ndK : this.xhi;
        float f13 = this.IOh ? this.UHs : this.xhi;
        this.Ph.setCornerRadii(new float[]{f10, f10, f11, f11, f13, f13, f12, f12});
    }

    private void uA() {
        TEQ teq;
        if (this.TO == null || !sP(18) || (teq = this.QZ.get(18)) == null) {
            return;
        }
        JSONObject jSONObjectTKC = teq.TKC();
        if (jSONObjectTKC != null) {
            try {
                jSONObjectTKC.put("rotateZ", com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectTKC.optString("rotateZ"), this.EjP));
            } catch (JSONException unused) {
            }
        }
        this.TO.Sj(teq, this, this);
    }

    @Override
    public void Dq() {
        Jcg jcg = this.Ov;
        if (jcg != null) {
            jcg.sP();
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj2 = this.f20218kb;
        if (sj2 != null) {
            sj2.sP();
        }
    }

    public int FPG() {
        return (int) this.sef;
    }

    public com.bytedance.adsdk.ugeno.EjP.Sj.Sj Fm() {
        return this.eEJ;
    }

    protected void Fmk() {
        this.HiB.setPadding((int) (this.JcM ? this.ley : this.wE), (int) (this.Mts ? this.Yf : this.wE), (int) (this.WMZ ? this.LqL : this.wE), (int) (this.FPG ? this.LD : this.wE));
    }

    public void HiB(String str) {
        this.Ym = str;
    }

    public boolean HpB() {
        return this.Bml > 0.0f;
    }

    public String JcM() {
        return this.Ym;
    }

    @Override
    public void Jcg() {
        com.bytedance.adsdk.ugeno.core.Sj sj2 = this.hzV;
        if (sj2 != null) {
            Jcg jcg = new Jcg(this.HiB, sj2);
            this.Ov = jcg;
            jcg.Sj();
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj3 = this.f20218kb;
        if (sj3 != null) {
            sj3.Sj();
        }
        uA uAVar = this.tY;
        if (uAVar != null) {
            uAVar.EjP();
        }
        if (this.f20221vb != null && sP(10)) {
            this.f20221vb.Sj();
        }
        if (this.TX == null || !sP(9)) {
            return;
        }
        this.TX.Sj();
    }

    public boolean LD() {
        return this.TEQ;
    }

    public void LqL() {
        if (this.HiB != null) {
            Sj(this.cX);
            HiB((int) this.Fmk);
            vS((int) this.sef);
        }
    }

    public int Mts() {
        return (int) this.Fmk;
    }

    public float RiZ() {
        return this.mZN;
    }

    public T Sj() {
        return null;
    }

    public float TzV() {
        return this.TFd;
    }

    public boolean UHs() {
        return this.f20215gq;
    }

    public String WMZ() {
        return this.f20212aa;
    }

    public boolean Wjd() {
        return this.aNB;
    }

    public HiB.Sj Yf() {
        return this.Dq;
    }

    public T Ym() {
        return this.HiB;
    }

    public float Zq() {
        return this.gR;
    }

    public JSONObject aa() {
        return this.EjP;
    }

    public float dNu() {
        return this.HS;
    }

    public float db() {
        T t10 = this.HiB;
        if (t10 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t10).getShine();
        }
        return 0.0f;
    }

    public float dx() {
        return this.nru;
    }

    public Sj fF() {
        return this.vS;
    }

    public aa ib() {
        return this.TO;
    }

    public JSONObject kF() {
        return this.TKC;
    }

    public ViewGroup.LayoutParams ley() {
        return this.cX;
    }

    public float ndK() {
        T t10 = this.HiB;
        if (t10 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t10).getStretch();
        }
        return 0.0f;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.core.sP.EjP ejP;
        aa aaVar;
        com.bytedance.adsdk.ugeno.core.sP.sP sPVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            jb();
        } else if (action == 1 || action == 3) {
            Ei();
        }
        Fmk fmk = this.eI;
        if (fmk != null) {
            fmk.Sj(this, motionEvent);
        }
        if (sP(17) && motionEvent.getAction() == 0) {
            this.TO.Sj(this.QZ.get(17), this, this);
        }
        if (sP(1) && this.WxP && (aaVar = this.TO) != null && (sPVar = this.Grp) != null) {
            return sPVar.Sj(aaVar, this, motionEvent);
        }
        aa aaVar2 = this.TO;
        if (aaVar2 != null && (ejP = this.tX) != null) {
            return ejP.Sj(aaVar2, this, motionEvent);
        }
        uA uAVar = this.tY;
        if (uAVar != null) {
            return uAVar.Sj(motionEvent);
        }
        return false;
    }

    public float qRN() {
        T t10 = this.HiB;
        if (t10 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t10).getRubIn();
        }
        return 0.0f;
    }

    public void sP(JSONObject jSONObject) {
        this.EjP = jSONObject;
    }

    public float sU() {
        return this.HcZ;
    }

    public float sef() {
        return this.f20222xu;
    }

    protected void uP() {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmapSj;
        if (TextUtils.isEmpty(this.xD)) {
            if (this.nP) {
                Sj(this.liH);
                return;
            } else {
                this.Ph.setColor(this.Wjd);
                EjP(this.Wjd);
                return;
            }
        }
        if (!this.xD.startsWith("local://")) {
            wE();
            return;
        }
        String strReplace = this.xD.replace("local://", "");
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = this.Ei ? Bitmap.Config.ARGB_4444 : Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.sP.getResources().openRawResource(com.bytedance.adsdk.ugeno.Jcg.EjP.Sj(this.sP, strReplace)), null, options);
            if (!this.Ei || (bitmapSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, bitmapDecodeStream, (int) this.f20217jb)) == null) {
                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(this.sP.getResources(), bitmapDecodeStream);
                bitmapDrawable = bitmapDrawable2;
            } else {
                bitmapDrawable = new BitmapDrawable(this.sP.getResources(), bitmapSj);
            }
            Sj(bitmapDrawable);
        } catch (Throwable unused) {
        }
    }

    public float uvD() {
        return this.aZ;
    }

    public void vS(String str) {
        this.f20212aa = str;
    }

    protected void wE() {
        com.bytedance.adsdk.ugeno.HiB.Sj().sP().Sj(this.uA, this.xD, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0180Sj() {
            @Override
            public void Sj(final Bitmap bitmap) {
                if (bitmap != null) {
                    TKC tkc = TKC.this;
                    if (!tkc.Ei) {
                        com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(new Runnable() {
                            @Override
                            public void run() {
                                TKC.this.Sj(new BitmapDrawable(bitmap));
                            }
                        });
                        return;
                    }
                    final Bitmap bitmapSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(tkc.sP, bitmap, (int) tkc.f20217jb);
                    if (bitmapSj != null) {
                        com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(new Runnable() {
                            @Override
                            public void run() {
                                TKC.this.Sj(new BitmapDrawable(bitmapSj));
                            }
                        });
                    }
                }
            }
        });
    }

    public int xD() {
        return this.Wjd;
    }

    public float xhi() {
        T t10 = this.HiB;
        if (t10 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t10).getRipple();
        }
        return 0.0f;
    }

    public float zR() {
        return this.xhi;
    }

    public TKC(Context context, Sj<ViewGroup> sj2) {
        this.Fmk = -2.0f;
        this.sef = -2.0f;
        this.gY = "solid";
        this.Chv = 0;
        this.aNB = true;
        this.Uc = 0.0f;
        this.f20222xu = 0.0f;
        this.gR = 0.0f;
        this.Ir = 1.0f;
        this.aZ = 1.0f;
        this.HS = 1.0f;
        this.f20220tz = 0.0f;
        this.TFd = 0.0f;
        this.mZN = 0.0f;
        this.HcZ = 0.0f;
        this.nru = 1.0f;
        this.f20219mj = true;
        this.vll = true;
        this.ron = false;
        this.jjS = false;
        this.DhB = 12.0f;
        this.sP = context;
        this.vS = sj2;
        this.QZ = new HashMap();
        this.Ph = new GradientDrawable();
        this.HiB = (T) Sj();
    }

    private void TKC() {
        if (this.Sj) {
            this.HiB.setTranslationX(this.f20222xu);
        }
        if (this.AVc) {
            this.HiB.setTranslationY(this.gR);
        }
        if (this.RrR) {
            this.HiB.setScaleX(this.aZ);
        }
        if (this.SP) {
            this.HiB.setScaleY(this.HS);
        }
        if (this.dLt) {
            this.HiB.setRotation(this.f20220tz);
        }
        if (this.zwV) {
            this.HiB.setRotationX(this.TFd);
        }
        if (this.Xqg) {
            this.HiB.setRotationY(this.mZN);
        }
        if (this.oWa) {
            this.HiB.setAlpha(this.nru);
        }
        float f10 = this.HcZ;
        if (f10 != 0.0f) {
            this.HiB.setRotation(f10);
        }
    }

    @Override
    public void HiB() {
        if (this.DPc == null || this.xzt) {
            return;
        }
        this.xzt = true;
    }

    public void Sj(JSONObject jSONObject) {
        this.EjP = jSONObject;
        JSONObject jSONObject2 = this.TKC;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        Sj<ViewGroup> sj2 = this.vS;
        Sj.C0184Sj c0184SjTEQ = sj2 instanceof Sj ? sj2.TEQ() : null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(this.TKC.optString(next), jSONObject);
            Sj(next, strSj);
            if (c0184SjTEQ != null) {
                c0184SjTEQ.Sj(this.sP, next, strSj);
            }
        }
        if (c0184SjTEQ != null) {
            Sj(c0184SjTEQ.Sj());
        }
        if (this.GJs == null || this.EjP == null) {
            return;
        }
        try {
            if (!LD()) {
                this.EjP.put("i18n", this.GJs);
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("i18n", this.GJs);
            this.EjP.put("xNode", jSONObject3);
        } catch (JSONException unused) {
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void sP() {
        uP();
        Fmk();
        TKC(this.Chv);
        TKC();
        EjP();
        uA uAVar = this.tY;
        if (uAVar != null) {
            uAVar.Sj();
            this.tY.sP();
            this.tY.TKC();
        }
        this.HiB.setOnTouchListener(this);
        TEQ();
        ViewGroup viewGroup = (ViewGroup) this.HiB.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(!this.f20219mj);
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj2 = this.f20218kb;
        if (sj2 != null) {
            sj2.TKC();
        }
        if (this.TO == null || !sP(22)) {
            return;
        }
        this.TO.Sj(this.QZ.get(22), this, this);
    }

    @Override
    public void vS() {
        if (this.DPc == null || this.Gn) {
            return;
        }
        this.Gn = true;
    }

    private boolean Dq(String str) {
        return TextUtils.isEmpty(str) || !TextUtils.equals(str, "hidden");
    }

    public void HiB(int i10) {
        if (LD()) {
            T t10 = this.HiB;
            if (t10 instanceof sP) {
                ((sP) t10).Sj(i10);
                return;
            }
            ViewParent viewParent = (ViewGroup) t10.getParent();
            if (viewParent instanceof sP) {
                ((sP) viewParent).Sj(this.HiB, i10);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.HiB.getLayoutParams();
        layoutParams.width = i10;
        this.HiB.setLayoutParams(layoutParams);
    }

    public void vS(int i10) {
        if (LD()) {
            T t10 = this.HiB;
            if (t10 instanceof sP) {
                ((sP) t10).sP(i10);
                return;
            }
            ViewParent viewParent = (ViewGroup) t10.getParent();
            if (viewParent instanceof sP) {
                ((sP) viewParent).sP(this.HiB, i10);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.HiB.getLayoutParams();
        layoutParams.height = i10;
        this.HiB.setLayoutParams(layoutParams);
    }

    private ImageView.ScaleType Jcg(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                this.Fm = ImageView.ScaleType.CENTER;
                break;
            case "fit":
                this.Fm = ImageView.ScaleType.FIT_CENTER;
                break;
            case "crop":
                this.Fm = ImageView.ScaleType.CENTER_CROP;
                break;
            default:
                this.Fm = ImageView.ScaleType.FIT_XY;
                break;
        }
        return this.Fm;
    }

    protected void Ei() {
    }

    protected void jb() {
    }

    public void Sj(Zq zq2) {
        this.DPc = zq2;
    }

    public void Sj(Fmk fmk) {
        this.eI = fmk;
    }

    public void TKC(int i10) {
        ViewParent viewParent = (ViewGroup) this.HiB.getParent();
        if (viewParent instanceof sP) {
            ((sP) viewParent).TKC(this.HiB, i10);
        } else {
            this.HiB.setVisibility(i10);
        }
    }

    public boolean sP(int i10) {
        Map<Integer, TEQ> map = this.QZ;
        return map != null && map.containsKey(Integer.valueOf(i10));
    }

    public void Sj(aa aaVar) {
        this.TO = aaVar;
    }

    protected TKC<T> sP(String str) {
        if (TextUtils.isEmpty(this.f20212aa) || !TextUtils.equals(this.f20212aa, str)) {
            return null;
        }
        return this;
    }

    protected void Sj(com.bytedance.adsdk.ugeno.Jcg.Sj.C0179Sj c0179Sj) {
        if (c0179Sj == null) {
            return;
        }
        this.Ph.setShape(0);
        this.Ph.setOrientation(c0179Sj.Sj);
        if (Build.VERSION.SDK_INT >= 29) {
            this.Ph.setColors(c0179Sj.sP, c0179Sj.TKC);
        } else {
            this.Ph.setColors(c0179Sj.sP);
        }
        sdp();
        dwU();
        this.HiB.setBackground(this.Ph);
    }

    protected void sP(String str, String str2) {
        if (TextUtils.isEmpty(str2) || this.QZ == null) {
            return;
        }
        try {
            int iSj = Ym.Sj(str).Sj();
            TEQ teq = new TEQ();
            teq.Sj(iSj);
            teq.Sj(this);
            JSONObject jSONObject = new JSONObject(str2);
            if (iSj == 3) {
                try {
                    this.DhB = Float.parseFloat(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("shakeAmplitude"), this.EjP));
                } catch (NumberFormatException unused) {
                    this.DhB = 12.0f;
                }
            }
            if (!(this.TO instanceof com.bytedance.adsdk.ugeno.core.Sj.sP)) {
                Sj(iSj, jSONObject, teq);
                return;
            }
            throw null;
        } catch (JSONException unused2) {
        }
    }

    public void TKC(JSONObject jSONObject) {
        this.TKC = jSONObject;
    }

    public TKC<T> TKC(String str) {
        return Sj(str);
    }

    protected void EjP(int i10) {
        this.Ph.setShape(0);
        this.Ph.setColor(i10);
        sdp();
        dwU();
        this.HiB.setBackground(this.Ph);
    }

    protected void Sj(Drawable drawable) {
        this.HiB.setBackground(drawable);
    }

    public void Sj(ViewGroup.LayoutParams layoutParams) {
        T t10 = this.HiB;
        if (t10 != null) {
            t10.setLayoutParams(layoutParams);
        }
        this.cX = layoutParams;
    }

    public TKC<T> EjP(String str) {
        return sP(str);
    }

    public void Sj(HiB.Sj sj2) {
        this.Dq = sj2;
    }

    @Override
    public void sP(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Sj.Sj sj2;
        if (!(this instanceof Sj) || (sj2 = this.f20218kb) == null) {
            return;
        }
        sj2.sP(canvas);
    }

    protected TKC<T> Sj(String str) {
        if (TextUtils.isEmpty(this.Ym) || !TextUtils.equals(this.Ym, str)) {
            return null;
        }
        return this;
    }

    public void Sj(boolean z10) {
        this.TEQ = z10;
    }

    public void Sj(Sj sj2) {
        this.vS = sj2;
    }

    @Override
    public void sP(int i10, int i11, int i12, int i13) {
        Jcg jcg = this.Ov;
        if (jcg != null) {
            jcg.Sj(i10, i11);
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj2 = this.f20218kb;
        if (sj2 != null) {
            sj2.Sj(i10, i11);
        }
    }

    public void Sj(Dq dq2) {
        this.uA = dq2;
    }

    public void Sj(vS vSVar) {
        this.eMB = vSVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void Sj(String str, String str2) {
        Sj<ViewGroup> sj2;
        Sj<ViewGroup> sj3;
        if (TextUtils.isEmpty(str)) {
        }
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case -1964681502:
                if (str.equals("clickable")) {
                    b10 = 0;
                }
                break;
            case -1901681170:
                if (str.equals("onRenderSuccess")) {
                    b10 = 1;
                }
                break;
            case -1721943862:
                if (str.equals("translateX")) {
                    b10 = 2;
                }
                break;
            case -1721943861:
                if (str.equals("translateY")) {
                    b10 = 3;
                }
                break;
            case -1501175880:
                if (str.equals("paddingLeft")) {
                    b10 = 4;
                }
                break;
            case -1375815020:
                if (str.equals("minWidth")) {
                    b10 = 5;
                }
                break;
            case -1351184668:
                if (str.equals("onDelay")) {
                    b10 = 6;
                }
                break;
            case -1337252761:
                if (str.equals("onShake")) {
                    b10 = 7;
                }
                break;
            case -1337126126:
                if (str.equals("onSlide")) {
                    b10 = 8;
                }
                break;
            case -1336288090:
                if (str.equals("onTimer")) {
                    b10 = 9;
                }
                break;
            case -1335874424:
                if (str.equals("onTwist")) {
                    b10 = 10;
                }
                break;
            case -1332194002:
                if (str.equals("background")) {
                    b10 = 11;
                }
                break;
            case -1291329255:
                if (str.equals("events")) {
                    b10 = 12;
                }
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    b10 = 13;
                }
                break;
            case -1228066334:
                if (str.equals("borderTopLeftRadius")) {
                    b10 = 14;
                }
                break;
            case -1221029593:
                if (str.equals("height")) {
                    b10 = 15;
                }
                break;
            case -1081309778:
                if (str.equals("margin")) {
                    b10 = 16;
                }
                break;
            case -1044792121:
                if (str.equals("marginTop")) {
                    b10 = 17;
                }
                break;
            case -1013407967:
                if (str.equals("onDown")) {
                    b10 = 18;
                }
                break;
            case -933876756:
                if (str.equals("backgroundDrawable")) {
                    b10 = 19;
                }
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    b10 = 20;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b10 = 21;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b10 = 22;
                }
                break;
            case -806339567:
                if (str.equals("padding")) {
                    b10 = 23;
                }
                break;
            case -681357156:
                if (str.equals("triggerFunc")) {
                    b10 = 24;
                }
                break;
            case -289173127:
                if (str.equals("marginBottom")) {
                    b10 = 25;
                }
                break;
            case -133587431:
                if (str.equals("minHeight")) {
                    b10 = 26;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    b10 = 27;
                }
                break;
            case 3176990:
                if (str.equals("i18n")) {
                    b10 = 28;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    b10 = 29;
                }
                break;
            case 87811796:
                if (str.equals("backgroundImageBlur")) {
                    b10 = 30;
                }
                break;
            case 90130308:
                if (str.equals("paddingTop")) {
                    b10 = 31;
                }
                break;
            case 94750088:
                if (str.equals("click")) {
                    b10 = 32;
                }
                break;
            case 105871684:
                if (str.equals("onTap")) {
                    b10 = 33;
                }
                break;
            case 108285963:
                if (str.equals("ratio")) {
                    b10 = 34;
                }
                break;
            case 109250890:
                if (str.equals("scale")) {
                    b10 = 35;
                }
                break;
            case 113126854:
                if (str.equals("width")) {
                    b10 = 36;
                }
                break;
            case 202355100:
                if (str.equals("paddingBottom")) {
                    b10 = 37;
                }
                break;
            case 320386138:
                if (str.equals("onLoadMore")) {
                    b10 = 38;
                }
                break;
            case 333432965:
                if (str.equals("borderTopRightRadius")) {
                    b10 = 39;
                }
                break;
            case 529642498:
                if (str.equals("overflow")) {
                    b10 = 40;
                }
                break;
            case 581268560:
                if (str.equals("borderBottomLeftRadius")) {
                    b10 = 41;
                }
                break;
            case 588239831:
                if (str.equals("borderBottomRightRadius")) {
                    b10 = 42;
                }
                break;
            case 713848971:
                if (str.equals("paddingRight")) {
                    b10 = 43;
                }
                break;
            case 722830999:
                if (str.equals("borderColor")) {
                    b10 = 44;
                }
                break;
            case 737768677:
                if (str.equals("borderStyle")) {
                    b10 = 45;
                }
                break;
            case 741115130:
                if (str.equals("borderWidth")) {
                    b10 = 46;
                }
                break;
            case 843948038:
                if (str.equals("onExposure")) {
                    b10 = 47;
                }
                break;
            case 975087886:
                if (str.equals("marginRight")) {
                    b10 = 48;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    b10 = 49;
                }
                break;
            case 1087723621:
                if (str.equals("onAnimation")) {
                    b10 = 50;
                }
                break;
            case 1118509956:
                if (str.equals("animation")) {
                    b10 = 51;
                }
                break;
            case 1151851515:
                if (str.equals("animatorSet")) {
                    b10 = 52;
                }
                break;
            case 1158381436:
                if (str.equals("onPullToRefresh")) {
                    b10 = 53;
                }
                break;
            case 1287124693:
                if (str.equals("backgroundColor")) {
                    b10 = 54;
                }
                break;
            case 1292595405:
                if (str.equals("backgroundImage")) {
                    b10 = 55;
                }
                break;
            case 1301532860:
                if (str.equals("backgroundScale")) {
                    b10 = 56;
                }
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    b10 = 57;
                }
                break;
            case 1384173149:
                if (str.equals("rotateX")) {
                    b10 = 58;
                }
                break;
            case 1384173150:
                if (str.equals("rotateY")) {
                    b10 = 59;
                }
                break;
            case 1384173151:
                if (str.equals("rotateZ")) {
                    b10 = 60;
                }
                break;
            case 1490730380:
                if (str.equals("onScroll")) {
                    b10 = 61;
                }
                break;
            case 1671308008:
                if (str.equals("disable")) {
                    b10 = 62;
                }
                break;
            case 1685004456:
                if (str.equals("onLongTap")) {
                    b10 = Utf8.REPLACEMENT_BYTE;
                }
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    b10 = 64;
                }
                break;
            case 1970934485:
                if (str.equals("marginLeft")) {
                    b10 = 65;
                }
                break;
            case 1997542747:
                if (str.equals("availability")) {
                    b10 = 66;
                }
                break;
        }
        switch (b10) {
            case 0:
                this.vll = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 18:
            case 33:
            case 38:
            case 47:
            case 50:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case 61:
            case 63:
                sP(str, str2);
                break;
            case 2:
                this.Sj = true;
                this.f20222xu = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case 3:
                this.AVc = true;
                this.gR = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case 4:
                this.ley = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.JcM = true;
                break;
            case 5:
                this.sU = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 11:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (com.bytedance.adsdk.ugeno.Jcg.Sj.TKC(str2)) {
                    this.nP = true;
                    this.liH = com.bytedance.adsdk.ugeno.Jcg.Sj.sP(str2);
                } else {
                    this.Wjd = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2, 0);
                    this.nP = false;
                }
                break;
            case 12:
                this.tY = uA.Sj(this, str2);
                break;
            case 13:
                this.oWa = true;
                this.nru = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 1.0f);
                break;
            case 14:
                this.f20213db = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.dwU = true;
                break;
            case 15:
                if (TextUtils.equals(str2, "match_parent")) {
                    if (LD() && (sj2 = this.vS) != null && sj2.FPG() == -2) {
                        this.sef = -2.0f;
                    } else {
                        this.sef = -1.0f;
                    }
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.sef = -2.0f;
                } else {
                    this.sef = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                }
                this.jjS = true;
                break;
            case 16:
                this.Zq = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                break;
            case 17:
                this.TzV = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.kF = true;
                break;
            case 19:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                this.xD = str2;
                break;
            case 20:
                this.dLt = true;
                this.f20220tz = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 21:
                this.RrR = true;
                this.aZ = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 22:
                this.SP = true;
                this.HS = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 23:
                this.wE = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.fF = true;
                break;
            case 24:
                this.tPD = str2;
                break;
            case 25:
                this.RiZ = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.uP = true;
                break;
            case 26:
                this.f20214dx = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 27:
                this.Ym = str2;
                break;
            case 28:
                this.GJs = com.bytedance.adsdk.ugeno.Jcg.sP.Sj(str2, (JSONObject) null);
                break;
            case NOTIFICATION_REDIRECT_VALUE:
                this.f20212aa = str2;
                break;
            case 30:
                float fSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                this.f20217jb = fSj;
                if (fSj > 0.0f) {
                    this.Ei = true;
                }
                break;
            case TEMPLATE_HTML_SIZE_VALUE:
                this.Yf = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.Mts = true;
                break;
            case 32:
                this.GMp = str2;
                break;
            case 34:
                this.Bml = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 35:
                this.RrR = true;
                this.SP = true;
                float[] fArrTKC = com.bytedance.adsdk.ugeno.Sj.TKC.TKC(str2);
                this.aZ = fArrTKC[0];
                this.HS = fArrTKC[1];
                break;
            case 36:
                if (TextUtils.equals(str2, "match_parent")) {
                    if (LD() && (sj3 = this.vS) != null && sj3.Mts() == -2) {
                        this.Fmk = -2.0f;
                    } else {
                        this.Fmk = -1.0f;
                    }
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.Fmk = -2.0f;
                } else {
                    this.Fmk = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                }
                this.ron = true;
                break;
            case 37:
                this.LD = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.FPG = true;
                break;
            case 39:
                this.qRN = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.sdp = true;
                break;
            case 40:
                this.f20219mj = Dq(str2);
                break;
            case 41:
                this.ndK = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.MuB = true;
                break;
            case 42:
                this.UHs = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.IOh = true;
                break;
            case 43:
                this.LqL = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.WMZ = true;
                break;
            case 44:
                this.EZ = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case 45:
                this.gY = str2;
                break;
            case 46:
                this.pfr = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                break;
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                this.dNu = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.f20216ib = true;
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.Sj = true;
                this.AVc = true;
                float[] fArrTKC2 = com.bytedance.adsdk.ugeno.Sj.TKC.TKC(str2);
                this.f20222xu = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, fArrTKC2[0]);
                this.gR = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, fArrTKC2[1]);
                break;
            case AD_REWARD_USER_VALUE:
                try {
                    this.f20218kb = new com.bytedance.adsdk.ugeno.Sj.Sj(this.sP, this, com.bytedance.adsdk.ugeno.Sj.TKC.Sj(new JSONObject(str2)));
                } catch (JSONException unused) {
                    return;
                }
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                this.hzV = com.bytedance.adsdk.ugeno.core.Sj.Sj(str2, this);
                break;
            case AD_VISIBILITY_VALUE:
                this.HpB = true;
                this.Fm = Jcg(str2);
                break;
            case 57:
                this.xhi = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                break;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                this.zwV = true;
                this.TFd = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 59:
                this.Xqg = true;
                this.mZN = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 60:
                this.HcZ = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 62:
                this.f20215gq = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                break;
            case 64:
                if (TextUtils.equals("visible", str2)) {
                    this.Chv = 0;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.Chv = 4;
                } else if (TextUtils.equals("gone", str2) || TextUtils.equals("hidden", str2)) {
                    this.Chv = 8;
                }
                this.HiB.setVisibility(this.Chv);
                break;
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                this.uvD = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.zR = true;
                break;
            case 66:
                this.aNB = !TextUtils.equals(str2, "unavailable");
                break;
        }
    }

    public TKC sP(TKC tkc) {
        return (tkc.fF() == null && (tkc instanceof Sj)) ? tkc : sP(tkc.fF());
    }

    @Deprecated
    protected void Sj(int i10, JSONObject jSONObject, TEQ teq) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
        if (jSONObjectOptJSONObject != null) {
            TEQ teq2 = new TEQ();
            teq2.Sj(jSONObjectOptJSONObject);
            teq2.Sj(this);
            teq.Sj(teq2);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("fail");
        if (jSONObjectOptJSONObject2 != null) {
            TEQ teq3 = new TEQ();
            teq3.Sj(jSONObjectOptJSONObject2);
            teq3.Sj(this);
            teq.sP(teq3);
        }
        teq.Sj(jSONObject);
        this.QZ.put(Integer.valueOf(i10), teq);
    }

    @Override
    public int[] Sj(int i10, int i11) {
        if (this.Bml > 0.0f) {
            if (this.ron) {
                int size = View.MeasureSpec.getSize(i10);
                float f10 = this.Bml;
                if (f10 != 0.0f) {
                    i11 = View.MeasureSpec.makeMeasureSpec((int) (size / f10), 1073741824);
                }
            } else if (this.jjS) {
                int size2 = View.MeasureSpec.getSize(i11);
                float f11 = this.Bml;
                if (f11 != 0.0f) {
                    i10 = View.MeasureSpec.makeMeasureSpec((int) (size2 * f11), 1073741824);
                }
            }
        }
        if (this.DPc != null && !this.hif) {
            this.hif = true;
        }
        return new int[]{i10, i11};
    }

    @Override
    public void Sj(int i10, int i11, int i12, int i13) {
        if (this.DPc == null || this.nou) {
            return;
        }
        this.nou = true;
    }

    @Override
    public void Sj(Canvas canvas, IAnimation iAnimation) {
        Jcg jcg = this.Ov;
        if (jcg != null) {
            jcg.Sj(canvas, iAnimation);
        }
    }

    @Override
    public void Sj(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Sj.Sj sj2;
        if ((this instanceof Sj) || (sj2 = this.f20218kb) == null) {
            return;
        }
        sj2.Sj(canvas);
    }

    @Override
    public void Sj(TEQ teq) {
        Sj<ViewGroup> sj2;
        TKC<T> TKC;
        if (teq == null || teq.TKC() == null || !TextUtils.equals(teq.TKC().optString(NativeComponentConstants.KEY_COMPONENT_TYPE), "onDismiss")) {
            return;
        }
        String strOptString = teq.TKC().optString("nodeId");
        TKC(8);
        this.Jcg = (Sj) sP(this);
        if (TextUtils.isEmpty(strOptString) || (sj2 = this.Jcg) == null || (TKC = sj2.TKC(strOptString)) == null) {
            return;
        }
        TKC.TKC(8);
    }

    public void Sj(com.bytedance.adsdk.ugeno.EjP.Sj.Sj sj2) {
        this.eEJ = sj2;
    }
}
