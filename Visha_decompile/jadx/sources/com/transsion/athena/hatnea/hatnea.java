package com.transsion.athena.hatnea;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.webkit.Profile;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.cookie.SerializableCookie;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.athena;
import com.transsion.athena.hatnea.anateh;
import com.transsion.athena.hatnea.hatnea;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.a4d;
import defpackage.c4d;
import defpackage.e4d;
import defpackage.e5d;
import defpackage.o3d;
import defpackage.ohd;
import defpackage.rbd;
import defpackage.sbd;
import defpackage.tbd;
import defpackage.wj;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import org.apache.commons.lang3.BooleanUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class hatnea extends enatha {
    private final boolean c;
    private final String d;
    private final List<AppIdData> e;
    private final SparseArray<String> f;
    boolean g;

    public static class a {
        public byte[] a;
        public int b;
        public List c;

        public a(byte[] bArr, int i, List list, int i2) {
            this.a = bArr;
            this.b = i;
            this.c = list;
        }

        public static a a(byte[] bArr, int i, List list, int i2) {
            return new a(bArr, i, list, i2);
        }
    }

    public hatnea(Handler handler, String str, @NonNull List<AppIdData> list, boolean z, @NonNull SparseArray<String> sparseArray) {
        super(handler);
        this.g = false;
        this.d = str;
        this.e = list;
        this.c = z;
        this.f = sparseArray;
    }

    @Override
    public void a() throws Throwable {
        long jA = a4d.f().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
        int i = 0;
        AppIdData appIdData = null;
        for (AppIdData appIdData2 : this.e) {
            if (!TextUtils.isEmpty(appIdData2.c) && TextUtils.equals(appIdData2.f, this.d)) {
                if (appIdData != null) {
                    if (!TextUtils.equals(appIdData.c, appIdData2.c)) {
                        i++;
                        break;
                    }
                } else {
                    i++;
                    appIdData = appIdData2;
                }
            }
        }
        if (i != 1) {
            if (i > 1) {
                ArrayList arrayList = new ArrayList();
                for (AppIdData appIdData3 : this.e) {
                    if (!TextUtils.isEmpty(appIdData3.c) && TextUtils.equals(appIdData3.f, this.d)) {
                        arrayList.add(appIdData3);
                    }
                }
                com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(arrayList);
            }
            appIdData = null;
        }
        long jQ = ((long) e5d.o().q()) * 1000;
        if (appIdData != null) {
            Pair<String, List<AppIdData>> pairA = a(0L, appIdData.c);
            List<AppIdData> list = (List) pairA.second;
            if (anehat.b(list)) {
                a(list, (String) pairA.first, jA, jQ, appIdData.d);
                return;
            }
            return;
        }
        Pair<String, List<AppIdData>> pairA2 = a(jA, null);
        String str = (String) pairA2.first;
        List<AppIdData> list2 = (List) pairA2.second;
        if (anehat.b(list2)) {
            a(list2, str, jA, jQ, 0);
        }
    }

    @Override
    public String c() {
        if (TextUtils.isEmpty(this.d)) {
            return Profile.DEFAULT_PROFILE_NAME;
        }
        try {
            String[] strArrSplit = this.d.split("//");
            if (strArrSplit.length > 0) {
                return strArrSplit[1].split("\\.")[0];
            }
        } catch (Exception e) {
            c4d.e("get domain exception : %s", e.getMessage());
        }
        return Profile.DEFAULT_PROFILE_NAME;
    }

    /* JADX WARN: Code duplicated, block: B:338:0x066d  */
    /* JADX WARN: Code duplicated, block: B:343:0x068c  */
    /* JADX WARN: Code duplicated, block: B:348:0x069b  */
    /* JADX WARN: Code duplicated, block: B:349:0x069e A[Catch: Exception -> 0x06b8, TryCatch #6 {Exception -> 0x06b8, blocks: (B:339:0x0676, B:341:0x0688, B:344:0x068e, B:346:0x0693, B:350:0x06a0, B:352:0x06a5, B:354:0x06ac, B:349:0x069e), top: B:378:0x0676 }] */
    /* JADX WARN: Code duplicated, block: B:378:0x0676 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:384:0x06e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:0x064e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:406:0x0719 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:417:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0109 A[Catch: Exception -> 0x0102, TryCatch #17 {Exception -> 0x0102, blocks: (B:32:0x00d7, B:35:0x00dc, B:37:0x00e2, B:40:0x00e7, B:42:0x00ed, B:45:0x00f2, B:48:0x00f9, B:51:0x0109, B:53:0x010f, B:55:0x011b, B:58:0x0120, B:54:0x0115), top: B:400:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x010f A[Catch: Exception -> 0x0102, TryCatch #17 {Exception -> 0x0102, blocks: (B:32:0x00d7, B:35:0x00dc, B:37:0x00e2, B:40:0x00e7, B:42:0x00ed, B:45:0x00f2, B:48:0x00f9, B:51:0x0109, B:53:0x010f, B:55:0x011b, B:58:0x0120, B:54:0x0115), top: B:400:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0115 A[Catch: Exception -> 0x0102, TryCatch #17 {Exception -> 0x0102, blocks: (B:32:0x00d7, B:35:0x00dc, B:37:0x00e2, B:40:0x00e7, B:42:0x00ed, B:45:0x00f2, B:48:0x00f9, B:51:0x0109, B:53:0x010f, B:55:0x011b, B:58:0x0120, B:54:0x0115), top: B:400:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    /* JADX WARN: Code duplicated, block: B:61:0x012e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0133  */
    /* JADX WARN: Code duplicated, block: B:65:0x0138  */
    /* JADX WARN: Code duplicated, block: B:68:0x013e A[Catch: Exception -> 0x0146, TRY_ENTER, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0149 A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:75:0x014f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0151 A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0157  */
    /* JADX WARN: Code duplicated, block: B:79:0x0159 A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:81:0x015f  */
    /* JADX WARN: Code duplicated, block: B:82:0x0161  */
    /* JADX WARN: Code duplicated, block: B:84:0x0165  */
    /* JADX WARN: Code duplicated, block: B:86:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x016a  */
    /* JADX WARN: Code duplicated, block: B:89:0x016d  */
    /* JADX WARN: Code duplicated, block: B:90:0x016e A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0176 A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:92:0x017e A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0186 A[Catch: Exception -> 0x0146, TryCatch #15 {Exception -> 0x0146, blocks: (B:94:0x018d, B:68:0x013e, B:90:0x016e, B:91:0x0176, B:92:0x017e, B:93:0x0186, B:73:0x0149, B:76:0x0151, B:79:0x0159), top: B:396:0x018d }] */
    private void a(List<AppIdData> list, String str, long j, long j2, int i) throws Throwable {
        long j3;
        long j4;
        String str2;
        String str3;
        int i2;
        String str4;
        a aVarA;
        String str5;
        String str6;
        String str7;
        rbd rbdVarF;
        int i3;
        com.transsion.athena.hatnea.a aVar;
        int i4;
        String str8;
        String str9;
        LinkedList linkedList;
        JSONArray jSONArray;
        boolean z;
        JSONObject jSONObject;
        JSONArray jSONArray2;
        AppIdData appIdData;
        String str10;
        JSONObject jSONObject2;
        String str11;
        int iHashCode;
        byte b;
        String str12 = "requestId";
        String str13 = "opid";
        long jA = j;
        long jMin = j2;
        int i5 = i;
        while (o3d.f(AthenaAnalytics.I())) {
            boolean zK = com.transsion.athena.taaneh.a.k(AthenaAnalytics.I());
            LinkedList linkedList2 = new LinkedList();
            JSONArray jSONArray3 = new JSONArray();
            Iterator<AppIdData> it = list.iterator();
            int i6 = 0;
            while (true) {
                boolean zHasNext = it.hasNext();
                String str14 = "events";
                j3 = jMin;
                String str15 = DownloadFacadeEnum.USER_NET;
                j4 = jA;
                String str16 = "tid";
                String str17 = NotificationCompat.CATEGORY_EVENT;
                str2 = str12;
                str3 = "";
                if (!zHasNext) {
                    break;
                }
                Iterator<AppIdData> it2 = it;
                AppIdData next = it.next();
                int i7 = i5;
                JSONArray jSONArray4 = new JSONArray();
                Iterator<com.transsion.athena.data.anehat> it3 = next.e.iterator();
                int i8 = 0;
                while (true) {
                    str9 = str13;
                    linkedList = linkedList2;
                    if (!it3.hasNext()) {
                        break;
                    }
                    com.transsion.athena.data.anehat next2 = it3.next();
                    for (com.transsion.athena.data.anehat.athena athenaVar : next2.c) {
                        int i9 = i6;
                        try {
                            jSONArray2 = jSONArray3;
                            appIdData = next;
                            try {
                                JSONObject jSONObjectPut = new JSONObject().put(str16, next2.a);
                                String str18 = athenaVar.a;
                                if (str18 == null) {
                                    str18 = "";
                                }
                                str10 = str14;
                                try {
                                    JSONObject jSONObjectPut2 = jSONObjectPut.put(str17, str18).put(TrackingKey.TS, athenaVar.b).put(str15, athenaVar.d);
                                    String str19 = athenaVar.c;
                                    if (str19 == null) {
                                        str19 = "";
                                    }
                                    String str20 = athenaVar.a;
                                    if (str20 == null) {
                                        str20 = "";
                                    }
                                    str15 = str15;
                                    zK = zK;
                                    if (!str20.equals("app_active")) {
                                        try {
                                            String str21 = athenaVar.a;
                                            if (str21 == null) {
                                                str21 = "";
                                            }
                                            if (!str21.equals("page_enter")) {
                                                String str22 = athenaVar.a;
                                                if (str22 == null) {
                                                    str22 = "";
                                                }
                                                if (!str22.equals("app_launch")) {
                                                    String str23 = athenaVar.a;
                                                    if (str23 == null) {
                                                        str23 = "";
                                                    }
                                                    if (!str23.equals("app_heartbeat")) {
                                                        jSONObjectPut2.put("eparam", str19);
                                                        str16 = str16;
                                                        str17 = str17;
                                                    } else {
                                                        if (TextUtils.isEmpty(str19)) {
                                                            jSONObject2 = new JSONObject();
                                                        } else {
                                                            jSONObject2 = new JSONObject(str19);
                                                        }
                                                        str11 = athenaVar.a;
                                                        if (str11 == null) {
                                                            str11 = "";
                                                        }
                                                        iHashCode = str11.hashCode();
                                                        str17 = str17;
                                                        str16 = str16;
                                                        if (iHashCode != -1801031586) {
                                                            if (iHashCode != 753371876) {
                                                                if (iHashCode != 1066479505) {
                                                                    if (iHashCode != 1616733480) {
                                                                        b = -1;
                                                                    } else {
                                                                        b = 1;
                                                                    }
                                                                } else if (str11.equals("app_launch")) {
                                                                    b = 2;
                                                                } else {
                                                                    b = -1;
                                                                }
                                                            } else if (str11.equals("app_active")) {
                                                                b = 0;
                                                            } else {
                                                                b = -1;
                                                            }
                                                        } else if (str11.equals("app_heartbeat")) {
                                                            b = 3;
                                                        } else {
                                                            b = -1;
                                                        }
                                                        if (b != 0) {
                                                            a(jSONObjectPut2, jSONObject2, ehanat.d());
                                                        } else if (b != 1) {
                                                            a(jSONObjectPut2, jSONObject2, ehanat.l());
                                                        } else if (b != 2) {
                                                            a(jSONObjectPut2, jSONObject2, ehanat.f());
                                                        } else if (b != 3) {
                                                            a(jSONObjectPut2, jSONObject2, ehanat.e());
                                                        }
                                                    }
                                                } else {
                                                    if (TextUtils.isEmpty(str19)) {
                                                        jSONObject2 = new JSONObject();
                                                    } else {
                                                        jSONObject2 = new JSONObject(str19);
                                                    }
                                                    str11 = athenaVar.a;
                                                    if (str11 == null) {
                                                        str11 = "";
                                                    }
                                                    iHashCode = str11.hashCode();
                                                    str17 = str17;
                                                    str16 = str16;
                                                    if (iHashCode != -1801031586) {
                                                        if (iHashCode != 753371876) {
                                                            if (iHashCode != 1066479505) {
                                                                if (iHashCode != 1616733480) {
                                                                    b = -1;
                                                                } else {
                                                                    b = 1;
                                                                }
                                                            } else if (str11.equals("app_launch")) {
                                                                b = 2;
                                                            } else {
                                                                b = -1;
                                                            }
                                                        } else if (str11.equals("app_active")) {
                                                            b = 0;
                                                        } else {
                                                            b = -1;
                                                        }
                                                    } else if (str11.equals("app_heartbeat")) {
                                                        b = 3;
                                                    } else {
                                                        b = -1;
                                                    }
                                                    if (b != 0) {
                                                        a(jSONObjectPut2, jSONObject2, ehanat.d());
                                                    } else if (b != 1) {
                                                        a(jSONObjectPut2, jSONObject2, ehanat.l());
                                                    } else if (b != 2) {
                                                        a(jSONObjectPut2, jSONObject2, ehanat.f());
                                                    } else if (b != 3) {
                                                        a(jSONObjectPut2, jSONObject2, ehanat.e());
                                                    }
                                                }
                                            } else {
                                                if (TextUtils.isEmpty(str19)) {
                                                    jSONObject2 = new JSONObject();
                                                } else {
                                                    jSONObject2 = new JSONObject(str19);
                                                }
                                                str11 = athenaVar.a;
                                                if (str11 == null) {
                                                    str11 = "";
                                                }
                                                iHashCode = str11.hashCode();
                                                str17 = str17;
                                                str16 = str16;
                                                if (iHashCode != -1801031586) {
                                                    if (iHashCode != 753371876) {
                                                        if (iHashCode != 1066479505) {
                                                            if (iHashCode != 1616733480 && str11.equals("page_enter")) {
                                                                b = 1;
                                                            } else {
                                                                b = -1;
                                                            }
                                                        } else if (str11.equals("app_launch")) {
                                                            b = 2;
                                                        } else {
                                                            b = -1;
                                                        }
                                                    } else if (str11.equals("app_active")) {
                                                        b = 0;
                                                    } else {
                                                        b = -1;
                                                    }
                                                } else if (str11.equals("app_heartbeat")) {
                                                    b = 3;
                                                } else {
                                                    b = -1;
                                                }
                                                if (b != 0) {
                                                    a(jSONObjectPut2, jSONObject2, ehanat.d());
                                                } else if (b != 1) {
                                                    a(jSONObjectPut2, jSONObject2, ehanat.l());
                                                } else if (b != 2) {
                                                    a(jSONObjectPut2, jSONObject2, ehanat.f());
                                                } else if (b != 3) {
                                                    a(jSONObjectPut2, jSONObject2, ehanat.e());
                                                }
                                            }
                                        } catch (Exception e) {
                                            e = e;
                                            str16 = str16;
                                            str17 = str17;
                                            c4d.e("Assemble events packet exception : %s", e.getMessage());
                                            i6 = i9;
                                            jSONArray3 = jSONArray2;
                                            next = appIdData;
                                            str14 = str10;
                                            str15 = str15;
                                            zK = zK;
                                            str17 = str17;
                                            str16 = str16;
                                        }
                                    } else {
                                        if (TextUtils.isEmpty(str19)) {
                                            jSONObject2 = new JSONObject();
                                        } else {
                                            jSONObject2 = new JSONObject(str19);
                                        }
                                        str11 = athenaVar.a;
                                        if (str11 == null) {
                                            str11 = "";
                                        }
                                        iHashCode = str11.hashCode();
                                        str17 = str17;
                                        str16 = str16;
                                        if (iHashCode != -1801031586) {
                                            if (iHashCode != 753371876) {
                                                if (iHashCode != 1066479505) {
                                                    if (iHashCode != 1616733480) {
                                                        b = -1;
                                                    } else {
                                                        b = 1;
                                                    }
                                                } else if (str11.equals("app_launch")) {
                                                    b = 2;
                                                } else {
                                                    b = -1;
                                                }
                                            } else if (str11.equals("app_active")) {
                                                b = 0;
                                            } else {
                                                b = -1;
                                            }
                                        } else if (str11.equals("app_heartbeat")) {
                                            b = 3;
                                        } else {
                                            b = -1;
                                        }
                                        if (b != 0) {
                                            a(jSONObjectPut2, jSONObject2, ehanat.d());
                                        } else if (b != 1) {
                                            a(jSONObjectPut2, jSONObject2, ehanat.l());
                                        } else if (b != 2) {
                                            a(jSONObjectPut2, jSONObject2, ehanat.f());
                                        } else if (b != 3) {
                                            a(jSONObjectPut2, jSONObject2, ehanat.e());
                                        }
                                    }
                                    try {
                                        jSONArray4.put(jSONObjectPut2);
                                    } catch (Exception e2) {
                                        e = e2;
                                        c4d.e("Assemble events packet exception : %s", e.getMessage());
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    str16 = str16;
                                    str17 = str17;
                                    str15 = str15;
                                    zK = zK;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                str10 = str14;
                                c4d.e("Assemble events packet exception : %s", e.getMessage());
                                i6 = i9;
                                jSONArray3 = jSONArray2;
                                next = appIdData;
                                str14 = str10;
                                str15 = str15;
                                zK = zK;
                                str17 = str17;
                                str16 = str16;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            jSONArray2 = jSONArray3;
                            appIdData = next;
                        }
                        i6 = i9;
                        jSONArray3 = jSONArray2;
                        next = appIdData;
                        str14 = str10;
                        str15 = str15;
                        zK = zK;
                        str17 = str17;
                        str16 = str16;
                    }
                    i8 += next2.f;
                    str13 = str9;
                    linkedList2 = linkedList;
                }
                String str24 = str16;
                String str25 = str17;
                boolean z2 = zK;
                JSONArray jSONArray5 = jSONArray3;
                AppIdData appIdData2 = next;
                String str26 = str14;
                int i10 = i6;
                String str27 = this.f.get(appIdData2.a, "");
                if (!TextUtils.isEmpty(str27)) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(str27);
                        String string = jSONObject3.has("eparam") ? jSONObject3.getString("eparam") : "";
                        a(jSONObject3, TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string), ehanat.l());
                        if (jSONObject3.getLong(str24) < 9999) {
                            TidConfigBean tidConfigBeanC = e5d.o().c(appIdData2.a, jSONObject3.getString(str25));
                            if (tidConfigBeanC != null) {
                                jSONObject3.put(str24, tidConfigBeanC.getTid());
                                jSONArray4.put(jSONObject3);
                            } else {
                                JSONObject jSONObject4 = new JSONObject();
                                jSONObject4.put("appid", appIdData2.a);
                                jSONObject4.put(str25, jSONObject3.getString(str25));
                                c4d.e("invalid or not registered:%s", jSONObject4.toString());
                            }
                            this.g = true;
                        } else {
                            jSONArray4.put(jSONObject3);
                        }
                        i8++;
                    } catch (Exception e6) {
                        c4d.e("Insert FPE event exception : %s", e6.getMessage());
                    }
                    this.g = true;
                }
                int i11 = i8;
                try {
                    if (TextUtils.isEmpty(appIdData2.b)) {
                        jSONObject = new JSONObject();
                    } else {
                        jSONObject = new JSONObject(appIdData2.b);
                    }
                    JSONObject jSONObjectPut3 = new JSONObject().put("appid", appIdData2.a).put("hostid", athena.b());
                    String strOptString = jSONObject.optString("pkgName");
                    if (strOptString == null) {
                        strOptString = "";
                    }
                    JSONObject jSONObjectPut4 = jSONObjectPut3.put(PushConstants.PROVIDER_FIELD_PKG, strOptString);
                    String strOptString2 = jSONObject.optString("versionName");
                    if (strOptString2 == null) {
                        strOptString2 = "";
                    }
                    JSONObject jSONObjectPut5 = jSONObjectPut4.put("vn", strOptString2);
                    String strOptString3 = jSONObject.optString("versionCode");
                    if (strOptString3 == null) {
                        strOptString3 = "";
                    }
                    JSONObject jSONObjectPut6 = jSONObjectPut5.put("vc", strOptString3).put("sdkv", "3.1.1.2");
                    String strOptString4 = jSONObject.optString("installer");
                    if (strOptString4 != null) {
                        str3 = strOptString4;
                    }
                    JSONObject jSONObjectPut7 = jSONObjectPut6.put("ins", str3);
                    z = z2;
                    try {
                        JSONObject jSONObjectPut8 = jSONObjectPut7.put("isfl", z).put("cnt", i11).put(str26, jSONArray4);
                        jSONArray = jSONArray5;
                        try {
                            jSONArray.put(jSONObjectPut8);
                        } catch (Exception e7) {
                            e = e7;
                            c4d.e("Assemble events packet exception : %s", e.getMessage());
                        }
                    } catch (Exception e8) {
                        e = e8;
                        jSONArray = jSONArray5;
                    }
                } catch (Exception e9) {
                    e = e9;
                    jSONArray = jSONArray5;
                    z = z2;
                }
                i6 = i10 + i11;
                linkedList.add(Integer.valueOf(appIdData2.a));
                jMin = j3;
                linkedList2 = linkedList;
                zK = z;
                jSONArray3 = jSONArray;
                str12 = str2;
                it = it2;
                i5 = i7;
                str13 = str9;
                jA = j4;
            }
            String str28 = str13;
            int i12 = i5;
            LinkedList linkedList3 = linkedList2;
            JSONArray jSONArray6 = jSONArray3;
            int i13 = i6;
            String strC = com.transsion.athena.taaneh.athena.c(AthenaAnalytics.I(), 0);
            try {
                JSONObject jSONObject5 = new JSONObject();
                String strG = ehanat.g();
                if (strG == null) {
                    strG = "";
                }
                JSONObject jSONObjectPut9 = jSONObject5.put("channel", strG);
                str4 = str28;
                try {
                    String strG2 = com.transsion.athena.taaneh.a.g(AthenaAnalytics.I(), str4);
                    if (strG2 == null) {
                        strG2 = "";
                    }
                    JSONObject jSONObjectPut10 = jSONObjectPut9.put(str4, strG2);
                    String strG3 = com.transsion.athena.taaneh.a.g(AthenaAnalytics.I(), "oneid");
                    if (strG3 == null) {
                        strG3 = "";
                    }
                    JSONObject jSONObjectPut11 = jSONObjectPut10.put("tsid", strG3);
                    AthenaAnalytics.I();
                    String strA = sbd.a();
                    if (strA == null) {
                        strA = "";
                    }
                    JSONObject jSONObjectPut12 = jSONObjectPut11.put(PushConstants.PROVIDER_VAID, strA);
                    JSONObject jSONObjectH = ehanat.h();
                    jSONObjectH.put("ossv", ohd.b(AthenaAnalytics.I()));
                    if (jSONObjectH.length() > 0) {
                        int length = jSONObjectH.toString().getBytes(StandardCharsets.UTF_8).length;
                        if (length > 2000) {
                            String str29 = String.format(Locale.getDefault(), "custom param is too long, limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length));
                            c4d.e("%s", str29);
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put("errorMsg", str29);
                            jSONObjectPut12.put("cparam", jSONObject6.toString());
                        } else {
                            jSONObjectPut12.put("cparam", jSONObjectH.toString());
                        }
                    }
                    JSONObject jSONObjectPut13 = new JSONObject().put("actype", (int) ehanat.c());
                    String str30 = Build.VERSION.RELEASE;
                    if (str30 == null) {
                        str30 = "";
                    }
                    JSONObject jSONObjectPut14 = jSONObjectPut13.put(DownloadFacadeEnum.USER_AVER, str30).put("appids", jSONArray6);
                    String str31 = Build.BRAND;
                    if (str31 == null) {
                        str31 = "";
                    }
                    JSONObject jSONObjectPut15 = jSONObjectPut14.put("brand", str31);
                    String str32 = Build.DISPLAY;
                    if (str32 == null) {
                        str32 = "";
                    }
                    JSONObject jSONObjectPut16 = jSONObjectPut15.put("build", str32).put("ekey", jSONObjectPut12.toString());
                    String strD = com.transsion.athena.taaneh.a.d(AthenaAnalytics.I());
                    if (strD == null) {
                        strD = "";
                    }
                    JSONObject jSONObjectPut17 = jSONObjectPut16.put("gaid", strD);
                    String language = Locale.getDefault().getLanguage();
                    if (language == null) {
                        language = "";
                    }
                    JSONObject jSONObjectPut18 = jSONObjectPut17.put("lang", language);
                    String strV = com.transsion.athena.taaneh.athena.v(AthenaAnalytics.I());
                    if (strV == null) {
                        strV = "";
                    }
                    JSONObject jSONObjectPut19 = jSONObjectPut18.put("mcc", strV);
                    String strW = com.transsion.athena.taaneh.athena.w(AthenaAnalytics.I());
                    if (strW == null) {
                        strW = "";
                    }
                    JSONObject jSONObjectPut20 = jSONObjectPut19.put("mnc", strW);
                    String str33 = Build.MODEL;
                    if (str33 == null) {
                        str33 = "";
                    }
                    JSONObject jSONObjectPut21 = jSONObjectPut20.put(CommonUrlParts.MODEL, str33).put(DownloadFacadeEnum.USER_NET, o3d.d(AthenaAnalytics.I()));
                    String strA2 = ohd.a();
                    if (strA2 == null) {
                        strA2 = "";
                    }
                    JSONObject jSONObjectPut22 = jSONObjectPut21.put("osver", strA2);
                    String strB = ehanat.b();
                    if (strB == null) {
                        strB = "";
                    }
                    JSONObject jSONObjectPut23 = jSONObjectPut22.put("tuid", strB);
                    i2 = i12;
                    try {
                        JSONObject jSONObjectPut24 = jSONObjectPut23.put("try", i2);
                        String strK = com.transsion.athena.taaneh.athena.k();
                        if (strK == null) {
                            strK = "";
                        }
                        JSONObject jSONObjectPut25 = jSONObjectPut24.put("tz", strK).put("uts", System.currentTimeMillis());
                        if (AthenaAnalytics.S()) {
                            if (strC == null) {
                                strC = "";
                            }
                            jSONObjectPut25.put("iid", strC);
                        }
                        aVarA = a.a(jSONObjectPut25.toString().getBytes(StandardCharsets.UTF_8), i13, linkedList3, i2);
                    } catch (Exception e10) {
                        e = e10;
                        c4d.e("Assemble events packet exception : %s", e.getMessage());
                        aVarA = null;
                    }
                } catch (Exception e11) {
                    e = e11;
                    i2 = i12;
                }
            } catch (Exception e12) {
                e = e12;
                i2 = i12;
                str4 = str28;
            }
            String str34 = this.d;
            byte[] bArr = aVarA.a;
            int i14 = aVarA.b;
            List list2 = aVarA.c;
            Context contextI = AthenaAnalytics.I();
            String strB2 = TextUtils.isEmpty(com.transsion.athena.taaneh.athena.c(AthenaAnalytics.I(), 0)) ? com.transsion.athena.taaneh.a.b() : com.transsion.athena.taaneh.athena.c(AthenaAnalytics.I(), 0);
            if (TextUtils.isEmpty(strB2)) {
                strB2 = com.transsion.athena.taaneh.athena.l(contextI);
            }
            tbd tbdVarA = tbd.a(str34, bArr, i14, list2, str, String.format(Locale.getDefault(), "%s_%d", strB2, Integer.valueOf(athena.b())));
            try {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put(SerializableCookie.HOST, this.d);
                str7 = str2;
                try {
                    jSONObject7.put(str7, tbdVarA.hashCode());
                    try {
                        jSONObject7.put("packetId", str);
                        JSONArray jSONArray7 = new JSONArray();
                        Iterator<AppIdData> it4 = list.iterator();
                        while (it4.hasNext()) {
                            for (com.transsion.athena.data.anehat anehatVar : it4.next().e) {
                                str5 = str3;
                                try {
                                    JSONObject jSONObject8 = new JSONObject();
                                    str6 = str4;
                                    Iterator<AppIdData> it5 = it4;
                                    try {
                                        jSONObject8.put("tid", anehatVar.a);
                                        jSONObject8.put(NotificationCompat.CATEGORY_EVENT, anehatVar.b);
                                        jSONObject8.put("count", anehatVar.f);
                                        jSONArray7.put(jSONObject8);
                                        str3 = str5;
                                        it4 = it5;
                                        str4 = str6;
                                    } catch (Exception e13) {
                                        e = e13;
                                        c4d.e("exception when print upload events : ", e.getMessage());
                                        rbdVarF = b.f(tbdVarA.a, tbdVarA.b, tbdVarA.c, tbdVarA.d, tbdVarA.e, tbdVarA.f);
                                        if (rbdVarF.a == 0) {
                                            a((com.transsion.athena.hatnea.a) rbdVarF.b, list, j4, tbdVarA.hashCode());
                                            if (this.a.hasMessages(MediaPlayer.Event.VideoFPS)) {
                                                return;
                                            }
                                            this.a.sendEmptyMessageDelayed(MediaPlayer.Event.VideoFPS, 0L);
                                            return;
                                        }
                                        try {
                                            aVar = (com.transsion.athena.hatnea.a) rbdVarF.b;
                                            JSONObject jSONObject9 = new JSONObject();
                                            jSONObject9.put(str7, tbdVarA.hashCode());
                                            i4 = aVar.a;
                                            if (i4 == 0) {
                                                i4 = -1;
                                            }
                                            jSONObject9.put(TrackingKey.CODE, i4);
                                            if (TextUtils.isEmpty(aVar.b)) {
                                                str8 = str5;
                                            } else {
                                                str8 = aVar.b;
                                            }
                                            jSONObject9.put("message", str8);
                                            jSONObject9.put("ex", aVar.d);
                                            c4d.g("<-- upload failed:%s", jSONObject9.toString());
                                        } catch (Exception e14) {
                                            c4d.e("exception when print upload events success: ", e14.getMessage());
                                        }
                                        i3 = i2 + 1;
                                        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(list, i3);
                                        if (!anehat.c(AthenaAnalytics.I())) {
                                            return;
                                        }
                                        try {
                                            Thread.sleep(j3);
                                            i5 = i3;
                                            str12 = str7;
                                            str13 = str6;
                                            jMin = Math.min((2 * j3) + 1000, 1800000L);
                                            jA = a4d.f().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                                        } catch (InterruptedException e15) {
                                            c4d.c("Retry upload interrupted!! : %s", e15.getMessage());
                                            return;
                                        }
                                    }
                                } catch (Exception e16) {
                                    e = e16;
                                    str6 = str4;
                                    c4d.e("exception when print upload events : ", e.getMessage());
                                    rbdVarF = b.f(tbdVarA.a, tbdVarA.b, tbdVarA.c, tbdVarA.d, tbdVarA.e, tbdVarA.f);
                                    if (rbdVarF.a == 0) {
                                        a((com.transsion.athena.hatnea.a) rbdVarF.b, list, j4, tbdVarA.hashCode());
                                        if (this.a.hasMessages(MediaPlayer.Event.VideoFPS)) {
                                            this.a.sendEmptyMessageDelayed(MediaPlayer.Event.VideoFPS, 0L);
                                            return;
                                        }
                                        return;
                                    }
                                    aVar = (com.transsion.athena.hatnea.a) rbdVarF.b;
                                    JSONObject jSONObject10 = new JSONObject();
                                    jSONObject10.put(str7, tbdVarA.hashCode());
                                    i4 = aVar.a;
                                    if (i4 == 0) {
                                        i4 = -1;
                                    }
                                    jSONObject10.put(TrackingKey.CODE, i4);
                                    if (TextUtils.isEmpty(aVar.b)) {
                                        str8 = str5;
                                    } else {
                                        str8 = aVar.b;
                                    }
                                    jSONObject10.put("message", str8);
                                    jSONObject10.put("ex", aVar.d);
                                    c4d.g("<-- upload failed:%s", jSONObject10.toString());
                                    i3 = i2 + 1;
                                    com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(list, i3);
                                    if (!anehat.c(AthenaAnalytics.I())) {
                                        return;
                                    }
                                    Thread.sleep(j3);
                                    i5 = i3;
                                    str12 = str7;
                                    str13 = str6;
                                    jMin = Math.min((2 * j3) + 1000, 1800000L);
                                    jA = a4d.f().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                                }
                            }
                        }
                        str5 = str3;
                        str6 = str4;
                        jSONObject7.put("events", jSONArray7);
                        c4d.g("%s:%s", i2 > 0 ? String.format(Locale.getDefault(), "--> retry [%d] times upload", Integer.valueOf(i2)) : "--> upload", jSONObject7.toString());
                    } catch (Exception e17) {
                        e = e17;
                        str5 = str3;
                        str6 = str4;
                        c4d.e("exception when print upload events : ", e.getMessage());
                        rbdVarF = b.f(tbdVarA.a, tbdVarA.b, tbdVarA.c, tbdVarA.d, tbdVarA.e, tbdVarA.f);
                        if (rbdVarF.a == 0) {
                            a((com.transsion.athena.hatnea.a) rbdVarF.b, list, j4, tbdVarA.hashCode());
                            if (this.a.hasMessages(MediaPlayer.Event.VideoFPS)) {
                                this.a.sendEmptyMessageDelayed(MediaPlayer.Event.VideoFPS, 0L);
                                return;
                            }
                            return;
                        }
                        aVar = (com.transsion.athena.hatnea.a) rbdVarF.b;
                        JSONObject jSONObject11 = new JSONObject();
                        jSONObject11.put(str7, tbdVarA.hashCode());
                        i4 = aVar.a;
                        if (i4 == 0) {
                            i4 = -1;
                        }
                        jSONObject11.put(TrackingKey.CODE, i4);
                        if (TextUtils.isEmpty(aVar.b)) {
                            str8 = str5;
                        } else {
                            str8 = aVar.b;
                        }
                        jSONObject11.put("message", str8);
                        jSONObject11.put("ex", aVar.d);
                        c4d.g("<-- upload failed:%s", jSONObject11.toString());
                        i3 = i2 + 1;
                        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(list, i3);
                        if (!anehat.c(AthenaAnalytics.I())) {
                            return;
                        }
                        Thread.sleep(j3);
                        i5 = i3;
                        str12 = str7;
                        str13 = str6;
                        jMin = Math.min((2 * j3) + 1000, 1800000L);
                        jA = a4d.f().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                    }
                } catch (Exception e18) {
                    e = e18;
                }
            } catch (Exception e19) {
                e = e19;
                str5 = "";
                str6 = str4;
                str7 = str2;
            }
            rbdVarF = b.f(tbdVarA.a, tbdVarA.b, tbdVarA.c, tbdVarA.d, tbdVarA.e, tbdVarA.f);
            if (rbdVarF.a == 0) {
                a((com.transsion.athena.hatnea.a) rbdVarF.b, list, j4, tbdVarA.hashCode());
                if (this.a.hasMessages(MediaPlayer.Event.VideoFPS)) {
                    this.a.sendEmptyMessageDelayed(MediaPlayer.Event.VideoFPS, 0L);
                    return;
                }
                return;
            }
            aVar = (com.transsion.athena.hatnea.a) rbdVarF.b;
            JSONObject jSONObject12 = new JSONObject();
            jSONObject12.put(str7, tbdVarA.hashCode());
            i4 = aVar.a;
            if (i4 == 0) {
                i4 = -1;
            }
            jSONObject12.put(TrackingKey.CODE, i4);
            if (TextUtils.isEmpty(aVar.b)) {
                str8 = str5;
            } else {
                str8 = aVar.b;
            }
            jSONObject12.put("message", str8);
            jSONObject12.put("ex", aVar.d);
            c4d.g("<-- upload failed:%s", jSONObject12.toString());
            i3 = i2 + 1;
            com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(list, i3);
            if (!anehat.c(AthenaAnalytics.I())) {
                return;
            }
            Thread.sleep(j3);
            i5 = i3;
            str12 = str7;
            str13 = str6;
            jMin = Math.min((2 * j3) + 1000, 1800000L);
            jA = a4d.f().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
        }
        c4d.c("tryUploadEvents interrupted : %s", "network unavailable");
    }

    private void a(com.transsion.athena.hatnea.a aVar, List<AppIdData> list, long j, int i) {
        TidConfigBean tidConfigBeanM;
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(e5d.o().r()));
        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(list, j, calendar.get(1) + "-" + (calendar.get(2) + 1) + "-" + calendar.get(5), new com.transsion.athena.data.anateh.enatha() {
            @Override
            public final void a(Object obj) {
                hatnea.a((SparseArray) obj);
            }
        });
        if (com.transsion.athena.taaneh.a.k(AthenaAnalytics.I())) {
            e4d.a(AthenaAnalytics.I()).g("first_launch", BooleanUtils.FALSE);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", i);
            jSONObject.put(TrackingKey.CODE, aVar.a);
            jSONObject.put("message", aVar.b);
            jSONObject.put("app", aVar.c);
            JSONArray jSONArray = new JSONArray();
            Iterator<AppIdData> it = list.iterator();
            while (it.hasNext()) {
                for (com.transsion.athena.data.anehat anehatVar : it.next().e) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("tid", anehatVar.a);
                    jSONObject2.put(NotificationCompat.CATEGORY_EVENT, anehatVar.b);
                    jSONObject2.put("count", anehatVar.f);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("events", jSONArray);
            c4d.g("<-- upload success:%s", jSONObject.toString());
        } catch (Exception e) {
            c4d.e("exception when print upload events success: ", e.getMessage());
        }
        if (this.g) {
            Iterator<AppIdData> it2 = list.iterator();
            while (it2.hasNext()) {
                int i2 = it2.next().a;
                if (this.f.indexOfKey(i2) >= 0) {
                    this.f.put(i2, "");
                    e4d.a(AthenaAnalytics.I()).g("first_page_enter_" + i2, "");
                }
            }
        }
        Iterator<AppIdData> it3 = list.iterator();
        while (it3.hasNext()) {
            for (com.transsion.athena.data.anehat anehatVar2 : it3.next().e) {
                if (anehatVar2.h && (tidConfigBeanM = e5d.o().m(anehatVar2.a)) != null) {
                    tidConfigBeanM.getTidConfig().c(j);
                    tidConfigBeanM.getTidConfig().a(0);
                }
            }
        }
        List<com.transsion.athena.hatnea.a.C0201a> list2 = aVar.c;
        if (list2 != null) {
            for (com.transsion.athena.hatnea.a.C0201a c0201a : list2) {
                com.transsion.athena.config.data.model.athena athenaVarN = e5d.o().n(c0201a.a);
                if (athenaVarN != null && !TextUtils.equals(athenaVarN.f(), c0201a.a())) {
                    int i3 = c0201a.b;
                    if (i3 == 1) {
                        String strA = c0201a.a();
                        try {
                            if (com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(athenaVarN.b())) {
                                athenaVarN.d(strA);
                                athenaVarN.c(0L);
                                athenaVarN.b(-1L);
                                com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(athenaVarN, false);
                            }
                        } catch (Exception e2) {
                            c4d.e("Handle cleanup data exception : %s", e2.getMessage());
                            com.transsion.ga.anateh.a("handleCleanupData", e2);
                        }
                    } else if (i3 == 2) {
                        a(athenaVarN, c0201a.a(), true);
                    } else if (i3 == 3) {
                        a(athenaVarN, c0201a.a(), false);
                    }
                }
            }
        }
    }

    public static void a(SparseArray sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            com.transsion.athena.data.enatha enathaVar = (com.transsion.athena.data.enatha) sparseArray.valueAt(i);
            Bundle bundle = new Bundle();
            bundle.putInt("appid", enathaVar.a);
            bundle.putString("date", enathaVar.b);
            bundle.putInt("count", enathaVar.c);
            bundle.putInt("packet", enathaVar.d);
            new wj("day_up_record", 9999).c(bundle, null).b();
            if (athena.b() > 0) {
                new wj("day_up_record", athena.b()).c(bundle, null).b();
            }
        }
    }

    private void a(com.transsion.athena.config.data.model.athena athenaVar, String str, boolean z) {
        int iAbs;
        if (z) {
            try {
                String strB = com.transsion.athena.taaneh.a.b();
                if (TextUtils.isEmpty(strB)) {
                    strB = com.transsion.athena.taaneh.athena.l(AthenaAnalytics.I());
                }
                iAbs = (TextUtils.isEmpty(strB) || strB.hashCode() == 0) ? 1800000 : (Math.abs(strB.hashCode()) % 30) * ComConstants.defScheduleTime;
            } catch (Exception e) {
                c4d.e("Handle pull config exception after upload : %s", e.getMessage());
                com.transsion.ga.anateh.a("handlePullConfig", e);
                return;
            }
        } else {
            iAbs = 0;
        }
        athenaVar.d(str);
        athenaVar.c(0L);
        athenaVar.b(System.currentTimeMillis() + ((long) iAbs));
        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(athenaVar, false);
    }

    private void a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        if (jSONObject != null) {
            if (jSONObject3 != null) {
                try {
                    if (jSONObject3.length() > 0) {
                        JSONObject jSONObject4 = new JSONObject();
                        if (jSONObject2.has("_ext")) {
                            jSONObject4 = jSONObject2.getJSONObject("_ext");
                        }
                        Iterator<String> itKeys = jSONObject3.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            String str = "_" + next;
                            Object obj = jSONObject3.get(next);
                            if (!jSONObject4.has(str)) {
                                jSONObject4.putOpt(str, obj);
                            }
                        }
                        int length = jSONObject4.toString().getBytes(StandardCharsets.UTF_8).length;
                        if (length > 2000) {
                            String str2 = String.format(Locale.getDefault(), "custom param is too long,limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length));
                            c4d.d(str2);
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("errorMsg", str2);
                            jSONObject2.put("_ext", jSONObject5);
                        } else {
                            jSONObject2.put("_ext", jSONObject4);
                        }
                    }
                } catch (Exception e) {
                    c4d.e("Insert common params exception : %s", e.getMessage());
                    return;
                }
            }
            jSONObject.put("eparam", jSONObject2.toString());
        }
    }

    private Pair<String, List<AppIdData>> a(long j, String str) {
        String string;
        LinkedList linkedList = new LinkedList();
        int i = 0;
        int i2 = 0;
        loop0: for (AppIdData appIdData : this.e) {
            if (TextUtils.equals(appIdData.f, this.d)) {
                com.transsion.athena.config.data.model.athena athenaVarN = e5d.o().n(appIdData.a);
                List<TidConfigBean> listJ = athenaVarN != null ? athenaVarN.j() : null;
                if (anehat.b(listJ)) {
                    int i3 = i2;
                    int i4 = i;
                    for (TidConfigBean tidConfigBean : listJ) {
                        if (tidConfigBean.allowUpload(j)) {
                            if (this.c) {
                                try {
                                    com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(tidConfigBean.getTid(), new com.transsion.athena.data.anateh.aethna.athena() {
                                        @Override
                                        public final void a(anateh anatehVar) {
                                            hatnea.a(anatehVar);
                                        }
                                    });
                                } catch (Exception e) {
                                    c4d.e("Upload 1.x events exception : %s", e.getMessage());
                                    com.transsion.ga.anateh.a("checkUploadFile", e);
                                }
                            }
                            com.transsion.athena.data.anehat anehatVarA = com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(tidConfigBean.getTid(), j, str, 921600 - i3, 2000 - i4);
                            if (anehatVarA != null && (linkedList.contains(appIdData) || linkedList.add(appIdData))) {
                                appIdData.e.add(anehatVarA);
                                i4 += anehatVarA.f;
                                i3 += anehatVarA.g;
                                if (i4 >= 2000 || i3 >= 921600) {
                                    c4d.g("Packet size out of limit, packetSize [%d], eventCount [%d]", Integer.valueOf(i3), Integer.valueOf(i4));
                                    break loop0;
                                }
                            }
                        }
                    }
                    i = i4;
                    i2 = i3;
                } else {
                    c4d.e("Appid [%d] checkUpload tid config is null.", Integer.valueOf(appIdData.a));
                }
                if (anehat.a(appIdData.e)) {
                    com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(Collections.singletonList(appIdData));
                }
            }
        }
        if (TextUtils.isEmpty(str)) {
            Random random = new Random();
            StringBuilder sb = new StringBuilder();
            for (int i5 = 0; i5 < 8; i5++) {
                sb.append("0123456789abcdefghijklmnopqrstuvwxyz".charAt(random.nextInt(36)));
            }
            string = sb.toString();
            com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.I()).a(linkedList, string);
        } else {
            string = str;
        }
        return new Pair<>(string, linkedList);
    }

    public static void a(anateh anatehVar) {
        c.d().e(anatehVar);
    }
}
