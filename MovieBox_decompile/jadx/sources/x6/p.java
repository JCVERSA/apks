package x6;

import androidx.room.l0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class p extends l0 {
    public p(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String e() {
        return "DELETE FROM hisavana_local_ab_room";
    }
}
