package defpackage;

import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.media.VideoInfoTrack;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import java.util.Set;
import kotlin.b;

public final class f5c extends ac0 {
    public final yi5 d = b.a(new c74() {
        @Override
        public final Object invoke() {
            return f5c.q();
        }
    });
    public final yi5 e = b.a(new c74() {
        @Override
        public final Object invoke() {
            return f5c.p();
        }
    });
    public final yi5 f = b.a(new c74() {
        @Override
        public final Object invoke() {
            return f5c.o();
        }
    });

    public f5c() {
        j(MediaItem.class, new b5c());
        j(VideoTotalTrack.class, n());
        j(VideoInfoTrack.class, n());
        j(SubtitleTrackInfo.class, new m7c());
        j(MediaBucket.class, new wb6());
        j(PlayListFolderItem.class, new o78());
        j(PlayListMediaItem.class, new c48());
        j(qe6.class, new te6());
        j(String.class, new ib5());
    }

    public static final zob o() {
        return new zob();
    }

    public static final Set p() {
        return ye9.j(PlayListFolderItem.class, MediaPlayCount.class, PlayListMediaItem.class, PlayListItem.class, qe6.class, ConvertingVideo.class, SubtitleHistory.class);
    }

    public static final Set q() {
        return ye9.j(MediaItem.class, VideoTotalTrack.class, VideoInfoTrack.class, SubtitleTrackInfo.class, MediaBucket.class, PlayListFolderItem.class, PlayListMediaItem.class, qe6.class, String.class);
    }

    @Override
    public Set d() {
        return (Set) this.e.getValue();
    }

    @Override
    public Set e() {
        return (Set) this.d.getValue();
    }

    public final zob n() {
        return (zob) this.f.getValue();
    }
}
