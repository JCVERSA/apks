package x6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class u extends androidx.room.f {
    public u(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String e() {
        return "DELETE FROM `hisavana_ab_room` WHERE `layer_id` = ?";
    }

    @Override
    public final void j(z3.h hVar, Object obj) {
        hVar.c(1, ((z) obj).getLayerId());
    }
}
