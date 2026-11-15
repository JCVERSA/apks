package defpackage;

import android.text.TextUtils;
import com.transsion.audio.lyrics.bean.LyricFile;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class ds8 implements pu5 {
    public List a;

    public ds8(List list) {
        this.a = list;
    }

    @Override
    public LyricFile read() {
        LyricFile lyricFile = new LyricFile();
        if (this.a.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (String str : this.a) {
            arrayList.add(str);
            if (str.startsWith("[offset:") && str.endsWith("]")) {
                String strSubstring = str.substring(str.lastIndexOf(StringUtils.PROCESS_POSTFIX_DELIMITER) + 1, str.length() - 1);
                if (!TextUtils.isEmpty(strSubstring)) {
                    i = Integer.parseInt(strSubstring);
                }
            }
        }
        lyricFile.setAllLines(arrayList);
        lyricFile.setOffset(i);
        return lyricFile;
    }
}
