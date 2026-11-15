package defpackage;

import android.net.Uri;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public interface dx4 {

    public static final class a {
        public static List a(dx4 dx4Var, List list) {
            y45.j(list, "mediaItems");
            if (list.isEmpty()) {
                return y71.k();
            }
            List listC = x71.c();
            SimpleDateFormat simpleDateFormatC = vna.c(OSDateTimePicker.FORMAT_Y_M_D);
            Iterator it = list.iterator();
            String str = null;
            while (it.hasNext()) {
                MediaItem mediaItem = (MediaItem) it.next();
                String strE = vna.e(mediaItem.dateModified * ((long) 1000), simpleDateFormatC);
                if (!y45.e(strE, str)) {
                    listC.add(MediaDataExtKt.createGroupHeaderItem(mediaItem));
                    str = strE;
                }
                listC.add(mediaItem);
            }
            return x71.a(listC);
        }
    }

    PlayListMediaItem A(int i, int i2, MediaItem mediaItem, boolean z);

    boolean B(PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates);

    boolean C(MediaItem mediaItem);

    void D(List list);

    List E(long j);

    void F(MediaItem mediaItem, e74 e74Var);

    boolean G(MediaItem mediaItem);

    VideoTotalTrack H();

    MediaItem I(String str);

    int J(int i, int i2);

    int K(int i, MediaItem mediaItem, boolean z);

    String L();

    List M(int i, int i2);

    List N(int i, List list, boolean z);

    List O(boolean z, int i, boolean z2);

    void P(List list, e74 e74Var);

    int Q(String str, long j, MediaItem mediaItem, boolean z);

    boolean R();

    List S();

    boolean T(String str);

    List U(int i);

    List V(String str, long j, ArrayList arrayList, boolean z);

    List W();

    boolean X(int i, String str);

    boolean Y(MediaItem mediaItem);

    List Z(boolean z, e74 e74Var);

    List a(List list);

    int a0(VideoPlayList videoPlayList);

    PlayListMediaItem b(int i);

    List b0(PlayVideoData playVideoData);

    SubtitleSettingData c();

    int c0(MediaItem mediaItem);

    List d(String str);

    List d0();

    int e(SubtitleHistory subtitleHistory);

    List e0(int i);

    long f(String str);

    List f0(String str);

    int g(long j);

    AudioTrack getAudioTrack(int i);

    MediaItem h(int i);

    List i(MediaBucket mediaBucket);

    int insertSubtitleSetting(SubtitleSettingData subtitleSettingData);

    boolean j(boolean z, MediaItem mediaItem);

    int k(int i, int i2, String str);

    List l(List list);

    MediaItem m(String str);

    MediaItem n(Uri uri);

    int o(int i);

    List p(List list);

    int q(String str);

    List r(int i);

    List s();

    int t(int i, SubtitleTrackInfo subtitleTrackInfo);

    List u(boolean z);

    int v(SubtitleHistory subtitleHistory);

    List w(String str);

    void x();

    List y(List list);

    MediaItem z(String str);
}
