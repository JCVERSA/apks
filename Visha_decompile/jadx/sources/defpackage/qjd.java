package defpackage;

import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.lzy.okgo.model.Progress;
import java.util.List;

public final class qjd {
    public static final qjd a = new qjd();

    public final List a() {
        try {
            return HSRoomDatabase.t().r().a();
        } catch (Exception e) {
            ikd.b().w("DefaultDBManager", "query default data failed :" + e.getMessage());
            return null;
        }
    }

    public final void b(int i) {
        try {
            HSRoomDatabase.t().r().a(i);
        } catch (Exception unused) {
            ikd.b().w("DefaultDBManager", "delete old data by ad version failed ");
        }
    }

    public final void c(DefaultAdDTO defaultAdDTO) {
        y45.j(defaultAdDTO, "ad");
        try {
            String adCreativeId = defaultAdDTO.getAdCreativeId();
            y45.i(adCreativeId, "getAdCreativeId(...)");
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            String str = codeSeatId == null ? "" : codeSeatId;
            int adType = defaultAdDTO.getAdType();
            Double firstPrice = defaultAdDTO.getFirstPrice();
            int adRequestVersion = defaultAdDTO.getAdRequestVersion();
            String startDate = defaultAdDTO.getStartDate();
            String str2 = startDate == null ? "" : startDate;
            String endDate = defaultAdDTO.getEndDate();
            String str3 = endDate == null ? "" : endDate;
            int showMaxOfDay = defaultAdDTO.getShowMaxOfDay();
            String filePath = defaultAdDTO.getFilePath();
            String countryWhite = defaultAdDTO.getCountryWhite();
            String str4 = countryWhite == null ? "" : countryWhite;
            String countryBlack = defaultAdDTO.getCountryBlack();
            String str5 = countryBlack == null ? "" : countryBlack;
            String brandWhite = defaultAdDTO.getBrandWhite();
            String str6 = brandWhite == null ? "" : brandWhite;
            String brandBlack = defaultAdDTO.getBrandBlack();
            String str7 = brandBlack == null ? "" : brandBlack;
            String adBeanJson = defaultAdDTO.getAdBeanJson();
            HSRoomDatabase.t().r().a(new hed(adCreativeId, str, adType, firstPrice, adRequestVersion, 0, "", str2, str3, showMaxOfDay, filePath, str4, str5, str6, str7, adBeanJson == null ? "" : adBeanJson));
        } catch (Throwable th) {
            ikd.b().w("DefaultDBManager", "save or update default ad error: id is " + defaultAdDTO.getAdCreativeId() + ", error msg is " + th.getMessage() + ' ');
        }
    }

    public final void d(String str) {
        y45.j(str, "codeSeatId");
        ikd.b().d("DefaultDBManager", "delete old data by code seat id");
        try {
            HSRoomDatabase.t().r().b(str);
        } catch (Throwable th) {
            ikd.b().w("DefaultDBManager", "delete old ad : error msg is " + th.getMessage());
        }
    }

    public final void e(String str, String str2) {
        y45.j(str, "creativeId");
        try {
            HSRoomDatabase.t().r().a(str, str2);
        } catch (Exception e) {
            ikd.b().w("DefaultDBManager", "delete ad by filtered error: id is " + str + ", error msg is " + e.getMessage());
        }
    }

    public final void f(String str, String str2, int i, String str3) {
        y45.j(str, "adCreativeId");
        y45.j(str2, "codeSeatId");
        y45.j(str3, "displayedDate");
        try {
            HSRoomDatabase.t().r().a(str, str2, i, str3);
        } catch (Exception e) {
            ikd.b().w("DefaultDBManager", "update display times error: id is " + str + ", error msg is " + e.getMessage());
        }
    }

    public final void g(String str, String str2, String str3) {
        y45.j(str, "adCreativeId");
        y45.j(str2, "codeSeatId");
        y45.j(str3, "filepath");
        try {
            HSRoomDatabase.t().r().a(str, str2, str3);
        } catch (Exception e) {
            ikd.b().w("DefaultDBManager", "update ad material file path error: " + e.getMessage());
        }
    }

    public final void h(List list) {
        y45.j(list, "codeSeatIds");
        try {
            HSRoomDatabase.t().r().a((List<String>) list);
        } catch (Throwable th) {
            ikd.b().w("DefaultDBManager", "delete invalid ad error: error msg is " + th.getMessage());
        }
    }

    public final void i(String str) {
        y45.j(str, Progress.FILE_PATH);
        try {
            HSRoomDatabase.t().r().a(str);
        } catch (Throwable th) {
            ikd.b().w("DefaultDBManager", "update material  error: error msg is " + th.getMessage());
        }
    }
}
