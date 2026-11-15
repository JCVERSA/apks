package defpackage;

import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzt;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzfgn;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class vth implements v7i {
    public final wrh a;
    public final zzfgn b;
    public final a2g c;
    public final wth d;

    public vth(wth wthVar, wrh wrhVar, zzfgn zzfgnVar, a2g a2gVar) {
        this.a = wrhVar;
        this.b = zzfgnVar;
        this.c = a2gVar;
        this.d = wthVar;
    }

    @Override
    public final void zza(Throwable th) {
        wrh wrhVar = this.a;
        if (wrhVar == null) {
            return;
        }
        wrhVar.zzg(false);
        zzfgn zzfgnVar = this.b;
        if (zzfgnVar == null) {
            this.d.f.zzc(wrhVar.zzm());
        } else {
            zzfgnVar.zza(wrhVar);
            zzfgnVar.zzh();
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0095  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ea  */
    @Override
    public final void zzb(Object obj) {
        byte b;
        int i;
        long j;
        int iHashCode;
        int i2;
        wrh wrhVar = this.a;
        zzt zztVar = (zzt) obj;
        if (wrhVar != null) {
            wrhVar.zzg(zztVar == zzt.SUCCESS);
            zzfgn zzfgnVar = this.b;
            if (zzfgnVar == null) {
                this.d.f.zzc(wrhVar.zzm());
            } else {
                zzfgnVar.zza(wrhVar);
                zzfgnVar.zzh();
            }
        }
        a2g a2gVar = this.c;
        if (a2gVar != null) {
            String strZzb = this.d.d.zzb();
            if (TextUtils.isEmpty(strZzb)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(strZzb);
                Parcelable.Creator<com.google.android.gms.ads.internal.client.zzt> creator = com.google.android.gms.ads.internal.client.zzt.CREATOR;
                String strOptString = jSONObject.optString("type");
                String strOptString2 = jSONObject.optString("precision");
                String strOptString3 = jSONObject.optString("currency");
                long jOptLong = jSONObject.optLong(ES6Iterator.VALUE_PROPERTY, 0L);
                int iHashCode2 = strOptString.hashCode();
                byte b2 = -1;
                if (iHashCode2 != 66934) {
                    if (iHashCode2 != 66944) {
                        if (iHashCode2 == 1349395245 && strOptString.equals("ONE_PIXEL")) {
                            b = 2;
                        } else {
                            b = -1;
                        }
                    } else if (strOptString.equals("CPM")) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                } else if (strOptString.equals("CPC")) {
                    b = 1;
                } else {
                    b = -1;
                }
                if (b != 0) {
                    if (b == 1) {
                        j = jOptLong;
                        i = 2;
                    } else if (b != 2) {
                        i = 0;
                    } else {
                        jOptLong /= 1000;
                        i = 3;
                    }
                    iHashCode = strOptString2.hashCode();
                    if (iHashCode != -2131980260) {
                        if (iHashCode != 399232571) {
                            if (iHashCode == 1271254246 && strOptString2.equals("PUBLISHER_PROVIDED")) {
                                b2 = 1;
                            }
                        } else if (strOptString2.equals("PRECISE")) {
                            b2 = 2;
                        }
                    } else if (strOptString2.equals("ESTIMATED")) {
                        b2 = 0;
                    }
                    if (b2 != 0) {
                        i2 = 1;
                    } else if (b2 != 1) {
                        i2 = 2;
                    } else if (b2 != 2) {
                        i2 = 0;
                    } else {
                        i2 = 3;
                    }
                    a2gVar.F(new com.google.android.gms.ads.internal.client.zzt(i, i2, strOptString3, j));
                }
                i = 1;
                j = jOptLong;
                iHashCode = strOptString2.hashCode();
                if (iHashCode != -2131980260) {
                    if (iHashCode != 399232571) {
                        if (iHashCode == 1271254246) {
                            b2 = 1;
                        }
                    } else if (strOptString2.equals("PRECISE")) {
                        b2 = 2;
                    }
                } else if (strOptString2.equals("ESTIMATED")) {
                    b2 = 0;
                }
                if (b2 != 0) {
                    i2 = 1;
                } else if (b2 != 1) {
                    i2 = 2;
                } else if (b2 != 2) {
                    i2 = 0;
                } else {
                    i2 = 3;
                }
                a2gVar.F(new com.google.android.gms.ads.internal.client.zzt(i, i2, strOptString3, j));
            } catch (JSONException e) {
                zzv.zzp().x(e, "UrlPinger.pingUrl");
            }
        }
    }
}
