package com.wandoujia.download.rpc;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.firebase.remoteconfig.RemoteConfigConstants$ResponseFieldKey;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.snaptube.ad.guardian.GuardianManager;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.premium.vault.LockManager;
import com.snaptube.util.ProductionEnv;
import com.twmacinta.util.MD5State;
import com.wandoujia.download.model.segments.DownloadConfigInfo;
import com.wandoujia.download.utils.StorageUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import net.pubnative.library.request.PubnativeAsset;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.j23;
import o.nj2;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class c {

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[InnerDownloadFilter.Operator.values().length];
            a = iArr;
            try {
                iArr[InnerDownloadFilter.Operator.EQUAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[InnerDownloadFilter.Operator.MORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[InnerDownloadFilter.Operator.LESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[InnerDownloadFilter.Operator.LIKE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return (jSONObject.has("buffer") && jSONObject.has(GuardianManager.COUNT) && jSONObject.has(RemoteConfigConstants$ResponseFieldKey.STATE)) ? str : b(jSONObject).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static JSONObject b(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    try {
                        jSONObject2.put(GuardianManager.COUNT, jSONObject.getLong(next));
                    } catch (Exception unused) {
                        JSONArray jSONArray = jSONObject.getJSONArray(next);
                        if (jSONArray.length() == 64) {
                            jSONObject2.put("buffer", jSONArray);
                        } else if (jSONArray.length() == 4) {
                            jSONObject2.put(RemoteConfigConstants$ResponseFieldKey.STATE, jSONArray);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return jSONObject2;
        } catch (Exception unused2) {
            return jSONObject;
        }
    }

    public static int c(Context context, long j) {
        return e.h(context).f(ContentUris.withAppendedId(DownloadConstants.a.a, j), null, null);
    }

    public static String d(InnerDownloadFilter innerDownloadFilter) {
        StringBuilder sb = new StringBuilder();
        if (innerDownloadFilter != null) {
            int i = 0;
            for (InnerDownloadFilter.a.C0494a c0494a : innerDownloadFilter.a()) {
                String columnName = c0494a.a.getColumnName();
                i++;
                if (i == 1) {
                    sb.append(" (");
                    sb.append(columnName);
                } else {
                    sb.append(" AND (");
                    sb.append(columnName);
                }
                int i2 = a.a[c0494a.b.ordinal()];
                if (i2 == 1) {
                    List list = c0494a.c;
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        if (i3 == 0) {
                            sb.append(" = ");
                            sb.append((String) list.get(i3));
                        } else {
                            sb.append(" OR ");
                            sb.append(columnName);
                            sb.append(" = ");
                            sb.append((String) list.get(i3));
                        }
                    }
                } else if (i2 == 2) {
                    sb.append(" > ");
                    sb.append((String) c0494a.c.get(0));
                } else if (i2 == 3) {
                    sb.append(" < ");
                    sb.append((String) c0494a.c.get(0));
                } else if (i2 == 4) {
                    List list2 = c0494a.c;
                    for (int i4 = 0; i4 < list2.size(); i4++) {
                        if (i4 == 0) {
                            sb.append(" LIKE ");
                            sb.append((String) list2.get(i4));
                        } else {
                            sb.append(" AND ");
                            sb.append(columnName);
                            sb.append(" LIKE ");
                            sb.append((String) list2.get(i4));
                        }
                    }
                }
                sb.append(')');
            }
        }
        return sb.toString();
    }

    public static String e(int i, int i2, InnerDownloadFilter.FilterArea filterArea, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (i2 != 0 && i != 0 && filterArea != null) {
            if (z) {
                sb.append(filterArea.getColumnName());
                sb.append(" ASC LIMIT ");
                sb.append(i2);
                sb.append(" offset ");
                sb.append(i);
            } else {
                sb.append(filterArea.getColumnName());
                sb.append(" DESC LIMIT ");
                sb.append(i2);
                sb.append(" offset ");
                sb.append(i);
            }
        }
        return sb.toString();
    }

    public static List f(Context context, List list) {
        StringBuilder sb = new StringBuilder("resouce_identity IN (");
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next();
            sb.append("?");
            if (it2.hasNext()) {
                sb.append(RequestTimeModel.DELIMITER);
            }
        }
        sb.append(")");
        LinkedList linkedList = new LinkedList();
        Cursor cursorL = null;
        try {
            try {
                cursorL = e.h(context).l(DownloadConstants.a.a, null, sb.toString(), (String[]) list.toArray(new String[0]), "_id DESC");
                cursorL.moveToFirst();
                while (!cursorL.isAfterLast()) {
                    linkedList.add(p(cursorL));
                    cursorL.moveToNext();
                }
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging("DownloadDbException", e);
                if (cursorL != null) {
                }
                return linkedList;
            }
            cursorL.close();
            return linkedList;
        } catch (Throwable th) {
            if (cursorL != null) {
                cursorL.close();
            }
            throw th;
        }
    }

    public static h g(Context context, String str) {
        List listF = f(context, Arrays.asList(str));
        if (listF.isEmpty()) {
            return null;
        }
        return (h) listF.get(0);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    public static h h(Context context, Long l) throws Throwable {
        Cursor cursorL;
        Cursor cursor = null;
        try {
            cursorL = e.h(context).l(DownloadConstants.a.a, null, "_id= ?", new String[]{Long.toString(l.longValue())}, null);
            try {
                try {
                    if (cursorL.moveToFirst()) {
                        h hVarP = p(cursorL);
                        cursorL.close();
                        return hVarP;
                    }
                } catch (Exception e) {
                    e = e;
                    ProductionEnv.throwExceptForDebugging("DownloadDbException", e);
                    if (cursorL != null) {
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorL;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorL = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        cursorL.close();
        return null;
    }

    public static List i(Context context, InnerDownloadFilter innerDownloadFilter, int i, int i2, InnerDownloadFilter.FilterArea filterArea, boolean z) {
        String strE = e(i, i2, filterArea, z);
        String strD = d(innerDownloadFilter);
        ArrayList arrayList = new ArrayList();
        Cursor cursorL = null;
        try {
            try {
                cursorL = e.h(context).l(DownloadConstants.a.a, null, strD, null, strE);
                if (cursorL != null) {
                    while (cursorL.moveToNext()) {
                        try {
                            arrayList.add(p(cursorL));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch (Exception e2) {
                ProductionEnv.throwExceptForDebugging("DownloadDbException", e2);
            }
            return arrayList;
        } finally {
            if (cursorL != null) {
                cursorL.close();
            }
        }
    }

    public static String j(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            if (i == strArr.length - 1) {
                sb.append(strArr[i]);
            } else {
                sb.append(strArr[i]);
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public static int k(String str, Cursor cursor) {
        return cursor.getInt(cursor.getColumnIndexOrThrow(str));
    }

    public static long l(String str, Cursor cursor) {
        return cursor.getLong(cursor.getColumnIndexOrThrow(str));
    }

    public static String m(String str, Cursor cursor) {
        return cursor.getString(cursor.getColumnIndexOrThrow(str));
    }

    public static long n(Context context, InnerDownloadRequest innerDownloadRequest) {
        String strF;
        ContentValues contentValues = new ContentValues();
        contentValues.put("uri", innerDownloadRequest.a);
        contentValues.put("allowed_download_without_wifi", Boolean.valueOf(innerDownloadRequest.f));
        if (TextUtils.isEmpty(innerDownloadRequest.m)) {
            long j = innerDownloadRequest.g;
            strF = j > 0 ? StorageUtil.f(innerDownloadRequest.d, j) : StorageUtil.e(innerDownloadRequest.d);
        } else {
            strF = innerDownloadRequest.m;
        }
        if (!TextUtils.isEmpty(strF) && !strF.endsWith("/")) {
            strF = strF + "/";
        }
        o(contentValues, "filename", strF);
        if (!TextUtils.isEmpty(strF) && !TextUtils.isEmpty(innerDownloadRequest.n)) {
            LockManager lockManager = LockManager.a;
            StringBuilder sb = new StringBuilder();
            sb.append(strF);
            sb.append(innerDownloadRequest.n);
            contentValues.put("_data", strF + (TextUtils.isEmpty(lockManager.F(sb.toString())) ? nj2.l(innerDownloadRequest.n) : innerDownloadRequest.n));
        }
        DownloadConstants.VerifyType verifyType = innerDownloadRequest.t;
        if (verifyType != null) {
            contentValues.put("verify_type", verifyType.toString());
        }
        if (!TextUtils.isEmpty(innerDownloadRequest.u)) {
            contentValues.put("verify_value", innerDownloadRequest.u);
        }
        contentValues.put("visible", Boolean.valueOf(innerDownloadRequest.r));
        contentValues.put("no_integrity", Boolean.TRUE);
        String str = innerDownloadRequest.e;
        if (str != null) {
            contentValues.put("resource_extras", str);
        }
        contentValues.put("resource_type", Integer.valueOf(innerDownloadRequest.d.ordinal()));
        o(contentValues, "source", innerDownloadRequest.i);
        contentValues.put("current_bytes", (Long) 0L);
        long j2 = innerDownloadRequest.g;
        contentValues.put(DownloadModel.TOTAL_BYTES, Long.valueOf(j2 > 0 ? j2 : 0L));
        contentValues.put("status", Integer.valueOf(PsExtractor.PRIVATE_STREAM_1));
        o(contentValues, "title", innerDownloadRequest.b);
        o(contentValues, PubnativeAsset.DESCRIPTION, innerDownloadRequest.h);
        o(contentValues, CampaignEx.JSON_KEY_ICON_URL, innerDownloadRequest.k);
        contentValues.put("check_size", Long.valueOf(innerDownloadRequest.p));
        contentValues.put("resouce_identity", innerDownloadRequest.c);
        contentValues.put("allowed_download_without_wifi", Boolean.valueOf(innerDownloadRequest.f));
        o(contentValues, "dservice_urls", j(innerDownloadRequest.l));
        contentValues.put("speed_limit", Long.valueOf(innerDownloadRequest.s));
        if (innerDownloadRequest.j != null) {
            try {
                contentValues.put("headers_list", new JSONObject(innerDownloadRequest.j).toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            ProductionEnv.debugLog("download-task", "Values to insert: " + contentValues);
            Uri uriJ = e.h(context).j(DownloadConstants.a.a, contentValues);
            ProductionEnv.debugLog("download-task", "Uri returned from DB: " + uriJ);
            if (uriJ != null) {
                return ContentUris.parseId(uriJ);
            }
            return -1L;
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging("DownloadDbException", e2);
            return -1L;
        }
    }

    public static void o(ContentValues contentValues, String str, Object obj) {
        if (obj != null) {
            contentValues.put(str, obj.toString());
        }
    }

    public static h p(Cursor cursor) {
        h hVar = new h();
        hVar.A = k("allowed_download_without_wifi", cursor) != 0;
        hVar.r = l("current_bytes", cursor);
        hVar.e = m(PubnativeAsset.DESCRIPTION, cursor);
        hVar.m = m("_data", cursor);
        hVar.z = m("filename", cursor);
        hVar.a = l("_id", cursor);
        hVar.q = l("lastmod", cursor);
        hVar.c = m("mimetype", cursor);
        hVar.b = m("uri", cursor);
        hVar.E = m("notification_class", cursor);
        hVar.g = DownloadConstants.ResourceType.values()[k("resource_type", cursor)];
        hVar.h = m("resouce_identity", cursor);
        hVar.i = m("resource_extras", cursor);
        hVar.f(k("status", cursor));
        hVar.d = m("title", cursor);
        hVar.f = l(DownloadModel.TOTAL_BYTES, cursor);
        hVar.F = m("use_agent", cursor);
        hVar.p = k("visible", cursor) == 1;
        hVar.D = k("no_integrity", cursor) == 1;
        hVar.B = k("failed_times", cursor);
        hVar.k = m("source", cursor);
        hVar.G = k("check_size", cursor);
        hVar.l = m(CampaignEx.JSON_KEY_ICON_URL, cursor);
        hVar.j = l(IntentUtil.DURATION, cursor);
        String strM = m("segment_config", cursor);
        hVar.w = q(m("dservice_urls", cursor));
        if (!TextUtils.isEmpty(strM)) {
            hVar.x = DownloadConfigInfo.fromJson(strM);
        }
        String strM2 = m("verify_type", cursor);
        if (!TextUtils.isEmpty(strM2)) {
            hVar.u = (DownloadConstants.VerifyType) Enum.valueOf(DownloadConstants.VerifyType.class, strM2);
        }
        hVar.v = m("verify_value", cursor);
        hVar.s = m("md5_checksum", cursor);
        hVar.n = m("retried_urls", cursor);
        hVar.f498o = k("last_url_retried_times", cursor);
        hVar.t = l("speed_limit", cursor);
        hVar.e(l("speed", cursor));
        try {
            hVar.H = (MD5State) j23.b(a(m("md5_state", cursor)), MD5State.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            String strM3 = m("headers_list", cursor);
            if (TextUtils.isEmpty(strM3)) {
                String strM4 = m(Format.Fields.HEADERS, cursor);
                if (!TextUtils.isEmpty(strM4)) {
                    JSONObject jSONObject = new JSONObject(strM4);
                    HashMap map = new HashMap();
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        map.put(next, Arrays.asList(jSONObject.getString(next)));
                    }
                    hVar.K = map;
                }
            } else {
                JSONObject jSONObject2 = new JSONObject(strM3);
                HashMap map2 = new HashMap();
                Iterator<String> itKeys2 = jSONObject2.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    JSONArray jSONArray = jSONObject2.getJSONArray(next2);
                    if (jSONArray != null) {
                        LinkedList linkedList = new LinkedList();
                        for (int i = 0; i < jSONArray.length(); i++) {
                            linkedList.add(jSONArray.getString(i));
                        }
                        map2.put(next2, linkedList);
                    }
                }
                hVar.K = map2;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        hVar.L = k("is_download_with_multi_thread", cursor) != 0;
        try {
            String strM5 = m("downloaded_sections", cursor);
            if (!TextUtils.isEmpty(strM5)) {
                hVar.M = com.wandoujia.mtdownload.c.c(strM5);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return hVar;
    }

    public static String[] q(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(";");
    }

    public static int r(Context context, long j, ContentValues contentValues) {
        return e.h(context).m(ContentUris.withAppendedId(DownloadConstants.a.a, j), contentValues, null, null);
    }
}
