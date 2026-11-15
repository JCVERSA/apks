package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.privateroom.api.beans.PrivateFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;

public abstract class nr3 {
    public static boolean b(MediaItem mediaItem, PrivateFile privateFile) {
        return TextUtils.equals(privateFile.getHidePath(), mediaItem.data);
    }

    public static PrivateFile c(MediaItem mediaItem) {
        return new PrivateFile.PrivateFileBuilder().withOriginalFileName(mediaItem.displayName).withOriginalPath(mediaItem.data).withDate(mediaItem.dateModified).withDuration(mediaItem.duration).withSize(mediaItem.size).build();
    }

    public static List d(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(c((MediaItem) it.next()));
        }
        return arrayList;
    }

    public static MediaItem e(PrivateFile privateFile) {
        MediaItem mediaItem = new MediaItem();
        mediaItem.displayName = privateFile.getOriginalFilename();
        mediaItem.data = privateFile.getHidePath();
        mediaItem.dateModified = privateFile.getDate();
        mediaItem.duration = privateFile.getDuration();
        mediaItem.size = privateFile.getSize();
        if (privateFile.getHidePath() != null) {
            mediaItem.uri = Uri.parse(privateFile.getHidePath());
        }
        return mediaItem;
    }

    public static List f(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        int i = 1;
        while (it.hasNext()) {
            MediaItem mediaItemE = e((PrivateFile) it.next());
            i++;
            mediaItemE.id = i;
            arrayList.add(mediaItemE);
        }
        return arrayList;
    }

    public static PrivateFile g(final MediaItem mediaItem) {
        Optional optionalFindFirst = tg8.d().b().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return nr3.b(mediaItem, (PrivateFile) obj);
            }
        }).findFirst();
        return optionalFindFirst.isPresent() ? (PrivateFile) optionalFindFirst.get() : new PrivateFile();
    }

    public static List h(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(g((MediaItem) it.next()));
        }
        return arrayList;
    }
}
