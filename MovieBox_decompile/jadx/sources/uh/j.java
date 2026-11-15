package uh;

import androidx.room.RoomDatabase;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.ad.db.plan.MbAdDbPlans;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class j implements uh.a {

    private final RoomDatabase f73079a;

    private final androidx.room.g f73080b = new a();

    private final androidx.room.e f73081c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `mb_ad_db_plans` (`id`,`version`,`name`,`startTime`,`endTime`,`extraConfig`,`displayTimes`,`showedTimes`,`showDate`,`advertiserName`,`advertiserAvatar`,`advertiserAvatarPath`,`brand`,`denyBrand`,`model`,`denyModel`,`country`,`scenes`,`adSource`,`extAdSlot`,`adMaterialList`,`adPlanUpdateTime`,`sort`,`adShowLevel`,`filterClientVersion`,`adPlanCreateTime`,`appStarDesc`,`appSizeDesc`,`ctxEnableExpr`,`ctxDisableExpr`,`ctxAttributeConfig`,`dispatchTimeStart`,`dispatchTimeEnd`,`extImage`,`bidEcpmCent`,`ecpmCent`,`isValid`,`h5LinkPreload`,`h5LinkOpenByCct`,`countryCode`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, MbAdDbPlans mbAdDbPlans) {
            if (mbAdDbPlans.getId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, mbAdDbPlans.getId());
            }
            if (mbAdDbPlans.getVersion() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, mbAdDbPlans.getVersion());
            }
            if (mbAdDbPlans.getName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, mbAdDbPlans.getName());
            }
            if (mbAdDbPlans.getStartTime() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, mbAdDbPlans.getStartTime());
            }
            if (mbAdDbPlans.getEndTime() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, mbAdDbPlans.getEndTime());
            }
            if (mbAdDbPlans.getExtraConfig() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, mbAdDbPlans.getExtraConfig());
            }
            if (mbAdDbPlans.getDisplayTimes() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, mbAdDbPlans.getDisplayTimes().intValue());
            }
            if (mbAdDbPlans.getShowedTimes() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, mbAdDbPlans.getShowedTimes().intValue());
            }
            if (mbAdDbPlans.getShowDate() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, mbAdDbPlans.getShowDate());
            }
            if (mbAdDbPlans.getAdvertiserName() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, mbAdDbPlans.getAdvertiserName());
            }
            if (mbAdDbPlans.getAdvertiserAvatar() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, mbAdDbPlans.getAdvertiserAvatar());
            }
            if (mbAdDbPlans.getAdvertiserAvatarPath() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, mbAdDbPlans.getAdvertiserAvatarPath());
            }
            if (mbAdDbPlans.getBrand() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, mbAdDbPlans.getBrand());
            }
            if (mbAdDbPlans.getDenyBrand() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, mbAdDbPlans.getDenyBrand());
            }
            if (mbAdDbPlans.getModel() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, mbAdDbPlans.getModel());
            }
            if (mbAdDbPlans.getDenyModel() == null) {
                eVar.g(16);
            } else {
                eVar.i(16, mbAdDbPlans.getDenyModel());
            }
            if (mbAdDbPlans.getCountry() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, mbAdDbPlans.getCountry());
            }
            if (mbAdDbPlans.getScenes() == null) {
                eVar.g(18);
            } else {
                eVar.i(18, mbAdDbPlans.getScenes());
            }
            if (mbAdDbPlans.getAdSource() == null) {
                eVar.g(19);
            } else {
                eVar.i(19, mbAdDbPlans.getAdSource());
            }
            if (mbAdDbPlans.getExtAdSlot() == null) {
                eVar.g(20);
            } else {
                eVar.i(20, mbAdDbPlans.getExtAdSlot());
            }
            if (mbAdDbPlans.getAdMaterialList() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, mbAdDbPlans.getAdMaterialList());
            }
            if (mbAdDbPlans.getAdPlanUpdateTime() == null) {
                eVar.g(22);
            } else {
                eVar.i(22, mbAdDbPlans.getAdPlanUpdateTime());
            }
            if (mbAdDbPlans.getSort() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, mbAdDbPlans.getSort().intValue());
            }
            if (mbAdDbPlans.getAdShowLevel() == null) {
                eVar.g(24);
            } else {
                eVar.i(24, mbAdDbPlans.getAdShowLevel());
            }
            if (mbAdDbPlans.getFilterClientVersion() == null) {
                eVar.g(25);
            } else {
                eVar.i(25, mbAdDbPlans.getFilterClientVersion());
            }
            if (mbAdDbPlans.getAdPlanCreateTime() == null) {
                eVar.g(26);
            } else {
                eVar.i(26, mbAdDbPlans.getAdPlanCreateTime());
            }
            if (mbAdDbPlans.getAppStarDesc() == null) {
                eVar.g(27);
            } else {
                eVar.i(27, mbAdDbPlans.getAppStarDesc());
            }
            if (mbAdDbPlans.getAppSizeDesc() == null) {
                eVar.g(28);
            } else {
                eVar.i(28, mbAdDbPlans.getAppSizeDesc());
            }
            if (mbAdDbPlans.getCtxEnableExpr() == null) {
                eVar.g(29);
            } else {
                eVar.i(29, mbAdDbPlans.getCtxEnableExpr());
            }
            if (mbAdDbPlans.getCtxDisableExpr() == null) {
                eVar.g(30);
            } else {
                eVar.i(30, mbAdDbPlans.getCtxDisableExpr());
            }
            if (mbAdDbPlans.getCtxAttributeConfig() == null) {
                eVar.g(31);
            } else {
                eVar.i(31, mbAdDbPlans.getCtxAttributeConfig());
            }
            if (mbAdDbPlans.getDispatchTimeStart() == null) {
                eVar.g(32);
            } else {
                eVar.i(32, mbAdDbPlans.getDispatchTimeStart());
            }
            if (mbAdDbPlans.getDispatchTimeEnd() == null) {
                eVar.g(33);
            } else {
                eVar.i(33, mbAdDbPlans.getDispatchTimeEnd());
            }
            if (mbAdDbPlans.getExtImage() == null) {
                eVar.g(34);
            } else {
                eVar.i(34, mbAdDbPlans.getExtImage());
            }
            if (mbAdDbPlans.getBidEcpmCent() == null) {
                eVar.g(35);
            } else {
                eVar.a(35, mbAdDbPlans.getBidEcpmCent().doubleValue());
            }
            if (mbAdDbPlans.getEcpmCent() == null) {
                eVar.g(36);
            } else {
                eVar.c(36, mbAdDbPlans.getEcpmCent().longValue());
            }
            eVar.c(37, mbAdDbPlans.isValid() ? 1L : 0L);
            eVar.c(38, mbAdDbPlans.getH5LinkPreload() ? 1L : 0L);
            eVar.c(39, mbAdDbPlans.getH5LinkOpenByCct() ? 1L : 0L);
            if (mbAdDbPlans.getCountryCode() == null) {
                eVar.g(40);
            } else {
                eVar.i(40, mbAdDbPlans.getCountryCode());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `mb_ad_db_plans` SET `id` = ?,`version` = ?,`name` = ?,`startTime` = ?,`endTime` = ?,`extraConfig` = ?,`displayTimes` = ?,`showedTimes` = ?,`showDate` = ?,`advertiserName` = ?,`advertiserAvatar` = ?,`advertiserAvatarPath` = ?,`brand` = ?,`denyBrand` = ?,`model` = ?,`denyModel` = ?,`country` = ?,`scenes` = ?,`adSource` = ?,`extAdSlot` = ?,`adMaterialList` = ?,`adPlanUpdateTime` = ?,`sort` = ?,`adShowLevel` = ?,`filterClientVersion` = ?,`adPlanCreateTime` = ?,`appStarDesc` = ?,`appSizeDesc` = ?,`ctxEnableExpr` = ?,`ctxDisableExpr` = ?,`ctxAttributeConfig` = ?,`dispatchTimeStart` = ?,`dispatchTimeEnd` = ?,`extImage` = ?,`bidEcpmCent` = ?,`ecpmCent` = ?,`isValid` = ?,`h5LinkPreload` = ?,`h5LinkOpenByCct` = ?,`countryCode` = ? WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, MbAdDbPlans mbAdDbPlans) {
            if (mbAdDbPlans.getId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, mbAdDbPlans.getId());
            }
            if (mbAdDbPlans.getVersion() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, mbAdDbPlans.getVersion());
            }
            if (mbAdDbPlans.getName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, mbAdDbPlans.getName());
            }
            if (mbAdDbPlans.getStartTime() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, mbAdDbPlans.getStartTime());
            }
            if (mbAdDbPlans.getEndTime() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, mbAdDbPlans.getEndTime());
            }
            if (mbAdDbPlans.getExtraConfig() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, mbAdDbPlans.getExtraConfig());
            }
            if (mbAdDbPlans.getDisplayTimes() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, mbAdDbPlans.getDisplayTimes().intValue());
            }
            if (mbAdDbPlans.getShowedTimes() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, mbAdDbPlans.getShowedTimes().intValue());
            }
            if (mbAdDbPlans.getShowDate() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, mbAdDbPlans.getShowDate());
            }
            if (mbAdDbPlans.getAdvertiserName() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, mbAdDbPlans.getAdvertiserName());
            }
            if (mbAdDbPlans.getAdvertiserAvatar() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, mbAdDbPlans.getAdvertiserAvatar());
            }
            if (mbAdDbPlans.getAdvertiserAvatarPath() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, mbAdDbPlans.getAdvertiserAvatarPath());
            }
            if (mbAdDbPlans.getBrand() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, mbAdDbPlans.getBrand());
            }
            if (mbAdDbPlans.getDenyBrand() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, mbAdDbPlans.getDenyBrand());
            }
            if (mbAdDbPlans.getModel() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, mbAdDbPlans.getModel());
            }
            if (mbAdDbPlans.getDenyModel() == null) {
                eVar.g(16);
            } else {
                eVar.i(16, mbAdDbPlans.getDenyModel());
            }
            if (mbAdDbPlans.getCountry() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, mbAdDbPlans.getCountry());
            }
            if (mbAdDbPlans.getScenes() == null) {
                eVar.g(18);
            } else {
                eVar.i(18, mbAdDbPlans.getScenes());
            }
            if (mbAdDbPlans.getAdSource() == null) {
                eVar.g(19);
            } else {
                eVar.i(19, mbAdDbPlans.getAdSource());
            }
            if (mbAdDbPlans.getExtAdSlot() == null) {
                eVar.g(20);
            } else {
                eVar.i(20, mbAdDbPlans.getExtAdSlot());
            }
            if (mbAdDbPlans.getAdMaterialList() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, mbAdDbPlans.getAdMaterialList());
            }
            if (mbAdDbPlans.getAdPlanUpdateTime() == null) {
                eVar.g(22);
            } else {
                eVar.i(22, mbAdDbPlans.getAdPlanUpdateTime());
            }
            if (mbAdDbPlans.getSort() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, mbAdDbPlans.getSort().intValue());
            }
            if (mbAdDbPlans.getAdShowLevel() == null) {
                eVar.g(24);
            } else {
                eVar.i(24, mbAdDbPlans.getAdShowLevel());
            }
            if (mbAdDbPlans.getFilterClientVersion() == null) {
                eVar.g(25);
            } else {
                eVar.i(25, mbAdDbPlans.getFilterClientVersion());
            }
            if (mbAdDbPlans.getAdPlanCreateTime() == null) {
                eVar.g(26);
            } else {
                eVar.i(26, mbAdDbPlans.getAdPlanCreateTime());
            }
            if (mbAdDbPlans.getAppStarDesc() == null) {
                eVar.g(27);
            } else {
                eVar.i(27, mbAdDbPlans.getAppStarDesc());
            }
            if (mbAdDbPlans.getAppSizeDesc() == null) {
                eVar.g(28);
            } else {
                eVar.i(28, mbAdDbPlans.getAppSizeDesc());
            }
            if (mbAdDbPlans.getCtxEnableExpr() == null) {
                eVar.g(29);
            } else {
                eVar.i(29, mbAdDbPlans.getCtxEnableExpr());
            }
            if (mbAdDbPlans.getCtxDisableExpr() == null) {
                eVar.g(30);
            } else {
                eVar.i(30, mbAdDbPlans.getCtxDisableExpr());
            }
            if (mbAdDbPlans.getCtxAttributeConfig() == null) {
                eVar.g(31);
            } else {
                eVar.i(31, mbAdDbPlans.getCtxAttributeConfig());
            }
            if (mbAdDbPlans.getDispatchTimeStart() == null) {
                eVar.g(32);
            } else {
                eVar.i(32, mbAdDbPlans.getDispatchTimeStart());
            }
            if (mbAdDbPlans.getDispatchTimeEnd() == null) {
                eVar.g(33);
            } else {
                eVar.i(33, mbAdDbPlans.getDispatchTimeEnd());
            }
            if (mbAdDbPlans.getExtImage() == null) {
                eVar.g(34);
            } else {
                eVar.i(34, mbAdDbPlans.getExtImage());
            }
            if (mbAdDbPlans.getBidEcpmCent() == null) {
                eVar.g(35);
            } else {
                eVar.a(35, mbAdDbPlans.getBidEcpmCent().doubleValue());
            }
            if (mbAdDbPlans.getEcpmCent() == null) {
                eVar.g(36);
            } else {
                eVar.c(36, mbAdDbPlans.getEcpmCent().longValue());
            }
            eVar.c(37, mbAdDbPlans.isValid() ? 1L : 0L);
            eVar.c(38, mbAdDbPlans.getH5LinkPreload() ? 1L : 0L);
            eVar.c(39, mbAdDbPlans.getH5LinkOpenByCct() ? 1L : 0L);
            if (mbAdDbPlans.getCountryCode() == null) {
                eVar.g(40);
            } else {
                eVar.i(40, mbAdDbPlans.getCountryCode());
            }
            if (mbAdDbPlans.getId() == null) {
                eVar.g(41);
            } else {
                eVar.i(41, mbAdDbPlans.getId());
            }
        }
    }

    public j(RoomDatabase roomDatabase) {
        this.f73079a = roomDatabase;
    }

    public static List q() {
        return Collections.emptyList();
    }

    public static Unit r(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM mb_ad_db_plans WHERE version !=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List s(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM mb_ad_db_plans WHERE isValid = 1 ORDER BY sort");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "version");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "startTime");
            int iC5 = androidx.room.util.i.c(eVarF0, "endTime");
            int iC6 = androidx.room.util.i.c(eVarF0, "extraConfig");
            int iC7 = androidx.room.util.i.c(eVarF0, "displayTimes");
            int iC8 = androidx.room.util.i.c(eVarF0, "showedTimes");
            int iC9 = androidx.room.util.i.c(eVarF0, "showDate");
            int iC10 = androidx.room.util.i.c(eVarF0, "advertiserName");
            int iC11 = androidx.room.util.i.c(eVarF0, "advertiserAvatar");
            int iC12 = androidx.room.util.i.c(eVarF0, "advertiserAvatarPath");
            int iC13 = androidx.room.util.i.c(eVarF0, "brand");
            int iC14 = androidx.room.util.i.c(eVarF0, "denyBrand");
            int iC15 = androidx.room.util.i.c(eVarF0, "model");
            int iC16 = androidx.room.util.i.c(eVarF0, "denyModel");
            int iC17 = androidx.room.util.i.c(eVarF0, PlaceTypes.COUNTRY);
            int iC18 = androidx.room.util.i.c(eVarF0, "scenes");
            int iC19 = androidx.room.util.i.c(eVarF0, "adSource");
            int iC20 = androidx.room.util.i.c(eVarF0, "extAdSlot");
            int iC21 = androidx.room.util.i.c(eVarF0, "adMaterialList");
            int iC22 = androidx.room.util.i.c(eVarF0, "adPlanUpdateTime");
            int iC23 = androidx.room.util.i.c(eVarF0, "sort");
            int iC24 = androidx.room.util.i.c(eVarF0, "adShowLevel");
            int iC25 = androidx.room.util.i.c(eVarF0, "filterClientVersion");
            int iC26 = androidx.room.util.i.c(eVarF0, "adPlanCreateTime");
            int iC27 = androidx.room.util.i.c(eVarF0, "appStarDesc");
            int iC28 = androidx.room.util.i.c(eVarF0, "appSizeDesc");
            int iC29 = androidx.room.util.i.c(eVarF0, "ctxEnableExpr");
            int iC30 = androidx.room.util.i.c(eVarF0, "ctxDisableExpr");
            int iC31 = androidx.room.util.i.c(eVarF0, "ctxAttributeConfig");
            int iC32 = androidx.room.util.i.c(eVarF0, "dispatchTimeStart");
            int iC33 = androidx.room.util.i.c(eVarF0, "dispatchTimeEnd");
            int iC34 = androidx.room.util.i.c(eVarF0, "extImage");
            int iC35 = androidx.room.util.i.c(eVarF0, "bidEcpmCent");
            int iC36 = androidx.room.util.i.c(eVarF0, "ecpmCent");
            int iC37 = androidx.room.util.i.c(eVarF0, "isValid");
            int iC38 = androidx.room.util.i.c(eVarF0, "h5LinkPreload");
            int iC39 = androidx.room.util.i.c(eVarF0, "h5LinkOpenByCct");
            int iC40 = androidx.room.util.i.c(eVarF0, "countryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                int i10 = iC25;
                int i11 = iC4;
                int i12 = iC6;
                int i13 = iC39;
                int i14 = iC5;
                arrayList.add(new MbAdDbPlans(strQ0, strQ1, strQ2, strQ3, eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Integer.valueOf((int) eVarF0.getLong(iC7)), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(iC15) ? null : eVarF0.q0(iC15), eVarF0.isNull(iC16) ? null : eVarF0.q0(iC16), eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17), eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18), eVarF0.isNull(iC19) ? null : eVarF0.q0(iC19), eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20), eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21), eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22), eVarF0.isNull(iC23) ? null : Integer.valueOf((int) eVarF0.getLong(iC23)), eVarF0.isNull(iC24) ? null : eVarF0.q0(iC24), eVarF0.isNull(iC25) ? null : eVarF0.q0(iC25), eVarF0.isNull(iC26) ? null : eVarF0.q0(iC26), eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29), eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30), eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31), eVarF0.isNull(iC32) ? null : eVarF0.q0(iC32), eVarF0.isNull(iC33) ? null : eVarF0.q0(iC33), eVarF0.isNull(iC34) ? null : eVarF0.q0(iC34), eVarF0.isNull(iC35) ? null : Double.valueOf(eVarF0.getDouble(iC35)), eVarF0.isNull(iC36) ? null : Long.valueOf(eVarF0.getLong(iC36)), ((int) eVarF0.getLong(iC37)) != 0, ((int) eVarF0.getLong(iC38)) != 0, ((int) eVarF0.getLong(i13)) != 0, eVarF0.isNull(iC40) ? null : eVarF0.q0(iC40)));
                iC40 = iC40;
                iC5 = i14;
                iC3 = iC3;
                iC6 = i12;
                iC39 = i13;
                iC4 = i11;
                iC38 = iC38;
                iC2 = iC2;
                iC = iC;
                iC15 = iC15;
                iC16 = iC16;
                iC23 = iC23;
                iC24 = iC24;
                iC25 = i10;
                iC37 = iC37;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static MbAdDbPlans t(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM mb_ad_db_plans where id=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "version");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "startTime");
            int iC5 = androidx.room.util.i.c(eVarF0, "endTime");
            int iC6 = androidx.room.util.i.c(eVarF0, "extraConfig");
            int iC7 = androidx.room.util.i.c(eVarF0, "displayTimes");
            int iC8 = androidx.room.util.i.c(eVarF0, "showedTimes");
            int iC9 = androidx.room.util.i.c(eVarF0, "showDate");
            int iC10 = androidx.room.util.i.c(eVarF0, "advertiserName");
            int iC11 = androidx.room.util.i.c(eVarF0, "advertiserAvatar");
            int iC12 = androidx.room.util.i.c(eVarF0, "advertiserAvatarPath");
            int iC13 = androidx.room.util.i.c(eVarF0, "brand");
            int iC14 = androidx.room.util.i.c(eVarF0, "denyBrand");
            int iC15 = androidx.room.util.i.c(eVarF0, "model");
            int iC16 = androidx.room.util.i.c(eVarF0, "denyModel");
            int iC17 = androidx.room.util.i.c(eVarF0, PlaceTypes.COUNTRY);
            int iC18 = androidx.room.util.i.c(eVarF0, "scenes");
            int iC19 = androidx.room.util.i.c(eVarF0, "adSource");
            int iC20 = androidx.room.util.i.c(eVarF0, "extAdSlot");
            int iC21 = androidx.room.util.i.c(eVarF0, "adMaterialList");
            int iC22 = androidx.room.util.i.c(eVarF0, "adPlanUpdateTime");
            int iC23 = androidx.room.util.i.c(eVarF0, "sort");
            int iC24 = androidx.room.util.i.c(eVarF0, "adShowLevel");
            int iC25 = androidx.room.util.i.c(eVarF0, "filterClientVersion");
            int iC26 = androidx.room.util.i.c(eVarF0, "adPlanCreateTime");
            int iC27 = androidx.room.util.i.c(eVarF0, "appStarDesc");
            int iC28 = androidx.room.util.i.c(eVarF0, "appSizeDesc");
            int iC29 = androidx.room.util.i.c(eVarF0, "ctxEnableExpr");
            int iC30 = androidx.room.util.i.c(eVarF0, "ctxDisableExpr");
            int iC31 = androidx.room.util.i.c(eVarF0, "ctxAttributeConfig");
            int iC32 = androidx.room.util.i.c(eVarF0, "dispatchTimeStart");
            int iC33 = androidx.room.util.i.c(eVarF0, "dispatchTimeEnd");
            int iC34 = androidx.room.util.i.c(eVarF0, "extImage");
            int iC35 = androidx.room.util.i.c(eVarF0, "bidEcpmCent");
            int iC36 = androidx.room.util.i.c(eVarF0, "ecpmCent");
            int iC37 = androidx.room.util.i.c(eVarF0, "isValid");
            int iC38 = androidx.room.util.i.c(eVarF0, "h5LinkPreload");
            int iC39 = androidx.room.util.i.c(eVarF0, "h5LinkOpenByCct");
            int iC40 = androidx.room.util.i.c(eVarF0, "countryCode");
            MbAdDbPlans mbAdDbPlans = null;
            if (eVarF0.C0()) {
                mbAdDbPlans = new MbAdDbPlans(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Integer.valueOf((int) eVarF0.getLong(iC7)), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r83) ? null : eVarF0.q0(iC15), eVarF0.isNull(r16) ? null : eVarF0.q0(iC16), eVarF0.isNull(r17) ? null : eVarF0.q0(iC17), eVarF0.isNull(r18) ? null : eVarF0.q0(iC18), eVarF0.isNull(r19) ? null : eVarF0.q0(iC19), eVarF0.isNull(r20) ? null : eVarF0.q0(iC20), eVarF0.isNull(r21) ? null : eVarF0.q0(iC21), eVarF0.isNull(r22) ? null : eVarF0.q0(iC22), eVarF0.isNull(r23) ? null : Integer.valueOf((int) eVarF0.getLong(iC23)), eVarF0.isNull(r24) ? null : eVarF0.q0(iC24), eVarF0.isNull(r25) ? null : eVarF0.q0(iC25), eVarF0.isNull(r26) ? null : eVarF0.q0(iC26), eVarF0.isNull(r27) ? null : eVarF0.q0(iC27), eVarF0.isNull(r28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.isNull(r32) ? null : eVarF0.q0(iC32), eVarF0.isNull(r33) ? null : eVarF0.q0(iC33), eVarF0.isNull(r34) ? null : eVarF0.q0(iC34), eVarF0.isNull(r35) ? null : Double.valueOf(eVarF0.getDouble(iC35)), eVarF0.isNull(r36) ? null : Long.valueOf(eVarF0.getLong(iC36)), ((int) eVarF0.getLong(iC37)) != 0, ((int) eVarF0.getLong(iC38)) != 0, ((int) eVarF0.getLong(iC39)) != 0, eVarF0.isNull(iC40) ? null : eVarF0.q0(iC40));
            }
            eVarF0.close();
            return mbAdDbPlans;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List u(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM mb_ad_db_plans where adSource=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "version");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "startTime");
            int iC5 = androidx.room.util.i.c(eVarF0, "endTime");
            int iC6 = androidx.room.util.i.c(eVarF0, "extraConfig");
            int iC7 = androidx.room.util.i.c(eVarF0, "displayTimes");
            int iC8 = androidx.room.util.i.c(eVarF0, "showedTimes");
            int iC9 = androidx.room.util.i.c(eVarF0, "showDate");
            int iC10 = androidx.room.util.i.c(eVarF0, "advertiserName");
            int iC11 = androidx.room.util.i.c(eVarF0, "advertiserAvatar");
            int iC12 = androidx.room.util.i.c(eVarF0, "advertiserAvatarPath");
            int iC13 = androidx.room.util.i.c(eVarF0, "brand");
            int iC14 = androidx.room.util.i.c(eVarF0, "denyBrand");
            int iC15 = androidx.room.util.i.c(eVarF0, "model");
            int iC16 = androidx.room.util.i.c(eVarF0, "denyModel");
            int iC17 = androidx.room.util.i.c(eVarF0, PlaceTypes.COUNTRY);
            int iC18 = androidx.room.util.i.c(eVarF0, "scenes");
            int iC19 = androidx.room.util.i.c(eVarF0, "adSource");
            int iC20 = androidx.room.util.i.c(eVarF0, "extAdSlot");
            int iC21 = androidx.room.util.i.c(eVarF0, "adMaterialList");
            int iC22 = androidx.room.util.i.c(eVarF0, "adPlanUpdateTime");
            int iC23 = androidx.room.util.i.c(eVarF0, "sort");
            int iC24 = androidx.room.util.i.c(eVarF0, "adShowLevel");
            int iC25 = androidx.room.util.i.c(eVarF0, "filterClientVersion");
            int iC26 = androidx.room.util.i.c(eVarF0, "adPlanCreateTime");
            int iC27 = androidx.room.util.i.c(eVarF0, "appStarDesc");
            int iC28 = androidx.room.util.i.c(eVarF0, "appSizeDesc");
            int iC29 = androidx.room.util.i.c(eVarF0, "ctxEnableExpr");
            int iC30 = androidx.room.util.i.c(eVarF0, "ctxDisableExpr");
            int iC31 = androidx.room.util.i.c(eVarF0, "ctxAttributeConfig");
            int iC32 = androidx.room.util.i.c(eVarF0, "dispatchTimeStart");
            int iC33 = androidx.room.util.i.c(eVarF0, "dispatchTimeEnd");
            int iC34 = androidx.room.util.i.c(eVarF0, "extImage");
            int iC35 = androidx.room.util.i.c(eVarF0, "bidEcpmCent");
            int iC36 = androidx.room.util.i.c(eVarF0, "ecpmCent");
            int iC37 = androidx.room.util.i.c(eVarF0, "isValid");
            int iC38 = androidx.room.util.i.c(eVarF0, "h5LinkPreload");
            int iC39 = androidx.room.util.i.c(eVarF0, "h5LinkOpenByCct");
            int iC40 = androidx.room.util.i.c(eVarF0, "countryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                int i10 = iC25;
                int i11 = iC4;
                int i12 = iC5;
                arrayList.add(new MbAdDbPlans(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Integer.valueOf((int) eVarF0.getLong(iC7)), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(iC15) ? null : eVarF0.q0(iC15), eVarF0.isNull(iC16) ? null : eVarF0.q0(iC16), eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17), eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18), eVarF0.isNull(iC19) ? null : eVarF0.q0(iC19), eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20), eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21), eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22), eVarF0.isNull(iC23) ? null : Integer.valueOf((int) eVarF0.getLong(iC23)), eVarF0.isNull(iC24) ? null : eVarF0.q0(iC24), eVarF0.isNull(iC25) ? null : eVarF0.q0(iC25), eVarF0.isNull(iC26) ? null : eVarF0.q0(iC26), eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29), eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30), eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31), eVarF0.isNull(iC32) ? null : eVarF0.q0(iC32), eVarF0.isNull(iC33) ? null : eVarF0.q0(iC33), eVarF0.isNull(iC34) ? null : eVarF0.q0(iC34), eVarF0.isNull(iC35) ? null : Double.valueOf(eVarF0.getDouble(iC35)), eVarF0.isNull(iC36) ? null : Long.valueOf(eVarF0.getLong(iC36)), ((int) eVarF0.getLong(iC37)) != 0, ((int) eVarF0.getLong(iC38)) != 0, ((int) eVarF0.getLong(iC39)) != 0, eVarF0.isNull(iC40) ? null : eVarF0.q0(iC40)));
                iC40 = iC40;
                iC4 = i11;
                iC5 = i12;
                iC38 = iC38;
                iC39 = iC39;
                iC2 = iC2;
                iC3 = iC3;
                iC = iC;
                iC15 = iC15;
                iC16 = iC16;
                iC23 = iC23;
                iC24 = iC24;
                iC25 = i10;
                iC37 = iC37;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit v(MbAdDbPlans mbAdDbPlans, y3.b bVar) throws Exception {
        this.f73080b.d(bVar, mbAdDbPlans);
        return Unit.f64096a;
    }

    public Unit w(List list, y3.b bVar) throws Exception {
        this.f73080b.c(bVar, list);
        return Unit.f64096a;
    }

    public Unit x(MbAdDbPlans mbAdDbPlans, y3.b bVar) throws Exception {
        this.f73081c.c(bVar, mbAdDbPlans);
        return Unit.f64096a;
    }

    public static Unit y(boolean z10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE mb_ad_db_plans SET isValid = ? WHERE version !=?");
        try {
            eVarF0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f73079a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.s((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f73079a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73071a.w(list, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        mbAdDbPlans.getClass();
        return androidx.room.util.b.f(this.f73079a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73076a.v(mbAdDbPlans, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73079a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.r(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final boolean z10, final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73079a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.y(z10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73079a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.t(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object g(final MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        mbAdDbPlans.getClass();
        return androidx.room.util.b.f(this.f73079a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73068a.x(mbAdDbPlans, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object h(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73079a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.u(str, (y3.b) obj);
            }
        }, continuation);
    }
}
