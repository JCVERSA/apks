package com.bytedance.sdk.openadsdk.sU;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.logging.type.LogSeverity;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class Dq {
    private String AVc;
    private int Aw;
    private int Bml;
    private int Chv;
    private volatile boolean DKa;
    private ViewTreeObserver.OnGlobalLayoutListener DKj;
    private boolean DPc;
    private volatile boolean DhB;
    private final Handler Dq;
    private int EZ;
    private String Ei;
    public final String EjP;
    private long FPG;
    private String Fm;
    private Runnable Fmk;
    private String GJs;
    private int GMp;
    private String Gn;
    private int Grp;
    private WeakReference<View> HS;
    private int HcZ;
    public final String HiB;
    private String HpB;
    private String IOh;
    private Context Ir;
    private long JcM;
    private final String Jcg;
    private long LD;
    private int LqL;
    private long Mts;
    private int MuB;
    private int NPW;
    private String Ov;
    private int Ph;
    private String QZ;
    private Set<String> RiZ;
    private String RrR;
    private String SP;
    public final String Sj;
    private Runnable TEQ;
    private com.bytedance.sdk.openadsdk.sU.Sj TFd;
    public final String TKC;
    private String TO;
    private int TX;
    private boolean TzV;
    private int UHs;
    private int Uc;
    private long WMZ;
    private long Wjd;
    private boolean WxP;
    private float Xqg;
    private long Yf;
    private Runnable Ym;
    private sP Zq;
    private long aNB;

    @Nullable
    private WebView aZ;

    private final Handler f20494aa;
    private long cX;
    private JSONObject dLt;
    private boolean dNu;
    private boolean dU;

    private int f20495db;
    private int dwU;

    private String f20496dx;
    private boolean eEJ;
    private String eI;
    private JSONObject eMB;
    private long fF;
    private Sj gR;
    private int gY;

    private int f20497gq;
    private boolean hif;
    private int hzV;

    private boolean f20498ib;

    private String f20499jb;
    private List<JSONObject> jjS;
    private boolean kF;

    private JSONObject f20500kb;
    private long ley;
    private JSONObject liH;
    private TKC mZN;

    private int f20501mj;
    private Map<String, String> nP;
    private boolean ndK;
    private String nou;
    private int nru;
    private float oWa;
    private boolean pfr;
    private int qRN;
    private boolean rB;
    private boolean ron;
    public final String sP;
    private String sU;
    private int sdp;
    private Runnable sef;
    private boolean tPD;
    private int tX;
    private String tY;

    private vS f20502tz;
    private Runnable uA;
    private String uP;
    private boolean uvD;
    private final String vS;

    private int f20503vb;
    private String vll;
    private long wE;
    private long xD;
    private int xhi;

    private int f20504xu;
    private boolean xzt;
    private boolean zR;
    private float zwV;

    public enum Sj {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    private Dq(Context context, WebView webView, TKC tkc, com.bytedance.sdk.openadsdk.sU.Sj sj2, Sj sj3) {
        this.vS = "playable_stuck_check_ping";
        this.Jcg = "playable_apply_media_permission_callback";
        this.Dq = new Handler(Looper.getMainLooper());
        this.f20494aa = new Handler(Looper.getMainLooper());
        this.uvD = true;
        this.dNu = true;
        this.TzV = true;
        this.Sj = "PL_sdk_playable_global_viewable";
        this.sP = "PL_sdk_page_screen_blank";
        this.TKC = "PL_sdk_playable_destroy_analyze_summary";
        this.EjP = "PL_sdk_playable_hardware_dialog_cancel";
        this.HiB = "PL_sdk_playable_hardware_dialog_setting";
        this.RiZ = new HashSet(Arrays.asList("adInfo", TmcConstants.EXTRA_APPINFO, "subscribe_app_ad", "download_app_ad"));
        this.sU = null;
        this.f20496dx = "embeded_ad";
        this.zR = true;
        this.f20498ib = true;
        this.kF = false;
        this.uP = "";
        this.wE = 10L;
        this.ley = 10L;
        this.LqL = LogSeverity.ALERT_VALUE;
        this.Yf = 0L;
        this.LD = 0L;
        this.fF = -1L;
        this.JcM = -1L;
        this.WMZ = -1L;
        this.Mts = -1L;
        this.FPG = -1L;
        this.Wjd = -1L;
        this.xD = -1L;
        this.Fm = "";
        this.f20499jb = "";
        this.Ei = "";
        this.HpB = "";
        this.xhi = 0;
        this.f20495db = 0;
        this.ndK = false;
        this.qRN = 0;
        this.UHs = -1;
        this.dwU = 0;
        this.sdp = 0;
        this.MuB = 0;
        this.IOh = null;
        this.pfr = false;
        this.EZ = 0;
        this.gY = 0;
        this.Chv = 0;
        this.Bml = 0;
        this.aNB = 0L;
        this.cX = 0L;
        this.Uc = -2;
        this.f20504xu = 0;
        this.HcZ = 0;
        this.nru = 0;
        this.eMB = new JSONObject();
        this.nP = new HashMap();
        this.liH = new JSONObject();
        this.SP = "";
        this.zwV = 0.0f;
        this.Xqg = 0.0f;
        this.dU = false;
        this.hif = false;
        this.ron = false;
        this.jjS = new ArrayList();
        this.eEJ = true;
        this.DhB = true;
        this.DKa = true;
        this.DKj = new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                try {
                    View view = (View) Dq.this.HS.get();
                    if (view == null) {
                        return;
                    }
                    Dq.this.sP(view);
                } catch (Throwable th2) {
                    Jcg.Sj("PlayablePlugin", "onSizeChanged error", th2);
                }
            }
        };
        this.NPW = -1;
        this.Uc = 0;
        this.gR = sj3;
        this.aZ = webView;
        uA.Sj(webView);
        Sj(webView);
        Sj(context, tkc, sj2);
    }

    private void Ei() {
        Runnable runnable;
        Runnable runnable2;
        this.Zq.Sj(System.currentTimeMillis());
        Handler handler = this.f20494aa;
        if (handler != null) {
            int i10 = this.Uc;
            if (i10 == 0 && (runnable2 = this.Fmk) != null) {
                handler.post(runnable2);
            } else if ((i10 == 1 || i10 == 2) && (runnable = this.sef) != null) {
                handler.post(runnable);
            }
            this.Zq.Sj(500);
        }
    }

    private void Fm() {
        this.Zq = new sP(this, this.LqL);
        this.uA = new Runnable() {
            @Override
            public void run() {
                if (Dq.this.zR) {
                    Dq.this.zR = false;
                    Dq.this.Dq.removeCallbacks(Dq.this.TEQ);
                    Dq.this.Sj(2, "ContainerLoadTimeOut");
                }
            }
        };
        this.TEQ = new Runnable() {
            @Override
            public void run() {
                if (Dq.this.zR) {
                    Dq.this.zR = false;
                    Dq.this.DhB = false;
                    Dq.this.Dq.removeCallbacks(Dq.this.uA);
                    Dq.this.Sj(3, "JSSDKLoadTimeOut");
                }
            }
        };
        this.Fmk = new Runnable() {
            @Override
            public void run() {
                System.currentTimeMillis();
                if (Dq.this.aZ != null) {
                    Dq.this.aZ.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() {
                        @Override
                        public void onReceiveValue(String str) {
                            if (Dq.this.Zq != null) {
                                Dq.this.Zq.Sj(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (Dq.this.f20494aa != null) {
                    Dq.this.f20494aa.postDelayed(this, 500L);
                }
            }
        };
        this.sef = new Runnable() {
            @Override
            public void run() {
                System.currentTimeMillis();
                Dq.this.Sj("playable_stuck_check_ping", new JSONObject());
                if (Dq.this.f20494aa != null) {
                    Dq.this.f20494aa.postDelayed(this, 500L);
                }
            }
        };
        this.Ym = new Runnable() {
            @Override
            public void run() {
                if (Dq.this.cX <= 0) {
                    Dq.this.sP(1, "Clicking on the hot zone causes the program to freeze.");
                } else {
                    if (Dq.this.cX - Dq.this.aNB > Dq.this.LqL) {
                        Dq.this.sP(1, "Clicking on the hot zone causes the program to freeze.");
                        return;
                    }
                    Dq.this.fF();
                    Dq.this.aNB = 0L;
                    Dq.this.cX = 0L;
                }
            }
        };
    }

    static int Fmk(Dq dq2) {
        int i10 = dq2.f20495db;
        dq2.f20495db = i10 + 1;
        return i10;
    }

    static int aa(Dq dq2) {
        int i10 = dq2.xhi;
        dq2.xhi = i10 + 1;
        return i10;
    }

    private void jb() {
        String str;
        if (this.liH == null || (str = this.tY) == null || str.contains("/cid_")) {
            return;
        }
        String strOptString = this.liH.optString(BidResponsedEx.KEY_CID);
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        String host = Uri.parse(this.tY).getHost();
        if (TextUtils.isEmpty(host)) {
            this.tY += "/cid_" + strOptString;
            return;
        }
        this.tY = this.tY.replace(host, host + "/cid_" + strOptString);
    }

    public int FPG() {
        return (this.JcM == -1 || !this.WxP) ? 1 : 2;
    }

    public void JcM() {
        try {
            sP sPVar = this.Zq;
            if (sPVar != null) {
                sPVar.Sj();
            }
            Handler handler = this.f20494aa;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public void LD() {
        this.DKa = false;
        this.Dq.removeCallbacks(this.TEQ);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.WMZ > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.WMZ);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            TKC("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void LqL() {
        sP sPVar;
        this.cX = System.currentTimeMillis();
        int i10 = this.Uc;
        if ((i10 == 1 || i10 == 2) && (sPVar = this.Zq) != null) {
            sPVar.Sj(System.currentTimeMillis());
        }
    }

    public void Mts() {
        if (this.ron) {
            return;
        }
        this.ron = true;
        this.LD = 0L;
        this.dNu = true;
        WMZ();
        try {
            View view = this.HS.get();
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.DKj);
            }
        } catch (Throwable unused) {
        }
        try {
            this.f20502tz.sP();
        } catch (Throwable unused2) {
        }
        try {
            sP sPVar = this.Zq;
            if (sPVar != null) {
                sPVar.Sj();
                this.Zq = null;
            }
            Handler handler = this.f20494aa;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th2) {
            th2.toString();
        }
        try {
            if (!TextUtils.isEmpty(this.tY)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.xhi);
                jSONObject.put("playable_hit_times", this.f20495db);
                int i10 = this.xhi;
                if (i10 > 0) {
                    jSONObject.put("playable_hit_ratio", ((double) this.f20495db) / (((double) i10) * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                TKC("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.tY)) {
                if (this.fF != -1) {
                    this.Yf += System.currentTimeMillis() - this.fF;
                    this.fF = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.Yf);
                TKC("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused4) {
        }
        this.DhB = false;
        this.DKa = false;
        this.Dq.removeCallbacks(this.uA);
        this.Dq.removeCallbacks(this.TEQ);
        this.Dq.removeCallbacksAndMessages(null);
    }

    public JSONObject RiZ() {
        return this.liH;
    }

    public JSONObject TzV() {
        if (this.eMB.isNull("width")) {
            View view = this.HS.get();
            if (view == null) {
                return this.eMB;
            }
            sP(view);
        }
        return this.eMB;
    }

    public void WMZ() {
        this.HcZ = 0;
        this.nru = 0;
        this.oWa = 0.0f;
        this.f20501mj = 0;
        this.f20497gq = 0;
        this.Ph = 0;
        this.GMp = 0;
        this.hzV = 0;
        this.TX = 0;
        this.f20503vb = 0;
        this.Grp = 0;
        this.tX = 0;
        this.Aw = 0;
    }

    public String Wjd() {
        return "function playable_callJS(){return \"Android call the JS method is callJS\";}";
    }

    public void Yf() {
        int i10;
        int i11 = this.Uc;
        if (i11 == 0 || i11 == 1 || i11 == 2) {
            if (this.DhB) {
                this.Dq.postDelayed(this.uA, this.wE * 1000);
            }
            if ((this.DKa && aa(this.tY)) || (i10 = this.Uc) == 1 || i10 == 2) {
                this.Dq.postDelayed(this.TEQ, this.ley * 1000);
            }
        }
    }

    public JSONObject Zq() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.gR.ordinal());
            jSONObject.put("safe_area_top_height", this.zwV);
            jSONObject.put("safe_area_bottom_height", this.Xqg);
            jSONObject.put("playable_enter_from", this.sdp);
            jSONObject.put("playable_retry_count", this.dwU);
            jSONObject.put("playable_card_session", this.Fm);
            jSONObject.put("playable_video_session", this.f20499jb);
            jSONObject.put("playable_network_type", uvD());
            jSONObject.put("aweme_id", this.HpB);
            return jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "playableInfo error", th2);
            return new JSONObject();
        }
    }

    public com.bytedance.sdk.openadsdk.sU.Sj dNu() {
        return this.TFd;
    }

    public void dx() {
        com.bytedance.sdk.openadsdk.sU.Sj sj2 = this.TFd;
        if (sj2 != null) {
            sj2.sP();
        }
    }

    public void fF() {
        if (this.f20498ib) {
            this.Wjd = System.currentTimeMillis();
            if (this.gR == Sj.FEED_AWEME) {
                if (this.WxP && this.f20504xu == 3) {
                    sP sPVar = this.Zq;
                    if (sPVar != null && sPVar.sP()) {
                        Ei();
                        return;
                    } else {
                        if (this.Zq == null) {
                            this.Zq = new sP(this, this.LqL);
                            Ei();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.WxP && this.f20504xu == 2) {
                sP sPVar2 = this.Zq;
                if (sPVar2 != null && sPVar2.sP()) {
                    Ei();
                } else if (this.Zq == null) {
                    this.Zq = new sP(this, this.LqL);
                    Ei();
                }
            }
        }
    }

    public void ib() {
        this.UHs = 2;
    }

    public void kF() {
        this.pfr = true;
    }

    public void ley() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.FPG > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.FPG);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.WMZ > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.WMZ);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            TKC("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public JSONObject sU() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("devicePixelRatio", this.oWa);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", this.f20501mj);
            jSONObject2.put("height", this.f20497gq);
            jSONObject.put("screen", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("x", this.GMp);
            jSONObject3.put("y", this.Ph);
            jSONObject3.put("width", this.hzV);
            jSONObject3.put("height", this.TX);
            jSONObject.put("webview", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("x", this.Grp);
            jSONObject4.put("y", this.f20503vb);
            jSONObject4.put("width", this.tX);
            jSONObject4.put("height", this.Aw);
            jSONObject.put("visible", jSONObject4);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "getViewport error", th2);
        }
        return jSONObject;
    }

    public JSONObject sef() {
        boolean zSj;
        boolean zSj2;
        try {
            boolean z10 = true;
            if (Build.VERSION.SDK_INT >= 33) {
                zSj = HiB.Sj(this.Ir, "android.permission.READ_MEDIA_IMAGES");
                zSj2 = true;
            } else {
                zSj = HiB.Sj(this.Ir, "android.permission.READ_EXTERNAL_STORAGE");
                zSj2 = HiB.Sj(this.Ir, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", zSj);
            jSONObject.put("isHasWrite", zSj2);
            if (!zSj || !zSj2) {
                z10 = false;
            }
            jSONObject.put("result", z10);
            return jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "getCameraPermission error", th2);
            return new JSONObject();
        }
    }

    public void uP() {
        if (this.TFd != null) {
            Sj sj2 = Sj.LAND_PAGE;
        }
    }

    public String uvD() {
        com.bytedance.sdk.openadsdk.sU.Sj sj2;
        if (TextUtils.isEmpty(this.Ei) && (sj2 = this.TFd) != null) {
            this.Ei = sj2.Sj().toString();
        }
        return this.Ei;
    }

    public void wE() {
        if (this.TFd != null) {
            Sj sj2 = Sj.LAND_PAGE;
        }
    }

    public int xD() {
        return this.NPW;
    }

    public void zR() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.FPG > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.FPG);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.WMZ > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.WMZ;
                this.xD = jCurrentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", jCurrentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            TKC("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    private boolean aa(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    public boolean Dq() {
        return this.tPD;
    }

    public String EjP() {
        return this.eI;
    }

    public JSONObject Fmk() {
        try {
            boolean zSj = HiB.Sj(this.Ir, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zSj);
            return jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "getCameraPermission error", th2);
            return new JSONObject();
        }
    }

    public String HiB() {
        return this.TO;
    }

    public String Jcg() {
        return this.Ov;
    }

    public JSONObject TEQ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.DPc);
            return jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "getPlayableClickStatus error", th2);
            return new JSONObject();
        }
    }

    public JSONObject TKC() {
        return this.dLt;
    }

    public Set<String> Ym() {
        return this.f20502tz.Sj();
    }

    public boolean uA() {
        return this.WxP;
    }

    public String vS() {
        return this.QZ;
    }

    public JSONObject Dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 0);
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (iOptInt == 1) {
                jSONObject2.put("result", HiB.sP(this.Ir, "android.permission.RECORD_AUDIO"));
            } else {
                if (iOptInt != 2) {
                    if (iOptInt == 3) {
                        jSONObject2.put("result", HiB.Sj(this.Ir));
                    }
                    return jSONObject2;
                }
                jSONObject2.put("result", HiB.sP(this.Ir, "android.permission.CAMERA"));
            }
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public Dq EjP(String str) {
        this.QZ = str;
        return this;
    }

    public Dq HiB(String str) {
        this.Ov = str;
        return this;
    }

    public Dq Jcg(String str) {
        int iIndexOf;
        String strDecode;
        this.SP = str;
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                String host = uri.getHost();
                if (!"webview".equalsIgnoreCase(host) && (host == null || !host.contains("webview"))) {
                    if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                        if (this.Uc == -1) {
                            sP(2);
                        } else {
                            sP(1);
                        }
                    }
                } else {
                    sP(0);
                    String queryParameter = uri.getQueryParameter("url");
                    if (!TextUtils.isEmpty(queryParameter) && (strDecode = Uri.decode(queryParameter)) != null) {
                        int iIndexOf2 = strDecode.indexOf(UrlUtils.QUESTION_MARK);
                        str = iIndexOf2 != -1 ? strDecode.substring(0, iIndexOf2) : strDecode;
                    }
                }
            } else {
                sP(0);
                if (str != null && (iIndexOf = str.indexOf(UrlUtils.QUESTION_MARK)) != -1) {
                    str = str.substring(0, iIndexOf);
                }
            }
        } catch (Throwable unused) {
        }
        this.tY = str;
        return this;
    }

    public Dq TKC(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("playable_style", str);
            this.dLt = jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "setPlayableStyle error", th2);
        }
        return this;
    }

    public void Ym(String str) {
        this.Dq.post(new Runnable() {
            @Override
            public void run() {
                Dq.Fmk(Dq.this);
            }
        });
    }

    public JSONObject aa() {
        try {
            boolean zSj = HiB.Sj(this.Ir, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zSj);
            return jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "getCameraPermission error", th2);
            return new JSONObject();
        }
    }

    public void uA(String str) {
        WebView webView;
        boolean z10 = this.f20504xu == -1;
        this.f20504xu = 2;
        if (!z10) {
            this.AVc = str;
            JSONObject jSONObject = new JSONObject();
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.Mts = jCurrentTimeMillis;
                long j10 = this.WMZ;
                jSONObject.put("playable_html_load_start_duration", j10 != -1 ? jCurrentTimeMillis - j10 : 0L);
                jSONObject.put("playable_has_show", FPG());
            } catch (Throwable th2) {
                Jcg.Sj("PlayablePlugin", "reportUrlLoadFinish error", th2);
            }
            TKC("PL_sdk_html_load_finish", jSONObject);
        }
        this.DhB = false;
        this.Dq.removeCallbacks(this.uA);
        try {
            if (this.Uc == 0) {
                if (this.uvD && (webView = this.aZ) != null) {
                    this.uvD = false;
                    webView.evaluateJavascript(Wjd(), new ValueCallback<String>() {
                        @Override
                        public void onReceiveValue(String str2) {
                        }
                    });
                }
                fF();
            }
        } catch (Throwable th3) {
            Jcg.Sj("PlayablePlugin", "crashMonitor error", th3);
        }
    }

    public Dq vS(String str) {
        this.f20496dx = str;
        return this;
    }

    public void sP(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.HcZ == view.getWidth() && this.nru == view.getHeight()) {
                return;
            }
            this.HcZ = view.getWidth();
            this.nru = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.HcZ);
            jSONObject.put("height", this.nru);
            Sj("resize", jSONObject);
            this.eMB = jSONObject;
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "resetViewDataJsonByView error", th2);
        }
    }

    public Dq EjP(boolean z10) {
        this.DPc = z10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.DPc);
            Sj("change_playable_click", jSONObject);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "setPlayableClick error", th2);
        }
        return this;
    }

    public void HiB(JSONObject jSONObject) {
        this.f20500kb = jSONObject;
        this.MuB++;
        JcM();
        this.Dq.removeCallbacks(this.Ym);
        if (this.f20498ib) {
            this.Wjd = System.currentTimeMillis();
            this.aNB = System.currentTimeMillis();
            this.cX = 0L;
            int i10 = this.Uc;
            if (i10 == 0) {
                WebView webView = this.aZ;
                if (webView != null) {
                    webView.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() {
                        @Override
                        public void onReceiveValue(String str) {
                            Dq.this.cX = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i10 == 1 || i10 == 2) {
                Sj("playable_stuck_check_ping", new JSONObject());
            }
            this.Dq.postDelayed(this.Ym, this.LqL);
        }
    }

    public void vS(JSONObject jSONObject) {
        sP(2, jSONObject != null ? jSONObject.optString(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, "The material directly invokes the exception pocket mask on the client") : "The material directly invokes the exception pocket mask on the client");
    }

    private void Sj(Context context, TKC tkc, com.bytedance.sdk.openadsdk.sU.Sj sj2) {
        this.sU = UUID.randomUUID().toString();
        this.Ir = context;
        this.TFd = sj2;
        this.mZN = tkc;
        TEQ.Sj(sj2);
        this.f20502tz = new vS(this);
        Fm();
        if (this.aZ == null) {
            this.NPW = 4;
            this.Dq.post(new Runnable() {
                @Override
                public void run() {
                    Dq.this.Sj(5, "webview is null");
                }
            });
        }
    }

    public void TEQ(String str) {
        this.Dq.post(new Runnable() {
            @Override
            public void run() {
                Dq.aa(Dq.this);
            }
        });
    }

    public Dq TKC(boolean z10) {
        if (this.NPW == -1 || this.WxP == z10) {
            return this;
        }
        this.WxP = z10;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!this.WxP) {
                jSONObject.put("playable_background_show_type", this.gY);
            }
        } catch (JSONException unused) {
        }
        TKC(this.WxP ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
        if (this.JcM == -1 && this.WxP) {
            this.JcM = System.currentTimeMillis();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("render_type", this.NPW == 1 ? 1 : 2);
                int i10 = this.NPW;
                if (i10 != -1) {
                    jSONObject2.put("webview_state", i10);
                }
            } catch (JSONException unused2) {
            }
            TKC("PL_sdk_page_show", jSONObject2);
        }
        if (this.JcM != -1 && !this.WxP && !this.dU) {
            this.dU = true;
        }
        if (this.WxP) {
            this.fF = System.currentTimeMillis();
        } else if (this.fF != -1) {
            this.Yf += System.currentTimeMillis() - this.fF;
            this.fF = -1L;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("viewStatus", this.WxP);
            Sj("viewableChange", jSONObject3);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "setViewable error", th2);
        }
        if (this.WxP) {
            fF();
        } else {
            JcM();
        }
        return this;
    }

    public void vS(boolean z10) {
        this.rB = z10;
    }

    public void EjP(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.IOh = jSONObject.optString("section");
        }
    }

    private String EjP(String str, String str2) {
        String str3 = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.tY = str3;
        return str3;
    }

    public void Dq(String str) {
        this.f20504xu = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.WMZ = jCurrentTimeMillis;
            long j10 = this.JcM;
            jSONObject.put("playable_page_show_duration", j10 != -1 ? jCurrentTimeMillis - j10 : 0L);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "reportUrlLoadStart error", th2);
        }
        TKC("PL_sdk_html_load_start", jSONObject);
        this.DhB = true;
        this.DKa = true;
        if (this.eEJ) {
            Yf();
            this.DhB = false;
            this.DKa = false;
        }
        if (this.dNu) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (HiB.Sj(this.Ir, HiB.f20505aa)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append("1");
                    if (HiB.sP(this.Ir, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (HiB.Sj(this.Ir, HiB.Ym)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (HiB.Sj(this.Ir, HiB.TEQ)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (HiB.Sj(this.Ir, HiB.uA)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (HiB.Sj(this.Ir, HiB.Dq)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append("1");
                    if (HiB.sP(this.Ir, "android.permission.CAMERA")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (HiB.Sj(this.Ir, HiB.Jcg)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append("1");
                    if (HiB.Sj(this.Ir)) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                TKC("PL_sdk_hardware_detect", jSONObject2);
                this.dNu = false;
            } catch (Throwable th3) {
                Jcg.Sj("PlayablePlugin", "Hardware detect error", th3);
            }
        }
    }

    public JSONObject EjP(String str, JSONObject jSONObject) {
        System.currentTimeMillis();
        if (Jcg.Sj() && jSONObject != null) {
            jSONObject.toString();
        }
        JSONObject jSONObjectSj = this.f20502tz.Sj(str, jSONObject);
        if (Jcg.Sj()) {
            System.currentTimeMillis();
            if (jSONObjectSj != null) {
                jSONObjectSj.toString();
            }
        }
        return jSONObjectSj;
    }

    public Map<String, String> sP() {
        return this.nP;
    }

    public Dq sP(String str) {
        this.eI = str;
        return this;
    }

    public void Sj(View view) {
        if (view == null) {
            return;
        }
        try {
            this.HS = new WeakReference<>(view);
            sP(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.DKj);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "setViewForScreenSize error", th2);
        }
    }

    public Dq sP(boolean z10) {
        this.xzt = z10;
        return this;
    }

    public Dq sP(long j10) {
        if (j10 <= 0) {
            this.ley = 10L;
        } else {
            this.ley = j10;
        }
        return this;
    }

    private void HiB(String str, JSONObject jSONObject) {
        try {
            int i10 = this.Uc;
            if (i10 == 0) {
                if (this.gR != Sj.LAND_PAGE && !aa(this.tY)) {
                    jb();
                }
                jSONObject.put("playable_url", this.tY);
            } else if (i10 == 3 || i10 == 4) {
                jSONObject.put("playable_url", EjP(this.vll, this.GJs));
            } else if (i10 == 1 || i10 == 2) {
                jSONObject.put("playable_url", TKC(this.Gn, this.nou));
            }
            jSONObject.put("playable_render_type", this.Uc);
            if (this.TFd != null) {
                if (this.Uc == 0 && (this.gR != Sj.LAND_PAGE || aa(this.tY))) {
                    this.TFd.Sj(jSONObject);
                } else if (this.Uc != 0) {
                    this.TFd.Sj(jSONObject);
                }
            }
        } catch (JSONException unused) {
        }
    }

    public void sP(JSONObject jSONObject) {
        if (this.TFd != null) {
            try {
                jSONObject.optBoolean("isPrevent", false);
            } catch (Exception unused) {
            }
        }
    }

    public Context Sj() {
        return this.Ir;
    }

    public Dq Sj(String str, String str2) {
        this.nP.put(str, str2);
        return this;
    }

    public void sP(String str, String str2) {
        Bitmap bitmapSj;
        if (TextUtils.isEmpty(str2) || (bitmapSj = HiB.Sj(str2)) == null) {
            return;
        }
        MediaStore.Images.Media.insertImage(this.Ir.getContentResolver(), bitmapSj, str, "");
    }

    public Dq Sj(String str) {
        this.TO = str;
        return this;
    }

    public Dq Sj(boolean z10) {
        this.tPD = z10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.tPD);
            Sj("volumeChange", jSONObject);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "setIsMute error", th2);
        }
        return this;
    }

    public void uA(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean zOptBoolean = jSONObject.optBoolean(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, true);
            if (zOptBoolean) {
                this.f20504xu = 3;
                fF();
            } else {
                this.f20504xu = -2;
            }
            if (zOptBoolean || !this.zR) {
                return;
            }
            this.zR = false;
            this.DhB = false;
            this.DKa = false;
            this.Dq.removeCallbacks(this.uA);
            this.Dq.removeCallbacks(this.TEQ);
            Sj(4, "CaseRenderFail");
        }
    }

    public JSONObject Jcg(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 0);
        JSONObject jSONObject2 = new JSONObject();
        if (iOptInt == 1) {
            return aa();
        }
        if (iOptInt != 2) {
            return iOptInt != 3 ? jSONObject2 : sef();
        }
        return Fmk();
    }

    public Dq sP(int i10) {
        this.Uc = i10;
        return this;
    }

    public void sP(int i10, String str) {
        this.UHs = i10;
        if (this.f20500kb == null) {
            this.f20500kb = new JSONObject();
        }
        try {
            this.f20500kb.put("playable_stuck_type", i10);
            this.f20500kb.put("playable_stuck_reason", str);
            if (this.Wjd > 0) {
                this.f20500kb.put("playable_stuck_duration", System.currentTimeMillis() - this.Wjd);
            } else {
                this.f20500kb.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        TKC("PL_sdk_page_stuck", this.f20500kb);
        JcM();
        if (this.TFd == null || i10 != 2) {
            return;
        }
        this.f20500kb = new JSONObject();
    }

    public Dq Sj(long j10) {
        if (j10 <= 0) {
            this.wE = 10L;
        } else {
            this.wE = j10;
        }
        return this;
    }

    public Dq HiB(boolean z10) {
        this.eEJ = z10;
        return this;
    }

    public void Sj(int i10) {
        this.NPW = i10;
    }

    public void Sj(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.sU.Sj sj2 = this.TFd;
        if (sj2 == null || sj2.sP(jSONObject) || jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        int iOptInt = jSONObject.optInt("resource_type", -1);
        String strOptString2 = jSONObject.optString("resource_name", "playable_media");
        if (iOptInt == 1) {
            sP(strOptString2, strOptString);
        }
    }

    public Dq TKC(JSONObject jSONObject) {
        this.liH = jSONObject;
        return this;
    }

    private void TKC(int i10, String str) {
        com.bytedance.sdk.openadsdk.sU.Sj sj2 = this.TFd;
        if (sj2 != null) {
            sj2.Sj(i10, str);
        }
    }

    public void Sj(String str, JSONObject jSONObject) {
        if (Jcg.Sj() && jSONObject != null) {
            jSONObject.toString();
        }
        TKC tkc = this.mZN;
        if (tkc != null) {
            tkc.Sj(str, jSONObject);
        }
    }

    protected void sP(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HiB(str, jSONObject);
    }

    private String TKC(String str, String str2) {
        String queryParameter;
        String queryParameter2;
        if (TextUtils.isEmpty(this.RrR) && !TextUtils.isEmpty(this.SP)) {
            Uri uri = Uri.parse(this.SP);
            String host = uri.getHost();
            if (!"lynxview".equalsIgnoreCase(host) && (host == null || !host.contains("lynxview"))) {
                queryParameter = "";
                queryParameter2 = "";
            } else {
                queryParameter = uri.getQueryParameter("surl");
                queryParameter2 = uri.getQueryParameter("playable_hash");
            }
            Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(uri.getScheme()).authority(host).appendQueryParameter("surl", queryParameter);
            if (!TextUtils.isEmpty(queryParameter2)) {
                builderAppendQueryParameter.appendQueryParameter("playable_hash", queryParameter2);
            }
            this.RrR = builderAppendQueryParameter.toString();
        }
        return this.RrR;
    }

    public Dq Sj(float f10) {
        this.oWa = f10;
        return this;
    }

    protected void Sj(int i10, String str) {
        JcM();
        TKC(i10, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i10);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "reportRenderFatal error", th2);
        }
        TKC("PL_sdk_global_faild", jSONObject);
    }

    public void Sj(int i10, String str, String str2) {
        this.f20504xu = -1;
        this.AVc = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i10);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
            jSONObject.put("playable_has_show", FPG());
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "onWebReceivedError error", th2);
        }
        TKC("PL_sdk_html_load_error", jSONObject);
        if (this.zR) {
            this.zR = false;
            this.DhB = false;
            this.DKa = false;
            this.Dq.removeCallbacks(this.uA);
            this.Dq.removeCallbacks(this.TEQ);
            Sj(1, "ContainerLoadFail");
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void TKC(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.ndK && this.f20495db > 0) {
                this.ndK = true;
            }
            if ("PL_sdk_html_load_start".equals(str) || "PL_sdk_html_load_finish".equals(str) || "PL_sdk_html_load_error".equals(str)) {
                jSONObject.put("usecache", this.rB ? 1 : 0);
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.WxP);
            jSONObject.put("playable_session_id", this.sU);
            int i10 = this.Uc;
            if (i10 == 0) {
                if (this.gR != Sj.LAND_PAGE && !aa(this.tY)) {
                    jb();
                }
                jSONObject.put("playable_url", this.tY);
            } else if (i10 == 3 || i10 == 4) {
                jSONObject.put("playable_url", EjP(this.vll, this.GJs));
            } else if (i10 == 1 || i10 == 2) {
                jSONObject.put("playable_url", TKC(this.Gn, this.nou));
            }
            jSONObject.put("playable_full_url", this.SP);
            jSONObject.put("playable_replay_count", this.qRN);
            jSONObject.put("playable_is_prerender", this.xzt);
            jSONObject.put("playable_is_preload", this.ndK);
            jSONObject.put("playable_render_type", this.Uc);
            jSONObject.put("playable_scenes_type", this.gR.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.Gn) ? "" : this.Gn);
            if (!TextUtils.isEmpty(this.nou)) {
                str2 = this.nou;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.6.0");
            jSONObject.put("playable_minigamelite_id", this.vll);
            jSONObject.put("playable_minigamelite_schema", this.GJs);
            jSONObject.put("playable_is_debug", this.hif);
            jSONObject.put("playable_retry_count", this.dwU);
            jSONObject.put("playable_enter_from", this.sdp);
            jSONObject.put("playable_sequence", this.MuB);
            jSONObject.put("playable_current_section", this.IOh);
            jSONObject.put("is_playable_finish", this.pfr);
            jSONObject.put("playable_card_session", this.Fm);
            jSONObject.put("playable_video_session", this.f20499jb);
            jSONObject.put("playable_network_type", uvD());
            jSONObject.put("playable_lynx_version", this.uP);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_extra_data", jSONObject);
            jSONObject2.put("tag", this.f20496dx);
            jSONObject2.put("nt", 4);
            jSONObject2.put("category", "umeng");
            jSONObject2.put("is_ad_event", "1");
            jSONObject2.put("refer", "playable");
            jSONObject2.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.liH.opt(BidResponsedEx.KEY_CID));
            jSONObject2.put("log_extra", this.liH.opt("log_extra"));
            int i11 = this.Uc;
            if (i11 != -1 && i11 != -2) {
                if (this.TFd != null) {
                    List<JSONObject> list = this.jjS;
                    if (list != null && !list.isEmpty()) {
                        Iterator<JSONObject> it = this.jjS.iterator();
                        while (it.hasNext()) {
                            JSONObject jSONObjectOptJSONObject = it.next().optJSONObject("ad_extra_data");
                            if (jSONObjectOptJSONObject != null) {
                                jSONObjectOptJSONObject.put("playable_render_type", this.Uc);
                                jSONObjectOptJSONObject.put("playable_url", this.tY);
                            }
                            this.TFd.Sj(jSONObjectOptJSONObject);
                        }
                        this.jjS.clear();
                    }
                    if (this.Uc == 0 && (this.gR != Sj.LAND_PAGE || aa(this.tY))) {
                        this.TFd.Sj(jSONObject);
                        return;
                    } else {
                        if (this.Uc != 0) {
                            this.TFd.Sj(jSONObject);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.jjS == null) {
                this.jjS = new ArrayList();
            }
            this.jjS.add(jSONObject2);
        } catch (Throwable th2) {
            Jcg.Sj("PlayablePlugin", "reportEvent error", th2);
        }
    }

    public void Sj(boolean z10, String str, int i10) {
        if (z10) {
            this.f20504xu = -1;
            this.AVc = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i10);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
                jSONObject.put("playable_has_show", FPG());
            } catch (Throwable th2) {
                Jcg.Sj("PlayablePlugin", "onWebReceivedHttpError error", th2);
            }
            TKC("PL_sdk_html_load_error", jSONObject);
            if (this.zR) {
                this.zR = false;
                this.DhB = false;
                this.DKa = false;
                this.Dq.removeCallbacks(this.uA);
                this.Dq.removeCallbacks(this.TEQ);
                Sj(1, "ContainerLoadFail");
            }
        }
    }

    private Dq(Context context, int i10, TKC tkc, com.bytedance.sdk.openadsdk.sU.Sj sj2) {
        this.vS = "playable_stuck_check_ping";
        this.Jcg = "playable_apply_media_permission_callback";
        this.Dq = new Handler(Looper.getMainLooper());
        this.f20494aa = new Handler(Looper.getMainLooper());
        this.uvD = true;
        this.dNu = true;
        this.TzV = true;
        this.Sj = "PL_sdk_playable_global_viewable";
        this.sP = "PL_sdk_page_screen_blank";
        this.TKC = "PL_sdk_playable_destroy_analyze_summary";
        this.EjP = "PL_sdk_playable_hardware_dialog_cancel";
        this.HiB = "PL_sdk_playable_hardware_dialog_setting";
        this.RiZ = new HashSet(Arrays.asList("adInfo", TmcConstants.EXTRA_APPINFO, "subscribe_app_ad", "download_app_ad"));
        this.sU = null;
        this.f20496dx = "embeded_ad";
        this.zR = true;
        this.f20498ib = true;
        this.kF = false;
        this.uP = "";
        this.wE = 10L;
        this.ley = 10L;
        this.LqL = LogSeverity.ALERT_VALUE;
        this.Yf = 0L;
        this.LD = 0L;
        this.fF = -1L;
        this.JcM = -1L;
        this.WMZ = -1L;
        this.Mts = -1L;
        this.FPG = -1L;
        this.Wjd = -1L;
        this.xD = -1L;
        this.Fm = "";
        this.f20499jb = "";
        this.Ei = "";
        this.HpB = "";
        this.xhi = 0;
        this.f20495db = 0;
        this.ndK = false;
        this.qRN = 0;
        this.UHs = -1;
        this.dwU = 0;
        this.sdp = 0;
        this.MuB = 0;
        this.IOh = null;
        this.pfr = false;
        this.EZ = 0;
        this.gY = 0;
        this.Chv = 0;
        this.Bml = 0;
        this.aNB = 0L;
        this.cX = 0L;
        this.Uc = -2;
        this.f20504xu = 0;
        this.HcZ = 0;
        this.nru = 0;
        this.eMB = new JSONObject();
        this.nP = new HashMap();
        this.liH = new JSONObject();
        this.SP = "";
        this.zwV = 0.0f;
        this.Xqg = 0.0f;
        this.dU = false;
        this.hif = false;
        this.ron = false;
        this.jjS = new ArrayList();
        this.eEJ = true;
        this.DhB = true;
        this.DKa = true;
        this.DKj = new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                try {
                    View view = (View) Dq.this.HS.get();
                    if (view == null) {
                        return;
                    }
                    Dq.this.sP(view);
                } catch (Throwable th2) {
                    Jcg.Sj("PlayablePlugin", "onSizeChanged error", th2);
                }
            }
        };
        this.NPW = -1;
        this.Uc = i10;
        this.gR = Sj.LAND_PAGE;
        Sj(context, tkc, sj2);
    }

    public static Dq Sj(Context context, @Nullable WebView webView, TKC tkc, com.bytedance.sdk.openadsdk.sU.Sj sj2) {
        if (tkc == null || sj2 == null) {
            return null;
        }
        if (webView == null) {
            return new Dq(context, 0, tkc, sj2);
        }
        return new Dq(context, webView, tkc, sj2, Sj.LAND_PAGE);
    }
}
