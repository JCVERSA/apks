package defpackage;

import androidx.media3.common.MimeTypes;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public abstract class jfe {
    public static String a(List list) {
        Iterator it = list.iterator();
        String str = null;
        boolean z = false;
        while (it.hasNext()) {
            String str2 = ((vfe) it.next()).a.g.o;
            if (bue.j(str2)) {
                return MimeTypes.VIDEO_MP4;
            }
            if (bue.h(str2)) {
                z = true;
            } else if (bue.i(str2)) {
                if (Objects.equals(str2, MimeTypes.IMAGE_HEIC)) {
                    str = MimeTypes.IMAGE_HEIF;
                } else if (Objects.equals(str2, MimeTypes.IMAGE_AVIF)) {
                    str = MimeTypes.IMAGE_AVIF;
                }
            }
        }
        if (z) {
            return MimeTypes.AUDIO_MP4;
        }
        return str != null ? str : MimeTypes.APPLICATION_MP4;
    }
}
