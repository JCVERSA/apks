package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class O {

    private final Uri f20917a;

    private final Map f20918b;

    class a implements Runnable {

        final String f20919a;

        a(String str) {
            this.f20919a = str;
        }

        @Override
        public void run() {
            b4.b().d("CloudProviderManager", "updateConfigShowTimes " + this.f20919a);
            if (TextUtils.isEmpty(this.f20919a)) {
                return;
            }
            try {
                ConfigCodeSeatDTO configCodeSeatDTOH = O.this.h(this.f20919a);
                if (configCodeSeatDTOH != null) {
                    configCodeSeatDTOH.setCurrentShowTimes(configCodeSeatDTOH.getCurrentShowTimes() + 1);
                    configCodeSeatDTOH.setLastShowAdTime(System.currentTimeMillis());
                    O.this.j(configCodeSeatDTOH);
                } else {
                    b4.b().e("CloudProviderManager", "updateConfigShowTimes,can't find codeSeatId " + this.f20919a);
                }
            } catch (Exception e10) {
                b4.b().e("CloudProviderManager", "updateConfigShowTimes " + Log.getStackTraceString(e10));
            }
        }
    }

    class b implements Runnable {

        final ContentValues f20921a;

        b(ContentValues contentValues) {
            this.f20921a = contentValues;
        }

        @Override
        public void run() {
            try {
                int iUpdate = com.cloud.sdk.commonutil.util.e.a().getContentResolver().update(O.this.f20917a, this.f20921a, null, null);
                b4.b().d("CloudProviderManager", "updateConfigData result " + iUpdate);
            } catch (Exception e10) {
                b4.b().d("CloudProviderManager", "updateConfigData " + Log.getStackTraceString(e10));
            }
        }
    }

    private static class c {

        private static final O f20923a = new O(null);
    }

    O(a aVar) {
        this();
    }

    private void e(ConfigCodeSeatDTO configCodeSeatDTO, List list) {
        if (configCodeSeatDTO == null) {
            return;
        }
        long j10 = Long.parseLong(configCodeSeatDTO.getDate());
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - j10) > 86400000) {
            configCodeSeatDTO.setDate(String.valueOf(com.cloud.hisavana.sdk.common.util.k0.c(jCurrentTimeMillis)));
            configCodeSeatDTO.setCurrentShowTimes(0);
            if (list != null) {
                list.add(configCodeSeatDTO);
            }
        }
    }

    public static O g() {
        return c.f20923a;
    }

    public ConfigCodeSeatDTO b(ConfigCodeSeatDTO configCodeSeatDTO) {
        ConfigCodeSeatDTO configCodeSeatDTO2 = null;
        if (configCodeSeatDTO == null) {
            return null;
        }
        if (TextUtils.isEmpty(configCodeSeatDTO.getJson())) {
            return configCodeSeatDTO;
        }
        try {
            configCodeSeatDTO2 = (ConfigCodeSeatDTO) GsonUtil.a(configCodeSeatDTO.getJson(), ConfigCodeSeatDTO.class);
        } catch (GsonUtil.GsonParseException unused) {
            b4.b().e("CloudProviderManager", "");
        }
        if (configCodeSeatDTO2 != null) {
            this.f20918b.put(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO2);
        }
        return configCodeSeatDTO2;
    }

    public ConfigCodeSeatDTO c(String str) {
        b4.b().d("CloudProviderManager", "getConfigById " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!l()) {
            d();
            Map map = this.f20918b;
            if (map == null || map.isEmpty()) {
                return null;
            }
        }
        try {
            ConfigCodeSeatDTO configCodeSeatDTOB = b((ConfigCodeSeatDTO) this.f20918b.get(str));
            e(configCodeSeatDTOB, null);
            return configCodeSeatDTOB;
        } catch (Exception e10) {
            b4.b().e("CloudProviderManager", "getConfigById " + Log.getStackTraceString(e10));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0096 A[PHI: r0
      0x0096: PHI (r0v8 android.database.Cursor) = (r0v7 android.database.Cursor), (r0v9 android.database.Cursor) binds: [B:33:0x0094, B:30:0x0086] A[DONT_GENERATE, DONT_INLINE]] */
    public Map d() {
        if (l()) {
            b4.b().d("CloudProviderManager", "getAllConfig, memory cache has value");
        } else {
            b4.b().d("CloudProviderManager", "getAllConfig, memory cache is null, query from disk");
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(this.f20917a, null, "select * from cloudList_room", null, null);
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            int columnIndex = cursorQuery.getColumnIndex("code_seat_bean");
                            String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : "";
                            if (!TextUtils.isEmpty(string)) {
                                ConfigCodeSeatDTO configCodeSeatDTO = new ConfigCodeSeatDTO();
                                configCodeSeatDTO.setJson(string);
                                int columnIndex2 = cursorQuery.getColumnIndex("codeSeatId");
                                if (columnIndex2 >= 0) {
                                    configCodeSeatDTO.setCodeSeatId(cursorQuery.getString(columnIndex2));
                                }
                                int columnIndex3 = cursorQuery.getColumnIndex("current_codeseat_show_times");
                                if (columnIndex3 >= 0) {
                                    configCodeSeatDTO.setCurrentShowTimes(cursorQuery.getInt(columnIndex3));
                                }
                                int columnIndex4 = cursorQuery.getColumnIndex("datetime");
                                if (columnIndex4 >= 0) {
                                    configCodeSeatDTO.setDate(cursorQuery.getString(columnIndex4));
                                }
                                this.f20918b.put(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO);
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e10) {
                    b4.b().e("CloudProviderManager", Log.getStackTraceString(e10));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th2;
            }
        }
        b4.b().d("CloudProviderManager", "getAllConfig, size=" + this.f20918b.size());
        return this.f20918b;
    }

    public boolean f(List list) {
        Map map;
        if (list == null || list.isEmpty()) {
            return false;
        }
        if (this.f20918b.isEmpty()) {
            d();
        }
        try {
            Collection<ConfigCodeSeatDTO> collectionValues = this.f20918b.values();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (collectionValues != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
                    if (configCodeSeatDTO != null) {
                        for (ConfigCodeSeatDTO configCodeSeatDTO2 : collectionValues) {
                            if (configCodeSeatDTO2 != null && TextUtils.equals(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO2.getCodeSeatId())) {
                                ConfigCodeSeatDTO configCodeSeatDTOB = b(configCodeSeatDTO2);
                                if (Math.abs(jCurrentTimeMillis - Long.parseLong(configCodeSeatDTOB.getDate())) >= 86400000) {
                                    configCodeSeatDTO.setCurrentShowTimes(0);
                                    configCodeSeatDTO.setDate(String.valueOf(com.cloud.hisavana.sdk.common.util.k0.c(jCurrentTimeMillis)));
                                } else {
                                    configCodeSeatDTO.setDate(configCodeSeatDTOB.getDate());
                                    configCodeSeatDTO.setCurrentShowTimes(configCodeSeatDTOB.getCurrentShowTimes());
                                }
                                configCodeSeatDTO.setLastRequestAdTime(configCodeSeatDTOB.getLastRequestAdTime());
                                configCodeSeatDTO.setAdRequestFail(configCodeSeatDTOB.isAdRequestFail());
                                configCodeSeatDTO.setLastShowAdTime(configCodeSeatDTOB.getLastShowAdTime());
                                configCodeSeatDTO.setAdRequestVer(configCodeSeatDTOB.getAdRequestVer());
                                configCodeSeatDTO.setLocalOfflineAdCacheCount(configCodeSeatDTOB.getLocalOfflineAdCacheCount());
                                break;
                            }
                        }
                    }
                }
                this.f20918b.clear();
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ConfigCodeSeatDTO configCodeSeatDTO3 = (ConfigCodeSeatDTO) it2.next();
                if (configCodeSeatDTO3 != null && (map = this.f20918b) != null) {
                    map.put(configCodeSeatDTO3.getCodeSeatId(), configCodeSeatDTO3);
                }
            }
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("CloudConfig", GsonUtil.d(list));
            return contentResolver.insert(this.f20917a, contentValues).toString().contains("true");
        } catch (Exception e10) {
            b4.b().e("CloudProviderManager", Log.getStackTraceString(e10));
            return false;
        }
    }

    public ConfigCodeSeatDTO h(String str) {
        return (ConfigCodeSeatDTO) this.f20918b.get(str);
    }

    public void i(ConfigCodeSeatDTO configCodeSeatDTO) {
        AdsDTO adsDTO;
        if (configCodeSeatDTO == null) {
            return;
        }
        String[] strArr = {configCodeSeatDTO.getCodeSeatId(), "1", configCodeSeatDTO.getCodeSeatId(), "1"};
        if (b4.c()) {
            b4.b().d("CloudProviderManager", "update config offline ad count------> code seat id:" + configCodeSeatDTO.getCodeSeatId() + ", selection: SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);, selectionArgs: " + Arrays.toString(strArr));
        }
        try {
            Cursor cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(this.f20917a, null, "SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);", strArr, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    return;
                }
                return;
            }
            int i10 = 0;
            while (cursorQuery.moveToNext()) {
                try {
                    int columnIndex = cursorQuery.getColumnIndex("ad_bean");
                    if (columnIndex >= 0) {
                        String string = cursorQuery.getString(columnIndex);
                        if (!TextUtils.isEmpty(string)) {
                            try {
                                adsDTO = (AdsDTO) GsonUtil.a(string, AdsDTO.class);
                            } catch (Throwable unused) {
                                adsDTO = null;
                            }
                            if (adsDTO != null && !com.cloud.hisavana.sdk.common.util.g.b(adsDTO)) {
                                i10++;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            b4.b().d("CloudProviderManager", "updateCodeOfflineAdCount ----> offline ad count is " + i10);
            configCodeSeatDTO.setLocalOfflineAdCacheCount(i10);
            cursorQuery.close();
        } catch (Exception e10) {
            b4.b().e("CloudProviderManager", "updateCodeOfflineAdCount error: " + e10.getMessage());
        }
    }

    public void j(ConfigCodeSeatDTO configCodeSeatDTO) {
        if (configCodeSeatDTO == null || configCodeSeatDTO.isDefaultConfig().booleanValue()) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        ArrayList arrayList = new ArrayList();
        arrayList.add(configCodeSeatDTO);
        contentValues.put("CloudConfig", GsonUtil.d(arrayList));
        HSScopeHelper.f22503a.i(new b(contentValues));
    }

    public void k(String str) {
        HSScopeHelper.f22503a.i(new a(str));
    }

    public boolean l() {
        Map map = this.f20918b;
        return (map == null || map.isEmpty()) ? false : true;
    }

    private O() {
        this.f20918b = new ConcurrentHashMap();
        this.f20917a = Uri.parse("content://" + com.cloud.sdk.commonutil.util.e.a().getPackageName() + ".HisavanaContentProvider/config");
    }
}
