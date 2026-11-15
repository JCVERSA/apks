package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;

public final class b1 implements a1 {

    private final RoomDatabase f41997a;

    private final androidx.room.g f41998b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `video_land_ad` (`resourceId`,`startAdDayKey`,`endAdDayKey`) VALUES (?,?,?)";
        }

        @Override
        public void a(y3.e eVar, VideoLandAdBean videoLandAdBean) {
            if (videoLandAdBean.getResourceId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, videoLandAdBean.getResourceId());
            }
            eVar.c(2, videoLandAdBean.getStartAdDayKey());
            eVar.c(3, videoLandAdBean.getEndAdDayKey());
        }
    }

    public b1(RoomDatabase roomDatabase) {
        this.f41997a = roomDatabase;
    }

    public static List a() {
        return Collections.emptyList();
    }
}
