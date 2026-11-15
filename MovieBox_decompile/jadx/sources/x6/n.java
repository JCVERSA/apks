package x6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class n extends androidx.room.h {
    public n(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String e() {
        return "INSERT OR REPLACE INTO `hisavana_local_ab_room` (`local_ab_version_code`,`local_ab_json`) VALUES (?,?)";
    }

    @Override
    public final void j(z3.h hVar, Object obj) {
        r rVar = (r) obj;
        hVar.c(1, rVar.f75123a);
        String str = rVar.f75124b;
        if (str == null) {
            hVar.g(2);
        } else {
            hVar.V(2, str);
        }
    }
}
