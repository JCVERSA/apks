package a6;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;
import y5.c;

public class b {

    private int f214a;

    private int f215b;

    private long f216c;

    private double f217d;

    private String f218e;

    private String f219f;

    private String f220g;

    private String f221h;

    private String f222i;

    private String f223j;

    private double f224k;

    private int f225l;

    private int f226m;

    private float f227n = -1.0f;

    private int f228o = 0;

    private int f229p = 0;

    private int f230q = 0;

    private int f231r = 0;

    private int f232s = 307200;

    private int f233t = 1;

    public int A() {
        return this.f231r;
    }

    public boolean B() {
        return this.f230q == 0;
    }

    public int C() {
        return this.f214a;
    }

    public void D(int i10) {
        this.f214a = i10;
    }

    public void E(String str) {
        this.f219f = str;
    }

    public int F() {
        return this.f229p;
    }

    public String G() {
        if (TextUtils.isEmpty(this.f223j)) {
            this.f223j = c.a(this.f220g);
        }
        return this.f223j;
    }

    public String H() {
        return this.f218e;
    }

    public void I(int i10) {
        this.f229p = i10;
    }

    public int J() {
        return this.f230q;
    }

    public double K() {
        return this.f217d;
    }

    public void L(int i10) {
        this.f230q = i10;
    }

    public void M(String str) {
        this.f223j = str;
    }

    public int N() {
        return this.f233t;
    }

    public float a() {
        return this.f227n;
    }

    public void b(int i10) {
        this.f228o = i10;
    }

    public int c() {
        return this.f226m;
    }

    public void d(int i10) {
        this.f226m = i10;
    }

    public void e(String str) {
        this.f221h = str;
    }

    public String f() {
        return this.f222i;
    }

    public long g() {
        return this.f216c;
    }

    public void h(int i10) {
        this.f232s = i10;
    }

    public void i(String str) {
        this.f222i = str;
    }

    public double j() {
        return this.f224k;
    }

    public void k(int i10) {
        this.f231r = i10;
    }

    public int l() {
        return this.f228o;
    }

    public int m() {
        return this.f225l;
    }

    public void n(double d10) {
        this.f217d = d10;
    }

    public void o(int i10) {
        this.f225l = i10;
    }

    public void p(long j10) {
        this.f216c = j10;
    }

    public void q(String str) {
        this.f218e = str;
    }

    public String r() {
        return this.f219f;
    }

    public void s(int i10) {
        this.f233t = Math.min(4, Math.max(1, i10));
    }

    public int t() {
        return this.f215b;
    }

    public void u(int i10) {
        this.f215b = i10;
    }

    public void v(String str) {
        this.f220g = str;
    }

    public JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", C());
            jSONObject.put("cover_url", r());
            jSONObject.put("cover_width", t());
            jSONObject.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, z());
            jSONObject.put("file_hash", G());
            jSONObject.put("resolution", H());
            jSONObject.put("size", g());
            jSONObject.put("video_duration", K());
            jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, x());
            jSONObject.put("playable_download_url", f());
            jSONObject.put("if_playable_loading_show", l());
            jSONObject.put("remove_loading_page_type", F());
            jSONObject.put("fallback_endcard_judge", m());
            jSONObject.put("video_preload_size", y());
            jSONObject.put("reward_video_cached_type", J());
            jSONObject.put("execute_cached_type", A());
            jSONObject.put("endcard_render", c());
            jSONObject.put("replay_time", N());
            jSONObject.put("play_speed_ratio", a());
            if (j() > 0.0d) {
                jSONObject.put("start", j());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String x() {
        return this.f220g;
    }

    public int y() {
        if (this.f232s < 0) {
            this.f232s = 307200;
        }
        long j10 = this.f232s;
        long j11 = this.f216c;
        if (j10 > j11) {
            this.f232s = (int) j11;
        }
        return this.f232s;
    }

    public String z() {
        return this.f221h;
    }
}
