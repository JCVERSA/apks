package com.bytedance.sdk.openadsdk.EjP;

import org.json.JSONObject;

public class Jcg {
    private long EjP;
    private long HiB;
    private long Sj;
    private long TKC;
    private long sP;

    public void EjP(long j10) {
        if (this.EjP <= 0) {
            this.EjP = j10;
        }
    }

    public void HiB(long j10) {
        if (this.HiB <= 0) {
            this.HiB = j10;
        }
    }

    public void Sj(long j10) {
        if (this.Sj <= 0) {
            this.Sj = j10;
        }
    }

    public void TKC(long j10) {
        if (this.TKC <= 0) {
            this.TKC = j10;
        }
    }

    public void sP(long j10) {
        if (this.sP <= 0) {
            this.sP = j10;
        }
    }

    public boolean Sj() {
        return this.Sj > 0;
    }

    public JSONObject sP() {
        return Sj((JSONObject) null);
    }

    public void Sj(long j10, float f10) {
        if (f10 > 0.0f) {
            Sj(j10);
        }
        double d10 = f10;
        if (d10 >= 0.25d) {
            Sj(j10);
            sP(j10);
        }
        if (d10 >= 0.5d) {
            Sj(j10);
            sP(j10);
            TKC(j10);
        }
        if (d10 >= 0.75d) {
            Sj(j10);
            sP(j10);
            TKC(j10);
            EjP(j10);
        }
        if (f10 >= 1.0f) {
            Sj(j10);
            sP(j10);
            TKC(j10);
            EjP(j10);
            HiB(j10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x0031 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x003c A[Catch: Exception -> 0x0042, TRY_LEAVE, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:6:0x0010 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001b A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    public JSONObject Sj(JSONObject jSONObject) {
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
                j10 = this.Sj;
                if (j10 > 0) {
                    jSONObject.put("show_start", j10);
                    j11 = this.sP;
                    if (j11 > 0) {
                        jSONObject.put("show_firstQuartile", j11);
                        j12 = this.TKC;
                        if (j12 > 0) {
                            jSONObject.put("show_mid", j12);
                            j13 = this.EjP;
                            if (j13 > 0) {
                                jSONObject.put("show_thirdQuartile", j13);
                                j14 = this.HiB;
                                if (j14 > 0) {
                                    jSONObject.put("show_full", j14);
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } else {
            j10 = this.Sj;
            if (j10 > 0) {
                jSONObject.put("show_start", j10);
                j11 = this.sP;
                if (j11 > 0) {
                    jSONObject.put("show_firstQuartile", j11);
                    j12 = this.TKC;
                    if (j12 > 0) {
                        jSONObject.put("show_mid", j12);
                        j13 = this.EjP;
                        if (j13 > 0) {
                            jSONObject.put("show_thirdQuartile", j13);
                            j14 = this.HiB;
                            if (j14 > 0) {
                                jSONObject.put("show_full", j14);
                            }
                        }
                    }
                }
            }
        }
        return jSONObject;
    }
}
