package com.bytedance.sdk.openadsdk.core.settings;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class sP {
    public int Dq;
    public int EjP;
    public int Fmk;
    public int HiB;
    public int JcM;
    public int Jcg;
    public boolean LD;
    public int LqL;
    public JSONObject Mts;
    public int RiZ;
    public String Sj;
    public int TEQ;
    public int TKC;
    public int TzV;
    public int WMZ;
    public boolean Yf;
    public int Ym;
    public int Zq;

    public int f20482aa;
    public int dNu;

    public boolean f20483dx;
    public boolean fF;

    public List<String> f20484ib;
    public int kF;
    public int ley;
    public int sP;
    public int sU;
    public int sef;
    public int uA;
    public int uP;
    public int uvD;
    public int vS;
    public int wE;
    public int zR;

    public sP(JSONObject jSONObject) {
        this.sP = 1;
        this.TKC = 1;
        this.EjP = 2;
        this.HiB = 1;
        this.vS = 100;
        this.Jcg = 0;
        this.Dq = 2;
        this.uA = 1;
        this.TEQ = 3;
        this.Ym = 30;
        this.f20482aa = 30;
        this.Fmk = 1;
        this.sef = 1;
        this.Zq = 2;
        this.uvD = 1500;
        this.dNu = 2;
        this.TzV = 3500;
        this.RiZ = 0;
        this.sU = 5;
        this.f20483dx = false;
        this.zR = 0;
        this.kF = 2;
        this.uP = -1;
        this.wE = 0;
        this.ley = 0;
        this.LqL = 5;
        this.Yf = true;
        this.LD = false;
        this.fF = false;
        this.JcM = 0;
        this.WMZ = -1;
        new JSONObject();
        this.Mts = jSONObject;
        if (jSONObject == null) {
            return;
        }
        this.Sj = jSONObject.optString("code_id");
        this.sP = jSONObject.optInt("auto_play", 1);
        this.WMZ = jSONObject.optInt("endcard_close_time", -1);
        this.TKC = jSONObject.optInt("voice_control", 1);
        this.EjP = jSONObject.optInt("rv_preload", 2);
        this.HiB = jSONObject.optInt("nv_preload", 1);
        this.vS = Math.min(100, Math.max(0, jSONObject.optInt("proportion_watching", 100)));
        this.Jcg = jSONObject.optInt("skip_time_displayed", 0);
        this.Dq = jSONObject.optInt("video_skip_result", 2);
        this.uA = jSONObject.optInt("reg_creative_control", 1);
        this.TEQ = jSONObject.optInt("play_bar_show_time", 3);
        int iOptInt = jSONObject.optInt("rv_skip_time", 30);
        this.Ym = iOptInt;
        if (iOptInt < 0) {
            this.Ym = 30;
        }
        this.Fmk = jSONObject.optInt("voice_control", 2);
        this.sef = jSONObject.optInt("if_show_win", 1);
        this.Zq = jSONObject.optInt("sp_preload", 2);
        this.uvD = jSONObject.optInt("stop_time", 1500);
        this.dNu = jSONObject.optInt("native_playable_delay", 2);
        this.TzV = jSONObject.optInt("time_out_control", -1);
        this.uP = jSONObject.optInt("playable_close_time", -1);
        this.RiZ = jSONObject.optInt("playable_reward_type", 0);
        this.zR = jSONObject.optInt("reward_is_callback", 0);
        int iOptInt2 = jSONObject.optInt("iv_skip_time", 5);
        this.sU = iOptInt2;
        if (iOptInt2 < 0) {
            this.sU = 5;
        }
        Sj(jSONObject.optJSONArray("parent_tpl_ids"));
        this.kF = jSONObject.optInt("slot_type", 2);
        this.f20483dx = jSONObject.optBoolean("close_on_click", false);
        this.wE = jSONObject.optInt("allow_system_back", 0);
        this.ley = jSONObject.optInt("splash_skip_time", 0);
        this.LqL = jSONObject.optInt("splash_image_count_down_time", 5);
        this.LD = jSONObject.optBoolean("splash_count_down_time_off", false);
        this.fF = jSONObject.optBoolean("splash_close_on_click", false);
        int iOptInt3 = jSONObject.optInt("splash_load_strategy", 0);
        this.JcM = iOptInt3;
        if (iOptInt3 < 0 || iOptInt3 > 1) {
            this.JcM = 0;
        }
        this.Yf = jSONObject.optBoolean("allow_mediaview_click", true);
        if (!Sj(this.TKC)) {
            this.TKC = 1;
        }
        if (!Sj(this.Fmk)) {
            this.Fmk = 1;
        }
        this.f20482aa = jSONObject.optInt("multi_rv_skip_time", 30);
    }

    private static boolean Sj(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public void Sj(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        this.f20484ib = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                this.f20484ib.add(jSONArray.get(i10).toString());
            } catch (Exception unused) {
                return;
            }
        }
    }

    public sP(String str, int i10) {
        this.sP = 1;
        this.TKC = 1;
        this.EjP = 2;
        this.HiB = 1;
        this.vS = 100;
        this.Jcg = 0;
        this.Dq = 2;
        this.uA = 1;
        this.TEQ = 3;
        this.Ym = 30;
        this.f20482aa = 30;
        this.Fmk = 1;
        this.sef = 1;
        this.Zq = 2;
        this.uvD = 1500;
        this.dNu = 2;
        this.TzV = 3500;
        this.RiZ = 0;
        this.sU = 5;
        this.f20483dx = false;
        this.zR = 0;
        this.kF = 2;
        this.uP = -1;
        this.wE = 0;
        this.ley = 0;
        this.LqL = 5;
        this.Yf = true;
        this.LD = false;
        this.fF = false;
        this.JcM = 0;
        this.WMZ = -1;
        this.Mts = new JSONObject();
        this.Sj = str;
        this.TKC = i10;
    }
}
