package defpackage;

import android.text.TextUtils;
import com.transsion.audio.lyrics.bean.LrcRow;
import com.transsion.audio.lyrics.bean.LyricFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ou5 {
    public List a(pu5 pu5Var, boolean z, String str) {
        ArrayList arrayList = new ArrayList();
        LyricFile lyricFile = pu5Var.read();
        if (lyricFile != null && lyricFile.getAllLines().size() != 0) {
            Iterator<String> it = lyricFile.getAllLines().iterator();
            int i = 0;
            int iMax = 0;
            while (it.hasNext()) {
                List<LrcRow> listCreateRows = LrcRow.createRows(it.next(), lyricFile.getOffset(), iMax);
                if (listCreateRows != null && listCreateRows.size() > 0) {
                    arrayList.addAll(listCreateRows);
                    Iterator<LrcRow> it2 = listCreateRows.iterator();
                    while (it2.hasNext()) {
                        iMax = Math.max(iMax, it2.next().time);
                    }
                }
            }
            Collections.sort(arrayList);
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            while (i2 < arrayList.size()) {
                LrcRow lrcRow = (LrcRow) arrayList.get(i2);
                int i3 = i2 + 1;
                LrcRow lrcRow2 = i3 < arrayList.size() ? (LrcRow) arrayList.get(i3) : null;
                if (lrcRow2 == null || lrcRow.time != lrcRow2.time || TextUtils.isEmpty(lrcRow.content) || lrcRow.noTimeText) {
                    arrayList2.add(lrcRow);
                } else {
                    LrcRow lrcRow3 = new LrcRow();
                    lrcRow3.content = lrcRow.content;
                    lrcRow3.time = lrcRow.time;
                    lrcRow3.timeStr = lrcRow.timeStr;
                    lrcRow3.translate = lrcRow2.content;
                    arrayList2.add(lrcRow3);
                    i2 = i3;
                }
                i2++;
            }
            arrayList.clear();
            arrayList.addAll(arrayList2);
            if (arrayList.size() == 0) {
                return arrayList;
            }
            Collections.sort(arrayList);
            while (i < arrayList.size() - 1) {
                int i4 = i + 1;
                ((LrcRow) arrayList.get(i)).totalTime = ((LrcRow) arrayList.get(i4)).time - ((LrcRow) arrayList.get(i)).time;
                i = i4;
            }
            ((LrcRow) arrayList.get(arrayList.size() - 1)).totalTime = 5000L;
            if (z) {
                b(arrayList, lyricFile.getAllLines(), str);
            }
        }
        return arrayList;
    }

    public void b(List list, List list2, String str) {
        ru5.c(fi1.e(list2), str + "raw", true);
        ru5.c(fi1.e(list), str, true);
    }
}
