package defpackage;

import com.transsion.dbdata.beans.media.MediaItem;
import java.util.List;
import java.util.function.Predicate;

public abstract class ye6 {
    public static void b(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ye6.c((MediaItem) obj);
            }
        });
    }

    public static boolean c(MediaItem mediaItem) {
        return mediaItem == null || mediaItem.isTimeItem;
    }
}
