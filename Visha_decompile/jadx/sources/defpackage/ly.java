package defpackage;

import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import java.util.Set;
import kotlin.b;

public final class ly extends ac0 {
    public final yi5 d = b.a(new c74() {
        @Override
        public final Object invoke() {
            return ly.n();
        }
    });
    public final yi5 e = b.a(new c74() {
        @Override
        public final Object invoke() {
            return ly.m();
        }
    });

    public ly() {
        j(AudioItem.class, new iy());
        j(MediaBucket.class, new wb6());
        j(PlayListFolderItem.class, new o78());
        j(PlayListMediaItem.class, new c48());
        j(qe6.class, new te6());
        j(String.class, new ib5());
    }

    public static final Set m() {
        return ye9.j(PlayListFolderItem.class, MediaPlayCount.class, PlayListMediaItem.class, PlayListItem.class, qe6.class, ConvertAudio.class);
    }

    public static final Set n() {
        return ye9.j(AudioItem.class, MediaBucket.class, PlayListFolderItem.class, PlayListMediaItem.class, qe6.class, String.class);
    }

    @Override
    public Set d() {
        return (Set) this.e.getValue();
    }

    @Override
    public Set e() {
        return (Set) this.d.getValue();
    }
}
