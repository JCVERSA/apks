package defpackage;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.BooleanUtils;

public class spc {
    public final Uri a;
    public final Map b;

    public static class b {
        public static final spc a = new spc();
    }

    public static spc f() {
        return b.a;
    }

    public ConfigCodeSeatDTO a(ConfigCodeSeatDTO configCodeSeatDTO) {
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
            ikd.b().e("CloudProviderManager", "");
        }
        if (configCodeSeatDTO2 != null) {
            this.b.put(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO2);
        }
        return configCodeSeatDTO2;
    }

    public ConfigCodeSeatDTO b(String str) {
        ikd.b().d("CloudProviderManager", "getConfigById " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!k()) {
            c();
            Map map = this.b;
            if (map == null || map.isEmpty()) {
                return null;
            }
        }
        try {
            ConfigCodeSeatDTO configCodeSeatDTOA = a((ConfigCodeSeatDTO) this.b.get(str));
            d(configCodeSeatDTOA, null);
            return configCodeSeatDTOA;
        } catch (Exception e) {
            ikd.b().e("CloudProviderManager", "getConfigById " + Log.getStackTraceString(e));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0096 A[PHI: r0
      0x0096: PHI (r0v7 android.database.Cursor) = (r0v6 android.database.Cursor), (r0v8 android.database.Cursor) binds: [B:33:0x0094, B:30:0x0086] A[DONT_GENERATE, DONT_INLINE]] */
    public Map c() {
        if (k()) {
            ikd.b().d("CloudProviderManager", "getAllConfig, memory cache has value");
        } else {
            ikd.b().d("CloudProviderManager", "getAllConfig, memory cache is null, query from disk");
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = ul4.a().getContentResolver().query(this.a, null, "select * from cloudList_room", null, null);
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
                                this.b.put(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO);
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e) {
                    ikd.b().e("CloudProviderManager", Log.getStackTraceString(e));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
        ikd.b().d("CloudProviderManager", "getAllConfig, size=" + this.b.size());
        return this.b;
    }

    public final void d(ConfigCodeSeatDTO configCodeSeatDTO, List list) {
        if (configCodeSeatDTO == null) {
            return;
        }
        long j = Long.parseLong(configCodeSeatDTO.getDate());
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - j) > 86400000) {
            configCodeSeatDTO.setDate(String.valueOf(una.c(jCurrentTimeMillis)));
            configCodeSeatDTO.setCurrentShowTimes(0);
            if (list != null) {
                list.add(configCodeSeatDTO);
            }
        }
    }

    public boolean e(List list) {
        Map map;
        if (list == null || list.isEmpty()) {
            return false;
        }
        if (this.b.isEmpty()) {
            c();
        }
        try {
            Collection<ConfigCodeSeatDTO> collectionValues = this.b.values();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (collectionValues != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
                    if (configCodeSeatDTO != null) {
                        for (ConfigCodeSeatDTO configCodeSeatDTO2 : collectionValues) {
                            if (configCodeSeatDTO2 != null && TextUtils.equals(configCodeSeatDTO.getCodeSeatId(), configCodeSeatDTO2.getCodeSeatId())) {
                                ConfigCodeSeatDTO configCodeSeatDTOA = a(configCodeSeatDTO2);
                                if (Math.abs(jCurrentTimeMillis - Long.parseLong(configCodeSeatDTOA.getDate())) >= 86400000) {
                                    configCodeSeatDTO.setCurrentShowTimes(0);
                                    configCodeSeatDTO.setDate(String.valueOf(una.c(jCurrentTimeMillis)));
                                } else {
                                    configCodeSeatDTO.setDate(configCodeSeatDTOA.getDate());
                                    configCodeSeatDTO.setCurrentShowTimes(configCodeSeatDTOA.getCurrentShowTimes());
                                }
                                configCodeSeatDTO.setLastRequestAdTime(configCodeSeatDTOA.getLastRequestAdTime());
                                configCodeSeatDTO.setAdRequestFail(configCodeSeatDTOA.isAdRequestFail());
                                configCodeSeatDTO.setLastShowAdTime(configCodeSeatDTOA.getLastShowAdTime());
                                configCodeSeatDTO.setAdRequestVer(configCodeSeatDTOA.getAdRequestVer());
                                configCodeSeatDTO.setLocalOfflineAdCacheCount(configCodeSeatDTOA.getLocalOfflineAdCacheCount());
                                break;
                            }
                        }
                    }
                }
                this.b.clear();
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ConfigCodeSeatDTO configCodeSeatDTO3 = (ConfigCodeSeatDTO) it2.next();
                if (configCodeSeatDTO3 != null && (map = this.b) != null) {
                    map.put(configCodeSeatDTO3.getCodeSeatId(), configCodeSeatDTO3);
                }
            }
            ContentResolver contentResolver = ul4.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("CloudConfig", GsonUtil.d(list));
            return contentResolver.insert(this.a, contentValues).toString().contains(BooleanUtils.TRUE);
        } catch (Exception e) {
            ikd.b().e("CloudProviderManager", Log.getStackTraceString(e));
            return false;
        }
    }

    public ConfigCodeSeatDTO g(String str) {
        return (ConfigCodeSeatDTO) this.b.get(str);
    }

    public void h(ConfigCodeSeatDTO configCodeSeatDTO) {
        AdsDTO adsDTO;
        if (configCodeSeatDTO == null) {
            return;
        }
        String[] strArr = {configCodeSeatDTO.getCodeSeatId(), "1", configCodeSeatDTO.getCodeSeatId(), "1"};
        if (ikd.c()) {
            ikd.b().d("CloudProviderManager", "update config offline ad count------> code seat id:" + configCodeSeatDTO.getCodeSeatId() + ", selection: SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);, selectionArgs: " + Arrays.toString(strArr));
        }
        try {
            Cursor cursorQuery = ul4.a().getContentResolver().query(this.a, null, "SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);", strArr, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    return;
                }
                return;
            }
            int i = 0;
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
                            if (adsDTO != null && !hp0.b(adsDTO)) {
                                i++;
                            }
                        }
                    }
                } catch (Throwable th) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            ikd.b().d("CloudProviderManager", "updateCodeOfflineAdCount ----> offline ad count is " + i);
            configCodeSeatDTO.setLocalOfflineAdCacheCount(i);
            cursorQuery.close();
        } catch (Exception e) {
            ikd.b().e("CloudProviderManager", "updateCodeOfflineAdCount error: " + e.getMessage());
        }
    }

    public void i(ConfigCodeSeatDTO configCodeSeatDTO) {
        if (configCodeSeatDTO == null || configCodeSeatDTO.isDefaultConfig().booleanValue()) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        ArrayList arrayList = new ArrayList();
        arrayList.add(configCodeSeatDTO);
        contentValues.put("CloudConfig", GsonUtil.d(arrayList));
        try {
            int iUpdate = ul4.a().getContentResolver().update(this.a, contentValues, null, null);
            ikd.b().d("CloudProviderManager", "updateConfigData result " + iUpdate);
        } catch (Exception e) {
            ikd.b().d("CloudProviderManager", "updateConfigData " + Log.getStackTraceString(e));
        }
    }

    public void j(String str) {
        ikd.b().d("CloudProviderManager", "updateCodeSeatShowTimes " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ConfigCodeSeatDTO configCodeSeatDTOG = g(str);
            if (configCodeSeatDTOG != null) {
                configCodeSeatDTOG.setCurrentShowTimes(configCodeSeatDTOG.getCurrentShowTimes() + 1);
                configCodeSeatDTOG.setLastShowAdTime(System.currentTimeMillis());
                i(configCodeSeatDTOG);
            } else {
                ikd.b().e("CloudProviderManager", "updateCodeSeatShowTimes,can't find codeSeatId " + str);
            }
        } catch (Exception e) {
            ikd.b().e("CloudProviderManager", "updateCodeSeatShowTimes " + Log.getStackTraceString(e));
        }
    }

    public boolean k() {
        Map map = this.b;
        return (map == null || map.isEmpty()) ? false : true;
    }

    public spc() {
        this.b = new ConcurrentHashMap();
        this.a = Uri.parse("content://" + ul4.a().getPackageName() + ".HisavanaContentProvider/config");
    }
}
