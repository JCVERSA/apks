package defpackage;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.cloud.hisavana.abtestkit.OnInitCompleteListener;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.abtestkit.c;
import com.cloud.hisavana.abtestkit.d;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.hisavana.common.tracking.TrackingKey;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class l3d {
    public static final AtomicBoolean a = new AtomicBoolean(false);

    public static void a(OnInitCompleteListener onInitCompleteListener) {
        Uri uri = d.a;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ConcurrentHashMap concurrentHashMapB = null;
        try {
            Cursor cursorQuery = ul4.a().getContentResolver().query(d.a, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        int columnIndex = cursorQuery.getColumnIndex(ClientABTestDTOKt.LAYER_ID);
                        int columnIndex2 = cursorQuery.getColumnIndex(TrackingKey.REQUEST_TIME);
                        int columnIndex3 = cursorQuery.getColumnIndex("ab_info");
                        do {
                            y45.j(cursorQuery, "<this>");
                            Long lValueOf = columnIndex >= 0 ? Long.valueOf(cursorQuery.getLong(columnIndex)) : null;
                            if (lValueOf != null) {
                                OnlineABLayerDTO onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
                                onlineABLayerDTO.setLayerId(lValueOf.longValue());
                                y45.j(cursorQuery, "<this>");
                                Long lValueOf2 = columnIndex2 >= 0 ? Long.valueOf(cursorQuery.getLong(columnIndex2)) : null;
                                onlineABLayerDTO.setRequestTime(lValueOf2 != null ? lValueOf2.longValue() : 0L);
                                y45.j(cursorQuery, "<this>");
                                String string = columnIndex3 >= 0 ? cursorQuery.getString(columnIndex3) : null;
                                if (string != null) {
                                    onlineABLayerDTO.setInfo(string);
                                    onlineABLayerDTO.setAbLayerInfo(onlineABLayerDTO.convertLayerInfo(string));
                                }
                                concurrentHashMap.put(lValueOf, onlineABLayerDTO);
                            }
                        } while (cursorQuery.moveToNext());
                        ja1.Log().i("ABTEST", "ABDiskCache queryAllFromDiskCache success, onlineLayerMap size = " + concurrentHashMap.size());
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
            ja1.Log().w("ABTEST", "ABDiskCache queryAllFromDiskCache fail, reason = " + e.getMessage());
        }
        ConcurrentHashMap concurrentHashMap2 = lhd.a;
        y45.j(concurrentHashMap, "map");
        lhd.a.clear();
        lhd.a = concurrentHashMap;
        Uri uri2 = d.a;
        try {
            int iF = o9.e().f("key_local_ab_data_version_code");
            if (iF != md8.m()) {
                concurrentHashMapB = d.b();
            } else {
                String strJ = o9.e().n() ? o9.e().j("key_local_ab_data_json") : d.a(Long.valueOf(iF));
                if (strJ != null && strJ.length() != 0) {
                    ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) GsonUtil.b(strJ, new c().getType());
                    ja1 ja1VarLog = ja1.Log();
                    StringBuilder sb = new StringBuilder("ABDiskCache queryFromAssets from localABDataJson, localLayerMap size = ");
                    sb.append(concurrentHashMap3 != null ? Integer.valueOf(concurrentHashMap3.size()) : null);
                    ja1VarLog.d("ABTEST", sb.toString());
                    concurrentHashMapB = concurrentHashMap3;
                }
            }
        } catch (Exception e2) {
            ja1.Log().w("ABTEST", "ABDiskCache queryFromAssets fail, reason = " + e2.getMessage());
        }
        ConcurrentHashMap concurrentHashMap4 = lhd.b;
        if (concurrentHashMap4 != null) {
            concurrentHashMap4.clear();
        }
        lhd.b = concurrentHashMapB;
        if (onInitCompleteListener != null) {
            onInitCompleteListener.onInitComplete();
        }
    }

    public static void b(final OnInitCompleteListener onInitCompleteListener) {
        AtomicBoolean atomicBoolean = a;
        if (atomicBoolean.get()) {
            ja1.Log().d("ABTEST", "ABMemoryCache queryAllData Initialization has been completed");
            return;
        }
        atomicBoolean.set(true);
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        if (hSScopeHelper.h()) {
            hSScopeHelper.l(new Runnable() {
                @Override
                public final void run() {
                    l3d.c(onInitCompleteListener);
                }
            });
        } else {
            a(onInitCompleteListener);
        }
    }

    public static final void c(OnInitCompleteListener onInitCompleteListener) {
        a(onInitCompleteListener);
    }

    public static void d(final OnlineABLayerDTO onlineABLayerDTO) {
        ConcurrentHashMap concurrentHashMap = lhd.a;
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                l3d.f(onlineABLayerDTO);
            }
        });
    }

    public static final void e() {
        Uri uri = d.a;
        try {
            ul4.a().getContentResolver().delete(d.a, null, null);
            ul4.a().getContentResolver().delete(d.b, null, null);
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "ABDiskCache deleteTable fail, reason = " + e.getMessage());
        }
    }

    public static final void f(OnlineABLayerDTO onlineABLayerDTO) {
        Uri uri = d.a;
        if (onlineABLayerDTO != null) {
            long layerId = onlineABLayerDTO.getLayerId();
            try {
                nvd nvdVar = new nvd();
                nvdVar.setLayerId(layerId);
                nvdVar.setRequestTime(onlineABLayerDTO.getRequestTime());
                nvdVar.setInfo(onlineABLayerDTO.getInfo());
                ContentValues contentValues = new ContentValues();
                contentValues.put("abData", GsonUtil.d(nvdVar));
                ul4.a().getContentResolver().insert(d.a, contentValues);
            } catch (Exception e) {
                ja1.Log().w("ABTEST", "ABDiskCache upsertToDiskCache fail, reason = " + e.getMessage());
                zfb zfbVar = zfb.a;
            }
        }
    }

    public static final void c(long j, long j2) {
        Uri uri = d.a;
        try {
            ContentResolver contentResolver = ul4.a().getContentResolver();
            nvd nvdVar = new nvd();
            nvdVar.setLayerId(j);
            nvdVar.setRequestTime(j2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("abData", GsonUtil.d(nvdVar));
            contentResolver.update(d.a, contentValues, null, null);
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "ABDiskCache upsertRequestTimeToDiskCache fail, reason = " + e.getMessage());
            zfb zfbVar = zfb.a;
        }
    }

    public static void b(final long j) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        if (lhd.a.contains(Long.valueOf(j))) {
            OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) lhd.a.get(Long.valueOf(j));
            if (onlineABLayerDTO != null) {
                onlineABLayerDTO.setRequestTime(jCurrentTimeMillis);
            }
        } else {
            OnlineABLayerDTO onlineABLayerDTO2 = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO2.setLayerId(j);
            onlineABLayerDTO2.setRequestTime(jCurrentTimeMillis);
            lhd.a.put(Long.valueOf(j), onlineABLayerDTO2);
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ja1.Log().i("ABTEST", "ABMemoryCache upsertRequestTimeToMemoryCache onlineLayerMap = " + lhd.a);
        }
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                l3d.c(j, jCurrentTimeMillis);
            }
        });
    }

    public static void a() {
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                l3d.e();
            }
        });
    }
}
