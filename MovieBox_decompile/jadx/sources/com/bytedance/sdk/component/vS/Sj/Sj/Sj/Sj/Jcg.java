package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

public class Jcg extends TKC {
    protected List<String> Sj;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;

    public Jcg(Context context, com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        super(context);
        this.Sj = new ArrayList();
        this.TKC = sj2;
        if (sj2 == null) {
            this.TKC = com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj.TKC();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023 A[EXC_TOP_SPLITTER, PHI: r0 r1
      0x0023: PHI (r0v2 int) = (r0v0 int), (r0v6 int) binds: [B:10:0x0028, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE]
      0x0023: PHI (r1v2 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:10:0x0028, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public int EjP() {
        Cursor cursorSj;
        int i10 = 0;
        try {
            cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), new String[]{"count(1)"}, null, null, null, null, null);
            if (cursorSj != null) {
                try {
                    cursorSj.moveToFirst();
                    i10 = cursorSj.getInt(0);
                } catch (Throwable unused) {
                    if (cursorSj != null) {
                        try {
                            cursorSj.close();
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            if (cursorSj != null) {
                cursorSj.close();
            }
        } catch (Throwable unused3) {
            cursorSj = null;
        }
        return i10;
    }

    public byte Sj() {
        return (byte) 1;
    }

    public byte TKC() {
        return (byte) 2;
    }

    @Override
    public String sP() {
        return Dq.Jcg().EjP().EjP();
    }

    public static String TKC(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i10, String str) {
        long jSj = com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj(i10, HiB());
        if (jSj <= 0) {
            jSj = 1;
        } else if (jSj > 100) {
            jSj = 100;
        }
        ArrayList arrayList = new ArrayList();
        this.Sj.clear();
        Cursor cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), new String[]{"id", AppMeasurementSdk.ConditionalUserProperty.VALUE, "encrypt"}, null, null, null, null, str + " DESC limit " + jSj);
        if (cursorSj != null) {
            while (cursorSj.moveToNext()) {
                try {
                    try {
                        String string = cursorSj.getString(cursorSj.getColumnIndex("id"));
                        String string2 = cursorSj.getString(cursorSj.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        if (cursorSj.getInt(cursorSj.getColumnIndex("encrypt")) == 1) {
                            string2 = Dq.Jcg().uvD().Sj(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.Sj.add(string);
                        } else {
                            if (arrayList.size() > 100) {
                                break;
                            }
                            com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj sj2 = new com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj(string, new JSONObject(string2));
                            sj2.sP(TKC());
                            sj2.Sj(Sj());
                            arrayList.add(sj2);
                        }
                    } catch (Throwable unused) {
                    }
                } finally {
                    try {
                        cursorSj.close();
                        if (!this.Sj.isEmpty()) {
                            Sj(this.Sj);
                            this.Sj.clear();
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        return arrayList;
    }

    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> sP(String str) {
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2 = this.TKC;
        return sj2 == null ? new ArrayList() : Sj(sj2.sP(), str);
    }

    public void sP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 : list) {
            linkedList.add(sj2.TKC());
            com.bytedance.sdk.component.vS.Sj.TKC.Sj.TEQ(sj2);
        }
        sP();
        linkedList.size();
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), "DELETE FROM " + sP() + " WHERE " + Sj("id", linkedList, 1000, true));
        TKC(linkedList);
    }

    private void sP(int i10, long j10) {
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j10), String.valueOf(i10)});
    }

    protected void Sj(List<String> list) {
        sP();
        list.size();
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), "DELETE FROM " + sP() + " WHERE " + Sj("id", list, 1000, true));
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.pfr(), list.size());
        TKC(list);
    }

    public void Sj(int i10, long j10) {
        sP(i10, j10);
    }

    public boolean Sj(int i10) {
        return this.TKC != null && EjP() >= this.TKC.Sj();
    }

    private static String Sj(String str, List<?> list, int i10, boolean z10) {
        int i11;
        String str2 = z10 ? " IN " : " NOT IN ";
        String str3 = z10 ? " OR " : " AND ";
        int iMin = Math.min(i10, 1000);
        int size = list.size();
        if (size % iMin == 0) {
            i11 = size / iMin;
        } else {
            i11 = (size / iMin) + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 * iMin;
            String strSj = Sj(TextUtils.join("','", list.subList(i13, Math.min(i13 + iMin, size))), "");
            if (i12 != 0) {
                sb2.append(str3);
            }
            sb2.append(str);
            sb2.append(str2);
            sb2.append("('");
            sb2.append(strSj);
            sb2.append("')");
        }
        return Sj(sb2.toString(), str + str2 + "('')");
    }

    private static String Sj(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}
