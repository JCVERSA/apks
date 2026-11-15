package x6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class o extends androidx.room.f {
    public o(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String e() {
        return "UPDATE OR ABORT `hisavana_local_ab_room` SET `local_ab_version_code` = ?,`local_ab_json` = ? WHERE `local_ab_version_code` = ?";
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
        hVar.c(3, rVar.f75123a);
    }
}
