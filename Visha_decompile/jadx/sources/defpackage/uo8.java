package defpackage;

import android.content.Context;
import android.net.Uri;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import java.util.List;
import kotlin.Pair;

public abstract class uo8 {
    public static final int a(Context context, List list) {
        List listK;
        Pair pairFilterAudio$default;
        y45.j(context, "<this>");
        if (list == null || (pairFilterAudio$default = AudioFilterKtxKt.filterAudio$default(list, false, false, false, 7, null)) == null || (listK = (List) pairFilterAudio$default.getSecond()) == null) {
            listK = y71.k();
        }
        if (!listK.isEmpty()) {
            RecentAddDataManager.a().i = ((AudioItem) listK.get(0)).uri;
            AudioAlbum audioAlbumD = ao.d.a().D(((AudioItem) listK.get(0)).id);
            if (audioAlbumD != null && audioAlbumD.imgPath != null) {
                RecentAddDataManager.a().j = Uri.parse(audioAlbumD.imgPath);
            }
        }
        return listK.size();
    }
}
