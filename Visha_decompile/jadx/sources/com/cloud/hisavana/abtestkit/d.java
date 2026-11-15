package com.cloud.hisavana.abtestkit;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import defpackage.in8;
import defpackage.ja1;
import defpackage.ly0;
import defpackage.md8;
import defpackage.nod;
import defpackage.o9;
import defpackage.ul4;
import defpackage.y45;
import defpackage.zfb;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;

public abstract class d {
    public static final Uri a;
    public static final Uri b;

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/abtestkit/d$a", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class a extends TypeToken<List<? extends ABLayerInfo>> {
    }

    static {
        Uri uri = Uri.parse("content://" + ul4.d() + ".HisavanaContentProvider/ab_data");
        y45.i(uri, "parse(this)");
        a = uri;
        Uri uri2 = Uri.parse("content://" + ul4.d() + ".HisavanaContentProvider/local_ab_data");
        y45.i(uri2, "parse(this)");
        b = uri2;
    }

    public static String a(Long l) {
        try {
            ContentResolver contentResolver = ul4.a().getContentResolver();
            Uri uriWithAppendedId = ContentUris.withAppendedId(b, l.longValue());
            y45.i(uriWithAppendedId, "withAppendedId(...)");
            Cursor cursorQuery = contentResolver.query(uriWithAppendedId, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        int columnIndex = cursorQuery.getColumnIndex("local_ab_json");
                        y45.j(cursorQuery, "<this>");
                        String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : null;
                        ly0.a(cursorQuery, null);
                        return string;
                    }
                    zfb zfbVar = zfb.a;
                    ly0.a(cursorQuery, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(cursorQuery, th);
                        throw th2;
                    }
                }
            }
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "ABDiskCache queryLocalABFromDiskCache fail, reason = " + e.getMessage());
        }
        return null;
    }

    public static ConcurrentHashMap b() {
        List<ABLayerInfo> list;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        String strJ = null;
        try {
            strJ = in8.j("hisavana_ab_data.json");
            if (Log.isLoggable("ADSDK", 3)) {
                ja1.Log().i("ABTEST", "ABDiskCache readAssets jsonString = " + strJ);
            }
        } catch (FileNotFoundException e) {
            o9.e().p("key_local_ab_data_version_code", md8.m());
            ja1.Log().w("ABTEST", "ABDiskCache readAssets file not found, reason = " + e.getMessage());
        } catch (Exception e2) {
            ja1.Log().w("ABTEST", "ABDiskCache readAssets fail, reason = " + e2.getMessage());
        }
        if (strJ != null) {
            try {
                if (strJ.length() != 0 && (list = (List) GsonUtil.b(strJ, new a().getType())) != null && !list.isEmpty()) {
                    for (ABLayerInfo aBLayerInfo : list) {
                        if (aBLayerInfo != null && aBLayerInfo.getLayerId() != null) {
                            concurrentHashMap.put(aBLayerInfo.getLayerId(), aBLayerInfo);
                        }
                    }
                    String strD = GsonUtil.d(concurrentHashMap);
                    o9.e().p("key_local_ab_data_version_code", md8.m());
                    if (o9.e().n()) {
                        o9.e().r("key_local_ab_data_json", strD);
                    } else {
                        nod nodVar = new nod();
                        nodVar.a = md8.m();
                        nodVar.b = strD;
                        c(nodVar);
                    }
                    ja1.Log().i("ABTEST", "ABDiskCache readAssets success, localLayerMap size = " + concurrentHashMap.size());
                }
            } catch (Exception e3) {
                ja1.Log().w("ABTEST", "ABDiskCache readAssets fail, reason = " + e3.getMessage());
            }
        }
        return concurrentHashMap;
    }

    public static void c(nod nodVar) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("localABData", GsonUtil.d(nodVar));
            ul4.a().getContentResolver().insert(b, contentValues);
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "ABDiskCache upsertLocalABToDiskCache fail, reason = " + e.getMessage());
            zfb zfbVar = zfb.a;
        }
    }
}
