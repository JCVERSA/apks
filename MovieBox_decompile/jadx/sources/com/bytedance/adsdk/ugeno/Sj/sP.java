package com.bytedance.adsdk.ugeno.Sj;

import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

public class sP {
    private JSONObject Dq;
    private String EjP;
    private long HiB;
    private String Jcg;
    private Map<String, TreeMap<Float, String>> Sj;
    private int TKC;
    private long sP;
    private Sj vS;

    public static class Sj {
        public String Sj;
        public String sP;
    }

    public String Dq() {
        return this.Jcg;
    }

    public int EjP() {
        return this.TKC;
    }

    public String HiB() {
        return this.EjP;
    }

    public Sj Jcg() {
        return this.vS;
    }

    public JSONObject Sj() {
        return this.Dq;
    }

    public long TKC() {
        return this.sP;
    }

    public Map<String, TreeMap<Float, String>> sP() {
        return this.Sj;
    }

    public String toString() {
        return "AnimationModel{mKeyFramesMap=" + this.Sj + ", mDuration=" + this.sP + ", mPlayCount=" + this.TKC + ", mPlayDirection=" + this.EjP + ", mDelay=" + this.HiB + ", mTransformOrigin='" + this.vS + "', mTimingFunction='" + this.Jcg + "'}";
    }

    public long vS() {
        return this.HiB;
    }

    public void Sj(JSONObject jSONObject) {
        this.Dq = jSONObject;
    }

    public void sP(long j10) {
        this.HiB = j10;
    }

    public void Sj(Map<String, TreeMap<Float, String>> map) {
        this.Sj = map;
    }

    public void sP(String str) {
        this.Jcg = str;
    }

    public void Sj(long j10) {
        this.sP = j10;
    }

    public void Sj(int i10) {
        this.TKC = i10;
    }

    public void Sj(String str) {
        this.EjP = str;
    }

    public void Sj(Sj sj2) {
        this.vS = sj2;
    }
}
