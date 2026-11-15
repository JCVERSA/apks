package defpackage;

import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public interface ffa extends zfa {
    public static final List W4 = Collections.unmodifiableList(Arrays.asList("UNKNOWN", ID3v23Frames.FRAME_ID_V3_TIME, "DATE", "DATETIME"));

    Date f();

    int j();
}
