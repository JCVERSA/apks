package com.bytedance.sdk.openadsdk.core.model;

import a6.b;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class wE extends sU {
    private RiZ Aw;
    private boolean Bml;
    private boolean Chv;
    private HiB DKa;
    private boolean DKj;
    private Zq DPc;
    private String DhB;
    private b EZ;
    private String Ei;
    private int FPG;
    private Ym Fm;
    private int GJs;
    private int GMp;
    private String HpB;
    private int Hs;
    private int IOh;
    private int IPx;
    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj If;
    private String Ir;
    private String JcM;
    private kF Jw;
    private String LD;
    private LqL Lip;
    private boolean MGU;
    private boolean Ms;
    private String Mts;
    private int MuB;
    private String NPW;
    private uP Ov;
    private int Ph;
    private int RrR;
    private String SP;
    private boolean Snq;
    private String Ss;
    private int TT;
    private int Uc;
    private String WMZ;
    private String WxP;
    private PAGBannerSize XgY;
    private zR Za;
    private boolean aNB;
    private JSONObject aZ;

    private String f20462at;
    private JSONObject cKW;
    private int cX;
    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj cra;
    private String dLt;
    private JSONObject dU;

    private int f20464dx;
    private String eEJ;
    private String eI;
    private int eMB;
    private String ewz;
    private String fF;
    private sU.Sj gR;
    private b gY;

    private int f20465gq;
    private volatile boolean hif;
    private int hzV;

    private int f20466ib;
    private String jU;

    private int f20467jb;
    private Fmk jjS;
    private uvD kF;

    private boolean f20468kb;
    private String ley;

    private String f20469mj;
    private AdSlot nru;
    private boolean oDQ;
    private b pfr;
    private int rN;

    private dNu f20470rd;
    private int ron;
    private int roy;
    private long sdp;
    public long sef;
    private com.bytedance.sdk.openadsdk.core.Ym.Sj tPD;
    private int tX;
    private JSONObject tY;
    private uvD uP;
    private String vll;
    private String wE;
    private EjP xD;
    private String xhi;

    private Map<String, Object> f20473xu;
    private int xzt;
    private vS yfI;

    private boolean f20474yr;
    private int zR;
    private aa zwV;
    private final List<uvD> dNu = new ArrayList();
    private final List<String> TzV = new ArrayList();
    private final List<FilterWord> RiZ = new ArrayList();
    private final WMZ sU = WMZ.TKC();
    public boolean Fmk = false;
    private List<String> LqL = new ArrayList();
    private List<String> Yf = new ArrayList();
    private String Wjd = "0";

    private String f20463db = "";
    private int ndK = 0;
    private int qRN = 2;
    private int UHs = -1;
    private int dwU = 0;
    private int HS = 0;

    private int f20471tz = 1;
    private uA TFd = new uA();
    private int mZN = -200;
    private int HcZ = 0;
    private int TO = 1;
    private int QZ = 0;
    private int nP = 0;
    private int liH = 0;
    private int AVc = 1;
    private int Xqg = 1;
    private float oWa = 100.0f;
    private int TX = 2;

    private int f20472vb = 1;
    private int Grp = 0;
    private int Gn = -1;
    private long nou = -1;
    private int rB = 0;
    private boolean Fqk = false;
    private int AE = 0;
    private int UmR = 50;
    private int SPg = -1;
    private final sP cF = new sP();
    private boolean efv = false;
    private com.bytedance.sdk.openadsdk.kF.Sj.sP nbp = null;
    protected int Zq = -1;
    protected int uvD = -1;

    public static boolean Jcg(sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        int iHcZ = sUVar.HcZ();
        return sUVar.Ph() || iHcZ == 5 || iHcZ == 15 || iHcZ == 50;
    }

    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj Ngd() {
        LqL lqLNdK = ndK();
        if (lqLNdK == null) {
            return null;
        }
        return new com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj().Sj(lqLNdK.Sj()).sP(lqLNdK.sP()).TKC(lqLNdK.TKC()).EjP(lqLNdK.EjP()).HiB(If() + "_v3");
    }

    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj oI() {
        sU.Sj sjXhi = xhi();
        if (sjXhi == null) {
            return null;
        }
        return sU.Sj.sP(sjXhi, String.valueOf(If()));
    }

    @Override
    public int AE() {
        return this.rB;
    }

    @Override
    public void AL() {
        this.Ms = true;
    }

    @Override
    public boolean AVc() {
        if (this.dNu.isEmpty()) {
            return false;
        }
        if (this.f20467jb == 4 && this.dNu.size() < 3) {
            return false;
        }
        Iterator<uvD> it = this.dNu.iterator();
        while (it.hasNext()) {
            if (!it.next().HiB()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean Aw() {
        return this.xzt == 1;
    }

    @Override
    public List<uvD> Bml() {
        return this.dNu;
    }

    public int CBE() {
        return this.QZ;
    }

    @Override
    public String Chv() {
        return this.wE;
    }

    @Override
    public String Ci() {
        JSONObject jSONObjectDhB;
        if (this.f20462at == null && (jSONObjectDhB = DhB()) != null) {
            this.f20462at = jSONObjectDhB.optString(BidResponsedEx.KEY_CID, "");
        }
        return this.f20462at;
    }

    @Override
    public int DKa() {
        if (this.Gn < 0) {
            JSONObject jSONObjectDhB = DhB();
            if (jSONObjectDhB != null) {
                this.Gn = jSONObjectDhB.optInt("ad_slot_type", 0);
            } else {
                this.Gn = 0;
            }
        }
        return this.Gn;
    }

    @Override
    public int DKj() {
        return this.Gn;
    }

    @Override
    public Fmk DPc() {
        return this.jjS;
    }

    public JSONObject DSA() {
        return this.cKW;
    }

    @Override
    public int DSn() {
        Map<String, Object> map = this.f20473xu;
        if (map == null) {
            return 0;
        }
        try {
            Object obj = map.get(TTAdConstant.SDK_BIDDING_TYPE);
            if (obj != null) {
                return Integer.parseInt(obj.toString());
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override
    public JSONObject DhB() {
        if (this.aZ == null) {
            try {
                if (!TextUtils.isEmpty(this.xhi)) {
                    this.aZ = new JSONObject(this.xhi);
                }
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", e10.getMessage());
            }
        }
        return this.aZ;
    }

    @Override
    public boolean Dq() {
        return this.Chv;
    }

    @Override
    public uvD EZ() {
        return this.kF;
    }

    @Override
    public boolean Ei() {
        return rZ() == 100 || this.zR == 20;
    }

    @Override
    public void EjP(int i10) {
        Sj(i10, -1);
    }

    @Override
    public int Ewp() {
        return this.Jcg;
    }

    @Override
    public int FPG() {
        if (Ph()) {
            return 5;
        }
        if (tY() != 100.0f || ley() == 2) {
            return 0;
        }
        return this.HcZ;
    }

    @Override
    public boolean FcE() {
        dNu dnu;
        AdSlot adSlot = this.nru;
        if (adSlot == null || (dnu = this.f20470rd) == null) {
            return false;
        }
        return dnu.Sj(!TextUtils.isEmpty(adSlot.getBidAdm()));
    }

    @Override
    public int Fm() {
        return this.mZN;
    }

    @Override
    public RiZ Fmk() {
        return this.Aw;
    }

    @Override
    public boolean Fqk() {
        return xD() != null && xD().getDurationSlotType() == 8 && hzV();
    }

    @Override
    public b GJs() {
        return this.EZ;
    }

    @Override
    public com.bytedance.sdk.openadsdk.core.Ym.Sj GMp() {
        return this.tPD;
    }

    public int GhY() {
        return this.eMB;
    }

    @Override
    public int Gn() {
        return this.Grp;
    }

    @Override
    public JSONObject Grp() {
        return this.dU;
    }

    @Override
    public String HS() {
        return this.HpB;
    }

    @Override
    public int HcZ() {
        return this.f20467jb;
    }

    @Override
    public void HiB(String str) {
        this.eEJ = str;
    }

    @Override
    public int HpB() {
        return this.Uc;
    }

    @Override
    public boolean Hs() {
        return this.DKj;
    }

    @Override
    public boolean IOh() {
        return this.IPx == 1;
    }

    @Override
    public String IPx() {
        return this.NPW;
    }

    @Override
    public int If() {
        JSONObject jSONObjectDhB = DhB();
        if (jSONObjectDhB != null) {
            return jSONObjectDhB.optInt("rit", 0);
        }
        return 0;
    }

    @Override
    public String Ir() {
        if (!TextUtils.isEmpty(this.JcM)) {
            return this.JcM;
        }
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        int iSdp = sdp();
        if (iSdp != 2 && iSdp != 3) {
            if (iSdp == 4) {
                return contextSj != null ? com.bytedance.sdk.component.utils.ib.Sj(contextSj, "tt_video_download_apk") : this.JcM;
            }
            if (iSdp != 8) {
                return this.JcM;
            }
        }
        return contextSj != null ? com.bytedance.sdk.component.utils.ib.Sj(contextSj, "tt_video_mobile_go_detail") : this.JcM;
    }

    @Override
    public int JcM() {
        return this.f20471tz;
    }

    @Override
    public void Jw() {
        b bVar = this.pfr;
        if (bVar == null || TextUtils.isEmpty(bVar.z())) {
            return;
        }
        try {
            if (!this.pfr.z().contains("style_id")) {
                this.MGU = false;
            } else {
                this.MGU = true;
                this.ewz = Uri.parse(this.pfr.z()).getQueryParameters("style_id").get(0);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
        }
    }

    @Override
    public boolean KTL() {
        return this.oDQ;
    }

    @Override
    public int LD() {
        return this.liH;
    }

    @Override
    @Nullable
    public String Lip() {
        EjP ejPTz = tz();
        if (ejPTz == null || TextUtils.isEmpty(ejPTz.Sj())) {
            return null;
        }
        return ejPTz.Sj();
    }

    @Override
    public void LqL(String str) {
        this.jU = str;
    }

    @Override
    public boolean MGU() {
        return DKa() == 5;
    }

    @Override
    public boolean Ms() {
        int i10 = this.zR;
        return (i10 == 2 || i10 == 1) && 3 == this.f20464dx;
    }

    @Override
    public int Mts() {
        return this.nP;
    }

    @Override
    public boolean MuB() {
        return this.Hs == 1;
    }

    @Override
    public long NPW() {
        if (this.nou < 0) {
            JSONObject jSONObjectDhB = DhB();
            if (jSONObjectDhB != null) {
                this.nou = jSONObjectDhB.optLong("ad_id", 0L);
            } else {
                this.nou = 0L;
            }
        }
        return this.nou;
    }

    @Override
    public boolean ODI() {
        return this.efv;
    }

    @Override
    public String Os() {
        return this.Dq;
    }

    @Override
    public void Ov() {
        this.hif = true;
    }

    @Override
    public PAGBannerSize Ovo() {
        return this.XgY;
    }

    @Override
    public boolean Ph() {
        int i10 = this.rB;
        return (i10 == 1 || i10 == 3) && GMp() != null;
    }

    @Override
    public Map<String, Object> QZ() {
        return this.f20473xu;
    }

    public String Qne() {
        return this.f20469mj;
    }

    @Override
    public long RiZ() {
        HiB hiB = this.DKa;
        if (hiB == null) {
            return 0L;
        }
        return hiB.TKC();
    }

    @Override
    public int RqK() {
        if (this.SPg < 0) {
            try {
                JSONObject jSONObjectDhB = DhB();
                if (jSONObjectDhB != null) {
                    this.SPg = jSONObjectDhB.optInt("is_drop_to_retargeting_sample", 0);
                } else {
                    this.SPg = 0;
                }
            } catch (Throwable unused) {
                this.SPg = 0;
            }
        }
        return this.SPg;
    }

    @Override
    public boolean RrR() {
        return !Ph() && aF() == 1;
    }

    @Override
    public JSONObject SP() {
        Object objTKC;
        Object objTEQ;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interaction_type", sdp());
            jSONObject.put("iv_skip_time", Sj());
            jSONObject.put("rv_skip_time", sP());
            jSONObject.put(sU.EjP, gFR());
            jSONObject.put("interaction_method", zR());
            jSONObject.put("lp_click_type", nw());
            jSONObject.put("lp_click_interval", vP());
            jSONObject.put("proportion_watching", LqL());
            jSONObject.put(sU.TKC, nc());
            jSONObject.put(sU.HiB, pfr());
            jSONObject.put("target_url", Chv());
            jSONObject.put("app_log_url", HS());
            jSONObject.put("gecko_id", eMB());
            jSONObject.put("extension", Grp());
            jSONObject.put("ad_id", aZ());
            jSONObject.put(EventConstants.KEY_SOURCE, dwU());
            jSONObject.put("app_name", uE());
            jSONObject.put("screenshot", eI());
            jSONObject.put("dislike_control", aF());
            jSONObject.put("play_bar_show_time", Fm());
            jSONObject.put("play_bar_style", FPG());
            jSONObject.put("if_block_lp", CBE());
            jSONObject.put("cache_sort", YZ());
            jSONObject.put("if_sp_cache", nD());
            jSONObject.put("render_control", ley());
            jSONObject.put("mrc_report", this.xzt);
            jSONObject.put("isMrcReportFinish", this.hif);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("cta", kF());
            jSONObject2.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, ib());
            jSONObject.put("set_click_type", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_NAME, uP());
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, wE());
            jSONObject.put("reward_data", jSONObject3);
            if (!TextUtils.isEmpty(TEQ()) && !TextUtils.isEmpty(Ym())) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("adchoices_icon", TEQ());
                jSONObject4.put("adchoices_url", Ym());
                jSONObject.put("dsp_adchoices", jSONObject4);
            }
            uvD uvdEZ = EZ();
            if (uvdEZ != null && !TextUtils.isEmpty(uvdEZ.Sj())) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("url", uvdEZ.Sj());
                jSONObject5.put("height", uvdEZ.TKC());
                jSONObject5.put("width", uvdEZ.sP());
                jSONObject.put(RewardPlus.ICON, jSONObject5);
            }
            uvD uvdGY = gY();
            if (uvdGY != null && !TextUtils.isEmpty(uvdGY.Sj())) {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put("url", uvdGY.Sj());
                jSONObject6.put("height", uvdGY.TKC());
                jSONObject6.put("width", uvdGY.sP());
                jSONObject.put("cover_image", jSONObject6);
            }
            Object objNP = nP();
            if (objNP != null) {
                jSONObject.put("session_params", objNP);
            }
            uA uAVarWjd = Wjd();
            if (uAVarWjd != null) {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("click_upper_content_area", uAVarWjd.Sj);
                jSONObject7.put("click_upper_non_content_area", uAVarWjd.sP);
                jSONObject7.put("click_lower_content_area", uAVarWjd.TKC);
                jSONObject7.put("click_lower_non_content_area", uAVarWjd.EjP);
                jSONObject7.put("click_button_area", uAVarWjd.HiB);
                jSONObject7.put("click_video_area", uAVarWjd.vS);
                jSONObject.put("click_area", jSONObject7);
            }
            vS vSVarZq = Zq();
            if (vSVarZq != null) {
                jSONObject.put("arbitrage_interceptor_params", vSVarZq.Jcg());
            }
            AdSlot adSlotXD = xD();
            if (adSlotXD != null) {
                jSONObject.put("adslot", adSlotXD.toJsonObj());
            }
            List<uvD> listBml = Bml();
            if (listBml != null) {
                JSONArray jSONArray = new JSONArray();
                for (uvD uvd : listBml) {
                    JSONObject jSONObject8 = new JSONObject();
                    jSONObject8.put("url", uvd.Sj());
                    jSONObject8.put("height", uvd.TKC());
                    jSONObject8.put("width", uvd.sP());
                    jSONObject8.put("image_preview", uvd.vS());
                    jSONObject8.put("image_key", uvd.Jcg());
                    jSONArray.put(jSONObject8);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> listCX = cX();
            if (listCX != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = listCX.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> listKb = kb();
            if (listKb != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator<String> it2 = listKb.iterator();
                while (it2.hasNext()) {
                    jSONArray3.put(it2.next());
                }
                jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, jSONArray3);
            }
            List<String> listUc = Uc();
            if (listUc != null) {
                JSONArray jSONArray4 = new JSONArray();
                Iterator<String> it3 = listUc.iterator();
                while (it3.hasNext()) {
                    jSONArray4.put(it3.next());
                }
                jSONObject.put("play_start", jSONArray4);
            }
            jSONObject.put("phone_num", aNB());
            jSONObject.put(CampaignEx.JSON_KEY_TITLE, xu());
            jSONObject.put(TrackingKey.DESCRIPTION, gR());
            jSONObject.put("ext", mZN());
            jSONObject.put("image_mode", HcZ());
            jSONObject.put("cover_click_area", rZ());
            jSONObject.put("intercept_flag", GhY());
            jSONObject.put("button_text", Ir());
            jSONObject.put("ad_logo", iUm());
            jSONObject.put("video_adaptation", Mts());
            jSONObject.put("feed_video_opentype", LD());
            jSONObject.put("orientation", liH());
            jSONObject.put("aspect_ratio", tY());
            EjP ejPTz = tz();
            if (ejPTz != null) {
                JSONObject jSONObject9 = new JSONObject();
                jSONObject9.put("app_name", ejPTz.sP());
                jSONObject9.put("package_name", ejPTz.TKC());
                jSONObject9.put("download_url", ejPTz.Sj());
                jSONObject9.put("score", ejPTz.EjP());
                jSONObject9.put("comment_num", ejPTz.HiB());
                jSONObject9.put(CampaignEx.JSON_KEY_APP_SIZE, ejPTz.vS());
                jSONObject9.put("app_category", ejPTz.Jcg());
                jSONObject.put("app", jSONObject9);
            }
            Ym ymTFd = TFd();
            if (ymTFd != null) {
                JSONObject jSONObject10 = new JSONObject();
                jSONObject10.put("deeplink_url", ymTFd.Sj());
                jSONObject10.put("fallback_url", ymTFd.sP());
                jSONObject10.put("fallback_type", ymTFd.TKC());
                jSONObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, jSONObject10);
            }
            jSONObject.put("is_web_jump_ip", this.Ym);
            kF kFVarENi = eNi();
            if (kFVarENi != null && (objTEQ = kFVarENi.TEQ()) != null) {
                jSONObject.put("oem", objTEQ);
            }
            zR zRVarHLo = hLo();
            if (zRVarHLo != null && (objTKC = zRVarHLo.TKC()) != null) {
                jSONObject.put("multi_ad_scene", objTKC);
            }
            List<FilterWord> listNru = nru();
            if (listNru != null) {
                JSONArray jSONArray5 = new JSONArray();
                Iterator<FilterWord> it4 = listNru.iterator();
                while (it4.hasNext()) {
                    JSONObject jSONObjectSP = sP(it4.next());
                    if (jSONObjectSP != null) {
                        jSONArray5.put(jSONObjectSP);
                    }
                }
                jSONObject.put("filter_words", jSONArray5);
            }
            sU().Sj(jSONObject);
            jSONObject.put("count_down", iO());
            jSONObject.put("expiration_time", TO());
            b bVarVll = vll();
            if (bVarVll != null) {
                jSONObject.put("video", bVarVll.w());
            }
            b bVarGJs = GJs();
            if (bVarGJs != null) {
                jSONObject.put("h265_video", bVarGJs.w());
            }
            jSONObject.put("video_encode_type", nou());
            JSONObject jSONObject11 = new JSONObject();
            jSONObject11.put("if_send_click", qRN());
            jSONObject.put("download_conf", jSONObject11);
            if (QZ() != null) {
                JSONObject jSONObject12 = new JSONObject();
                Set<Map.Entry<String, Object>> setEntrySet = QZ().entrySet();
                if (!setEntrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : setEntrySet) {
                        jSONObject12.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject12);
            }
            sU.Sj sjXhi = xhi();
            if (sjXhi != null) {
                JSONObject jSONObject13 = new JSONObject();
                jSONObject13.put("id", sjXhi.vS());
                jSONObject13.put("md5", sjXhi.Jcg());
                jSONObject13.put("url", sjXhi.Dq());
                jSONObject13.put("data", sjXhi.uA());
                jSONObject13.put("diff_data", sjXhi.TEQ());
                jSONObject13.put("version", sjXhi.HiB());
                jSONObject13.put("dynamic_creative", sjXhi.Ym());
                jSONObject13.put("engine_version", sjXhi.Fmk());
                jSONObject13.put("ugen_data", sjXhi.dNu());
                jSONObject13.put("ugen_md5", sjXhi.uvD());
                jSONObject13.put("ugen_url", sjXhi.Zq());
                jSONObject.put("tpl_info", jSONObject13);
            }
            LqL lqL = this.Lip;
            if (lqL != null) {
                jSONObject.put("tpl_info_v3", lqL.vS());
            }
            jSONObject.put("dynamic_creative", DSA());
            jSONObject.put("creative_extra", jb());
            jSONObject.put("market_url", fgU());
            jSONObject.put("auction_price", WMZ());
            jSONObject.put("ad_info", Qne());
            jSONObject.put("is_package_open", zwV());
            jSONObject.put("playable_duration_time", oWa());
            jSONObject.put("playable_endcard_close_time", mj());
            jSONObject.put("endcard_close_time", gq());
            JSONObject jSONObject14 = new JSONObject();
            jSONObject14.put("render_sequence", fF());
            jSONObject14.put("backup_render_control", JcM());
            jSONObject14.put("reserve_time", WxP());
            jSONObject14.put("render_thread", dU());
            jSONObject.put(EventConstants.ADDRESS_RENDER, jSONObject14);
            if (this.Aw == null) {
                RiZ riZ = new RiZ();
                this.Aw = riZ;
                riZ.Sj("");
                this.Aw.Sj(10L);
                this.Aw.sP(20L);
                this.Aw.TKC(10L);
                this.Aw.EjP(20L);
            }
            JSONObject jSONObject15 = new JSONObject();
            jSONObject15.put("onlylp_loading_maxtime", this.Aw.Sj());
            jSONObject15.put("straight_lp_showtime", this.Aw.sP());
            jSONObject15.put("onlyagg_loading_maxtime", this.Aw.TKC());
            jSONObject15.put("straight_agg_showtime", this.Aw.EjP());
            jSONObject15.put("loading_text", this.Aw.HiB());
            dNu dnu = this.f20470rd;
            if (dnu != null) {
                jSONObject15 = dnu.Sj(jSONObject15);
            }
            jSONObject.put("interaction_method_params", jSONObject15);
            JSONObject jSONObject16 = new JSONObject();
            jSONObject16.put("splash_clickarea", dNu());
            jSONObject16.put("splash_layout_id", TzV());
            jSONObject16.put("load_wait_time", RiZ());
            HiB hiB = this.DKa;
            jSONObject16.put("skip_time", hiB != null ? hiB.Sj() : 0);
            jSONObject.put("splash_control", jSONObject16);
            if (hzV()) {
                jSONObject.put("dsp_html", this.WxP);
            }
            if (Ph()) {
                jSONObject.put("vast_json", this.tPD.TEQ());
            }
            jSONObject.put("dsp_material_type", AE());
            jSONObject.put("deep_link_appname", this.WMZ);
            jSONObject.put("landing_page_download_clicktype", this.FPG);
            Fmk fmk = this.jjS;
            if (fmk != null) {
                jSONObject.put("dsp_style", fmk.HiB());
            }
            jSONObject.put("jump_probability", this.TT);
            jSONObject.put("identificationOverlayContent", this.Ss);
            if (this.If != null) {
                JSONObject jSONObject17 = new JSONObject();
                jSONObject17.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, this.If.Sj(this.cra));
                jSONObject.put("ugen", jSONObject17);
            }
            jSONObject.put("preload_h5_type", rd());
            jSONObject.put("hasReportShow", this.Snq);
            jSONObject.put("endcard_creative", this.jU);
            jSONObject.put("image_stay", this.rN);
            jSONObject.put("ad_label", this.cF.vS());
            JSONObject jSONObject18 = new JSONObject();
            jSONObject18.put(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, this.vS);
            jSONObject18.put("wait_time", this.Jcg);
            jSONObject18.put("label", this.Dq);
            jSONObject.put("ev", jSONObject18);
            jSONObject.put("ad_label", this.cF.vS());
            if (this.XgY != null) {
                JSONObject jSONObject19 = new JSONObject();
                jSONObject19.put("width", this.XgY.getWidth());
                jSONObject19.put("height", this.XgY.getHeight());
                jSONObject.put("banner", jSONObject19);
            }
            if (!TextUtils.isEmpty(this.NPW)) {
                jSONObject.put("gdid_encrypted", this.NPW);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Override
    public long SPg() {
        return this.sef;
    }

    @Override
    public void Sj(boolean z10) {
        this.Chv = z10;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    @Override
    public boolean Snq() {
        int iSP;
        if (!UmR()) {
            int iNextInt = new Random().nextInt(100);
            if (Ph()) {
                Fmk fmk = this.jjS;
                if (fmk != null) {
                    iSP = fmk.sP();
                } else {
                    iSP = 0;
                }
            } else if (uP.sP(this)) {
                iSP = 0;
            } else {
                iSP = this.TT;
            }
            if (iNextInt < iSP) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean Ss() {
        return DKa() == 8;
    }

    @Override
    public String TEQ() {
        return this.eEJ;
    }

    @Override
    public Ym TFd() {
        return this.Fm;
    }

    @Override
    public void TKC(int i10) {
        this.Ym = i10;
    }

    @Override
    public long TO() {
        return this.sdp;
    }

    @Override
    public boolean TT() {
        return DKa() == 7;
    }

    @Override
    public String TX() {
        return this.WxP;
    }

    @Override
    public int TzV() {
        if (yfI()) {
            return 5;
        }
        return hzV() ? 4 : 1;
    }

    @Override
    public b UHs() {
        return this.pfr;
    }

    public com.bytedance.sdk.component.adexpress.Sj.TKC.EjP UK() {
        sU.Sj sjXhi = xhi();
        if (sjXhi == null) {
            return null;
        }
        return sU.Sj.Sj(sjXhi, String.valueOf(If()));
    }

    @Override
    public List<String> Uc() {
        return this.TzV;
    }

    @Override
    public boolean UmR() {
        return this.sU.Sj > 0;
    }

    @Override
    public boolean Vd() {
        return this.Ms;
    }

    @Override
    public boolean VnJ() {
        return this.vS;
    }

    @Override
    public boolean WM() {
        if (this.Gn <= 0) {
            this.Gn = DKa();
        }
        int i10 = this.Gn;
        return (i10 == 7 || i10 == 8) && !Jcg(this) && zR() != 21 && this.rN == 1;
    }

    @Override
    public String WMZ() {
        return this.SP;
    }

    @Override
    public boolean WO() {
        return this.sP;
    }

    @Override
    public uA Wjd() {
        return this.TFd;
    }

    @Override
    public int WxP() {
        return this.GJs;
    }

    @Override
    public String XgY() {
        return this.ewz;
    }

    @Override
    public boolean Xqg() {
        return this.Fqk;
    }

    @Override
    public com.bytedance.sdk.openadsdk.kF.Sj.sP YLl() {
        return this.nbp;
    }

    public int YZ() {
        return this.AVc;
    }

    @Override
    public boolean Yf() {
        return this.QZ == 1;
    }

    @Override
    public String Ym() {
        return this.DhB;
    }

    @Override
    public boolean Za() {
        return this.MGU;
    }

    @Override
    public vS Zq() {
        return this.yfI;
    }

    public int aF() {
        return this.dwU;
    }

    @Override
    public String aNB() {
        return this.ley;
    }

    @Override
    public String aZ() {
        return this.Wjd;
    }

    @Override
    public boolean aa() {
        return (TextUtils.isEmpty(TEQ()) || TextUtils.isEmpty(Ym())) ? false : true;
    }

    @Override
    public WMZ at() {
        return this.sU;
    }

    @Override
    public com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj cF() {
        return this.If;
    }

    @Override
    public String cKW() {
        JSONObject jSONObjectDhB;
        String strOptString = this.vll;
        if (TextUtils.isEmpty(strOptString) && (jSONObjectDhB = DhB()) != null) {
            strOptString = jSONObjectDhB.optString("req_id", "");
            LD(strOptString);
        }
        return strOptString == null ? "" : strOptString;
    }

    @Override
    public List<String> cX() {
        return this.LqL;
    }

    @Override
    public void caU() {
        this.oDQ = true;
    }

    @Override
    public double cra() {
        return Jcg(DhB());
    }

    @Override
    public JSONObject dLt() {
        JSONObject jSONObjectSP = SP();
        JSONObject jSONObjectTzV = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().TzV(String.valueOf(If()));
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectSP);
            jSONObject.put("creatives", jSONArray);
            jSONObject.put("did", 1);
            jSONObject.put("processing_time_ms", 100);
            jSONObject.put(TrackingKey.REQUEST_ID, "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa");
            jSONObject.put("s_receive_ts", 1);
            jSONObject.put("s_send_ts", 1);
            jSONObject.put("status_code", 20000);
            jSONObject.put("core_settings", jSONObjectTzV);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", "toJsonObjPlus", e10.getMessage());
        }
        return jSONObject;
    }

    @Override
    public int dNu() {
        HiB hiB = this.DKa;
        if (hiB == null) {
            return 2;
        }
        return hiB.sP();
    }

    @Override
    public int dU() {
        return this.ron;
    }

    @Override
    public void db(int i10) {
        this.AE = i10;
    }

    @Override
    public String dwU() {
        return this.Ei;
    }

    @Override
    public int dx() {
        return this.zR;
    }

    @Override
    public boolean eEJ() {
        b bVar = this.pfr;
        return bVar == null || bVar.l() != 1;
    }

    @Override
    public boolean eI() {
        return this.f20468kb;
    }

    @Override
    public int eJi() {
        return this.UmR;
    }

    @Override
    public String eMB() {
        return this.dLt;
    }

    @Override
    public kF eNi() {
        return this.Jw;
    }

    @Override
    public com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj efv() {
        return this.cra;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            sU sUVar = (sU) obj;
            if (this.Wjd.equals(sUVar.aZ()) && this.xhi.equals(sUVar.mZN())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean ewz() {
        return DKa() == 1;
    }

    @Override
    public sP fAj() {
        return this.cF;
    }

    @Override
    public int fF() {
        return this.HS;
    }

    public String fgU() {
        return this.eI;
    }

    public int gFR() {
        return this.Hs;
    }

    @Override
    public String gR() {
        return this.fF;
    }

    @Override
    public uvD gY() {
        return this.uP;
    }

    @Override
    public int gq() {
        return this.hzV;
    }

    @Override
    public zR hLo() {
        return this.Za;
    }

    @Override
    public com.bytedance.sdk.component.uA.sP.Sj hif() {
        com.bytedance.sdk.component.uA.sP.Sj sj2 = new com.bytedance.sdk.component.uA.sP.Sj();
        sj2.Sj(this.Uc);
        sj2.sP(this.Wjd);
        sj2.Sj(mZN());
        return sj2;
    }

    @Override
    public boolean hzV() {
        return this.rB == 2;
    }

    public int iO() {
        return this.MuB;
    }

    public int iUm() {
        return this.TO;
    }

    @Override
    public int ib() {
        return this.f20472vb;
    }

    @Override
    public void jU() {
        this.sU.HiB();
        Jcg(false);
    }

    @Override
    public String jb() {
        return this.Ir;
    }

    @Override
    public int jjS() {
        return this.FPG;
    }

    @Override
    public int kF() {
        return this.TX;
    }

    @Override
    public List<String> kb() {
        return this.Yf;
    }

    @Override
    public void ley(String str) {
        this.Ss = str;
    }

    @Override
    public int liH() {
        if (this.Xqg != 2) {
            this.Xqg = 1;
        }
        return this.Xqg;
    }

    @Override
    public String mZN() {
        return this.xhi;
    }

    @Override
    public int mj() {
        return this.GMp;
    }

    public int nD() {
        return this.RrR;
    }

    @Override
    public JSONObject nP() {
        return this.tY;
    }

    @Override
    public int nbp() {
        try {
            JSONObject jSONObjectDhB = DhB();
            if (jSONObjectDhB != null) {
                return jSONObjectDhB.optInt("rec_clk", 0);
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int nc() {
        return this.IPx;
    }

    @Override
    public void ndK(int i10) {
        this.UmR = i10;
    }

    @Override
    public int nou() {
        return this.tX;
    }

    @Override
    public List<FilterWord> nru() {
        return this.RiZ;
    }

    @Override
    public int nw() {
        return this.uA;
    }

    @Override
    public boolean oDQ() {
        Fmk fmk;
        return Ph() && !UmR() && (fmk = this.jjS) != null && fmk.Sj() == 1;
    }

    @Override
    public int oWa() {
        int i10 = this.Ph;
        if (i10 > 0) {
            return i10;
        }
        return 20;
    }

    @Override
    public boolean pR() {
        return this.Sj;
    }

    @Override
    public int pfr() {
        return this.roy;
    }

    @Override
    public void qRN(int i10) {
        this.rN = i10;
    }

    @Override
    public boolean rB() {
        return DKa() == 3 || DKa() == 4;
    }

    @Override
    public boolean rN() {
        return this.Fmk;
    }

    public int rZ() {
        return this.IOh;
    }

    @Override
    public int rd() {
        return this.AE;
    }

    @Override
    public String ron() {
        return this.WMZ;
    }

    @Override
    public String roy() {
        return this.Ss;
    }

    @Override
    public void sP(boolean z10) {
        this.Bml = z10;
    }

    @Override
    public uP sU() {
        return this.Ov;
    }

    @Override
    public int sdp() {
        return this.f20464dx;
    }

    @Override
    public dNu sef() {
        return this.f20470rd;
    }

    @Override
    public boolean tPD() {
        return this.hif;
    }

    @Override
    public boolean tR() {
        return this.f20474yr;
    }

    @Override
    public Zq tX() {
        return this.DPc;
    }

    @Override
    public float tY() {
        if (this.oWa <= 0.0f) {
            this.oWa = 100.0f;
        }
        return (this.oWa * 1000.0f) / 1000.0f;
    }

    @Override
    public String tc() {
        return this.jU;
    }

    @Override
    public EjP tz() {
        return this.xD;
    }

    @Override
    public boolean uA() {
        return this.Bml;
    }

    public String uE() {
        return this.Mts;
    }

    @Override
    public String uP() {
        return this.f20463db;
    }

    @Override
    public int uWH() {
        String strValueOf;
        if (hLo() != null && hLo().sP() >= 0) {
            return hLo().sP();
        }
        if (xD() != null) {
            strValueOf = xD().getCodeId();
        } else {
            int iIf = If();
            strValueOf = iIf != 0 ? String.valueOf(iIf) : null;
        }
        if (strValueOf != null) {
            return com.bytedance.sdk.openadsdk.core.dNu.EjP().Ym(strValueOf);
        }
        return 30;
    }

    @Override
    public HiB uvD() {
        return this.DKa;
    }

    @Override
    public long vP() {
        return this.TEQ;
    }

    @Override
    public void vS(String str) {
        this.DhB = str;
    }

    @Override
    public int vb() {
        JSONObject jSONObject = this.dU;
        if (jSONObject != null) {
            return jSONObject.optInt("easy_playable_skip_duration", 0);
        }
        return 0;
    }

    @Override
    public b vll() {
        return this.gY;
    }

    @Override
    public void wE(String str) {
        this.NPW = str;
    }

    @Override
    public AdSlot xD() {
        return this.nru;
    }

    @Override
    public boolean xH() {
        return this.Snq;
    }

    @Override
    public void xhi(int i10) {
        this.TT = i10;
    }

    @Override
    public String xu() {
        return this.LD;
    }

    @Override
    public int xzt() {
        return this.cX;
    }

    @Override
    public boolean yfI() {
        List<Integer> listTKC;
        return (xhi() == null || (listTKC = xhi().TKC()) == null || !listTKC.contains(57)) ? false : true;
    }

    @Override
    public boolean yr() {
        if (Ph() && !UmR()) {
            int iNextInt = new Random().nextInt(100);
            Fmk fmk = this.jjS;
            if (fmk != null && iNextInt < fmk.TKC()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int zR() {
        return this.f20466ib;
    }

    @Override
    public int zwV() {
        return this.f20465gq;
    }

    private String fF(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return com.bytedance.sdk.component.utils.uvD.Sj(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", "generate icon key error", th2.getMessage());
            return null;
        }
    }

    @Override
    public void Dq(boolean z10) {
        this.Snq = z10;
    }

    @Override
    public void Ei(int i10) {
        this.FPG = i10;
    }

    @Override
    public void EjP(boolean z10) {
        this.f20468kb = z10;
    }

    @Override
    public void Fm(int i10) {
        this.Grp = i10;
    }

    @Override
    public void Fmk(int i10) {
        this.nP = i10;
    }

    @Override
    public void HiB(int i10) {
        this.zR = i10;
    }

    @Override
    public void HpB(int i10) {
        this.rB = i10;
    }

    @Override
    public void JcM(int i10) {
        this.GMp = i10;
    }

    @Override
    public void LD(int i10) {
        this.f20465gq = i10;
    }

    @Override
    public int LqL() {
        return this.UHs;
    }

    @Override
    public void Mts(int i10) {
        this.xzt = i10;
    }

    @Override
    public void RiZ(int i10) {
        this.RrR = i10;
    }

    @Override
    public void Sj(vS vSVar) {
        this.yfI = vSVar;
    }

    @Override
    public void TEQ(int i10) {
        this.liH = i10;
    }

    @Override
    public void TKC(boolean z10) {
        this.aNB = z10;
    }

    @Override
    public void UHs(int i10) {
        this.uA = i10;
    }

    @Override
    public void WMZ(int i10) {
        this.hzV = i10;
    }

    @Override
    public void Wjd(int i10) {
        this.ron = i10;
    }

    @Override
    public void Yf(int i10) {
        this.dwU = i10;
    }

    @Override
    public void Ym(int i10) {
        this.HS = i10;
    }

    @Override
    public void Zq(int i10) {
        this.HcZ = i10;
    }

    @Override
    public void aa(int i10) {
        this.f20471tz = i10;
    }

    @Override
    public void dNu(int i10) {
        this.mZN = i10;
    }

    @Override
    public boolean db() {
        sU.Sj sj2 = this.gR;
        if (sj2 != null) {
            return !TextUtils.isEmpty(sj2.Fmk());
        }
        int i10 = this.HS;
        return i10 == 9 || i10 == 10;
    }

    @Override
    public void dwU(int i10) {
        if (i10 < 0 || i10 > 30) {
            i10 = 6;
        }
        this.Jcg = i10;
    }

    @Override
    public void dx(int i10) {
        this.Uc = i10;
    }

    @Override
    public void ib(int i10) {
        this.f20464dx = i10;
    }

    @Override
    public void jb(int i10) {
        this.tX = i10;
    }

    @Override
    public void kF(int i10) {
        this.IPx = i10;
    }

    @Override
    public int ley() {
        int i10 = this.zR;
        if (i10 == 5 || i10 == 6 || i10 == 33) {
            return 1;
        }
        if (Fqk()) {
            return 2;
        }
        return this.qRN;
    }

    @Override
    public LqL ndK() {
        return this.Lip;
    }

    @Override
    public int qRN() {
        aa aaVar = this.zwV;
        if (aaVar == null) {
            return 0;
        }
        return aaVar.Sj();
    }

    @Override
    public void sP(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2) {
        this.cra = sj2;
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(sj2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
    }

    @Override
    public void sU(int i10) {
        this.IOh = i10;
    }

    @Override
    public void sef(int i10) {
        this.TO = i10;
    }

    @Override
    public void uA(boolean z10) {
        this.f20474yr = z10;
    }

    @Override
    public void uP(int i10) {
        this.roy = i10;
    }

    @Override
    public void uvD(int i10) {
        this.eMB = i10;
    }

    @Override
    public void vS(int i10) {
        this.ndK = i10;
    }

    @Override
    public int wE() {
        return this.ndK;
    }

    @Override
    public void xD(int i10) {
        this.cX = i10;
    }

    @Override
    public sU.Sj xhi() {
        return this.gR;
    }

    @Override
    public void zR(int i10) {
        this.Hs = i10;
    }

    private static double Jcg(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    @Override
    public void Dq(int i10) {
        this.UHs = i10;
    }

    @Override
    public void EjP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f20464dx = 4;
        this.Wjd = jSONObject.optString("id");
        this.Ei = jSONObject.optString(EventConstants.KEY_SOURCE);
        EjP ejP = new EjP();
        this.xD = ejP;
        ejP.TKC(jSONObject.optString("pkg_name"));
        this.xD.sP(jSONObject.optString("name"));
        this.xD.Sj(jSONObject.optString("download_url"));
    }

    @Override
    public void Fmk(String str) {
        this.wE = str;
    }

    @Override
    public void HiB(JSONObject jSONObject) {
        this.dU = jSONObject;
    }

    public void LD(String str) {
        this.vll = str;
    }

    @Override
    public void LqL(int i10) {
        this.Xqg = i10;
    }

    @Override
    public void RiZ(String str) {
        this.HpB = str;
    }

    @Override
    public void Sj(RiZ riZ) {
        this.Aw = riZ;
    }

    @Override
    public void TEQ(String str) {
        this.Ir = str;
    }

    @Override
    public void TKC(uvD uvd) {
        this.dNu.add(uvd);
    }

    @Override
    public void TzV(int i10) {
        this.AVc = i10;
    }

    @Override
    public void Yf(String str) {
        if (TextUtils.isEmpty(str)) {
            this.Dq = com.bytedance.sdk.openadsdk.kF.Sj.TKC.TKC;
        } else {
            this.Dq = str;
        }
    }

    @Override
    public void Ym(String str) {
        this.Ei = str;
    }

    @Override
    public void Zq(String str) {
        this.LD = str;
    }

    @Override
    public void aa(String str) {
        this.Mts = str;
    }

    @Override
    public void dNu(String str) {
        this.JcM = str;
    }

    @Override
    public void dx(String str) {
        this.dLt = str;
    }

    @Override
    public void ib(String str) {
        this.WxP = str;
    }

    @Override
    public void kF(String str) {
        this.WMZ = str;
    }

    @Override
    public void sU(String str) {
        this.xhi = str;
    }

    @Override
    public void sef(String str) {
        this.ley = str;
    }

    @Override
    public void uA(int i10) {
        this.QZ = i10;
    }

    @Override
    public String uP(String str) {
        JSONObject jSONObjectDhB = DhB();
        return jSONObjectDhB != null ? jSONObjectDhB.optString("rit", str) : str;
    }

    @Override
    public void uvD(String str) {
        this.fF = str;
    }

    @Override
    public void vS(boolean z10) {
        this.Fmk = z10;
    }

    @Override
    public void wE(int i10) {
        this.f20467jb = i10;
    }

    @Override
    public void zR(String str) {
        this.eI = str;
    }

    @Override
    public void Dq(String str) {
        this.f20469mj = str;
    }

    @Override
    public void FPG(int i10) {
        this.GJs = Math.max(0, i10);
    }

    @Override
    public void HiB(boolean z10) {
        this.Fqk = z10;
    }

    @Override
    public int Jcg() {
        return this.Ym;
    }

    @Override
    public void Sj(dNu dnu) {
        this.f20470rd = dnu;
    }

    @Override
    public void TEQ(boolean z10) {
        this.sP = z10;
    }

    @Override
    public void TKC(JSONObject jSONObject) {
        this.tY = jSONObject;
    }

    @Override
    public void TzV(String str) {
        this.Wjd = str;
    }

    @Override
    public void Ym(boolean z10) {
        this.efv = z10;
    }

    @Override
    public void aa(boolean z10) {
        this.vS = z10;
    }

    @Override
    public void sP(double d10) {
        if (d10 != 2.0d && d10 != 1.0d) {
            this.TX = 2;
        } else {
            this.TX = (int) d10;
        }
    }

    @Override
    public void uA(String str) {
        this.SP = str;
    }

    @Override
    public void vS(JSONObject jSONObject) {
        this.cF.Sj(jSONObject);
    }

    @Override
    public void Jcg(boolean z10) {
        this.DKj = z10;
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2) {
        this.If = sj2;
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(sj2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
    }

    @Override
    public void TKC(b bVar) {
        this.EZ = bVar;
    }

    @Override
    public void fF(int i10) {
        this.Ph = i10;
    }

    @Override
    public void ley(int i10) {
        this.MuB = i10;
    }

    @Override
    public void Jcg(String str) {
        this.f20463db = str;
    }

    @Override
    public void TKC(long j10) {
        this.sef = j10;
    }

    @Override
    public void sP(JSONObject jSONObject) {
        this.cKW = jSONObject;
    }

    @Override
    public void Jcg(int i10) {
        this.qRN = i10;
    }

    @Override
    public void Sj(HiB hiB) {
        this.DKa = hiB;
    }

    @Override
    public void sP(uvD uvd) {
        this.uP = uvd;
    }

    @Override
    public void Sj(uP uPVar) {
        this.Ov = uPVar;
    }

    @Override
    public void sP(long j10) {
        this.sdp = j10;
    }

    private JSONObject sP(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<FilterWord> it = filterWord.getOptions().iterator();
                    while (it.hasNext()) {
                        jSONArray.put(sP(it.next()));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("options", jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override
    public void Sj(int i10, int i11) {
        this.f20466ib = i10;
        this.zR = i10;
        if (this.nru == null) {
            this.zR = 0;
            return;
        }
        if (i11 <= 0) {
            i11 = DKa();
        }
        if (this.nru.getNativeAdType() != 3 && this.nru.getDurationSlotType() != 3 && i11 != 3) {
            if (this.nru.getNativeAdType() != 7 && this.nru.getNativeAdType() != 8 && this.nru.getDurationSlotType() != 7 && this.nru.getDurationSlotType() != 8 && i11 != 7 && i11 != 8) {
                if (uP.sP(this)) {
                    this.zR = 4;
                    return;
                }
                if (this.f20466ib == 4 && !uP.sP(this)) {
                    this.zR = 0;
                }
                if (i10 >= 5) {
                    this.zR = 0;
                    return;
                }
                if (this.f20466ib == 2 && sdp() != 3) {
                    this.zR = 0;
                    return;
                } else {
                    if (i10 == 0 || (i10 == 1 && sdp() != 3)) {
                        this.zR = 0;
                        return;
                    }
                    return;
                }
            }
            if (uP.TKC(this)) {
                this.zR = 12;
                return;
            }
            if (uP.sP(this)) {
                this.zR = 9;
                return;
            }
            if (this.f20466ib == 5 && !TzV.EjP(this)) {
                this.zR = 7;
            }
            if (this.f20466ib == 6 && !TzV.sP(this)) {
                this.zR = 7;
            }
            if (this.f20466ib == 8 && rZ() != 100) {
                this.zR = 7;
            }
            if (this.f20466ib == 19 && TextUtils.isEmpty(this.wE)) {
                this.zR = 7;
            }
            if (this.f20466ib == 20 && TextUtils.isEmpty(this.wE)) {
                this.zR = 7;
            }
            if (this.f20466ib == 38 && !TzV.TKC(this)) {
                this.zR = 7;
            }
            if (i10 < 5) {
                this.zR = 7;
                return;
            }
            return;
        }
        this.zR = 14;
    }

    @Override
    public void EjP(long j10) {
        this.TEQ = j10;
    }

    @Override
    public void sP(b bVar) {
        this.gY = bVar;
    }

    @Override
    public void sP(int i10) {
        this.uvD = i10;
    }

    @Override
    public int sP() {
        return this.uvD;
    }

    @Override
    public void Sj(double d10) {
        if (d10 != 2.0d && d10 != 1.0d) {
            this.f20472vb = 1;
        } else {
            this.f20472vb = (int) d10;
        }
    }

    @Override
    public void Sj(uA uAVar) {
        this.TFd = uAVar;
    }

    @Override
    public void Sj(AdSlot adSlot) {
        this.nru = adSlot;
    }

    @Override
    public void Sj(sU.Sj sj2) {
        this.gR = sj2;
        com.bytedance.sdk.component.adexpress.Sj.TKC.EjP ejPUK = UK();
        if (ejPUK != null && !db()) {
            com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(ejPUK);
        }
        if (sj2 == null || TextUtils.isEmpty(sj2.Zq())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(oI(), CommonLogUtil.TAG_AD);
    }

    @Override
    public void Sj(LqL lqL) {
        this.Lip = lqL;
        if (lqL == null || TextUtils.isEmpty(lqL.TKC())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(Ngd(), "adv3");
    }

    @Override
    public void Sj(b bVar) {
        this.pfr = bVar;
    }

    @Override
    public void Sj(aa aaVar) {
        this.zwV = aaVar;
    }

    @Override
    public void Sj(uvD uvd) {
        Sj(uvd, sU.f20458aa);
        String strFF = fF(uvd.Sj());
        if (!TextUtils.isEmpty(strFF)) {
            uvd.sP(strFF);
        }
        this.kF = uvd;
    }

    private void Sj(uvD uvd, int i10) {
        if (uvd != null) {
            try {
                if (TextUtils.isEmpty(uvd.Sj())) {
                    return;
                }
                if (uvd.sP() == 0 && uvd.TKC() == 0) {
                    uvd.Sj(i10);
                    uvd.sP(i10);
                    return;
                }
                if (uvd.sP() == 0) {
                    if (uvd.TKC() > i10) {
                        uvd.sP(i10);
                        uvd.Sj(i10);
                        return;
                    } else {
                        uvd.Sj(uvd.TKC());
                        return;
                    }
                }
                if (uvd.TKC() == 0) {
                    if (uvd.sP() > i10) {
                        uvd.sP(i10);
                        uvd.Sj(i10);
                        return;
                    } else {
                        uvd.sP(uvd.sP());
                        return;
                    }
                }
                if (uvd.sP() > uvd.TKC()) {
                    if (uvd.sP() > i10) {
                        uvd.sP((int) (i10 / (uvd.sP() / uvd.TKC())));
                        uvd.Sj(i10);
                        return;
                    }
                    return;
                }
                if (uvd.TKC() > i10) {
                    uvd.Sj((int) (i10 * (uvd.sP() / uvd.TKC())));
                    uvd.sP(i10);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public void Sj(EjP ejP) {
        this.xD = ejP;
    }

    @Override
    public void Sj(Ym ym2) {
        this.Fm = ym2;
    }

    @Override
    public void Sj(FilterWord filterWord) {
        this.RiZ.add(filterWord);
    }

    @Override
    public void Sj(Map<String, Object> map) {
        this.f20473xu = map;
    }

    @Override
    public void Sj(float f10) {
        this.oWa = f10;
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj sj2) {
        this.tPD = sj2;
    }

    @Override
    public void Sj(Zq zq2) {
        this.DPc = zq2;
    }

    @Override
    public void Sj(Fmk fmk) {
        this.jjS = fmk;
    }

    @Override
    public void Sj(kF kFVar) {
        this.Jw = kFVar;
    }

    @Override
    public void Sj(PAGBannerSize pAGBannerSize) {
        this.XgY = pAGBannerSize;
    }

    @Override
    public void Sj(zR zRVar) {
        this.Za = zRVar;
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.kF.Sj.sP sPVar) {
        this.nbp = sPVar;
    }

    @Override
    public void Sj(int i10) {
        this.Zq = i10;
    }

    @Override
    public int Sj() {
        return this.Zq;
    }
}
