package x6;

import androidx.room.l0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class x extends l0 {
    public x(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String e() {
        return "UPDATE hisavana_ab_room SET request_time = ? WHERE layer_id = ?";
    }
}
