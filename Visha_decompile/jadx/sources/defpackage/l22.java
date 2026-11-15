package defpackage;

import android.text.TextUtils;
import com.transsion.audio.lyrics.bean.LyricFile;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;

public class l22 implements pu5 {
    public BufferedReader a;

    public l22(BufferedReader bufferedReader) {
        this.a = bufferedReader;
    }

    @Override
    public LyricFile read() {
        LyricFile lyricFile = new LyricFile();
        ArrayList arrayList = new ArrayList();
        if (this.a == null) {
            return null;
        }
        int i = 0;
        while (true) {
            try {
                try {
                    String line = this.a.readLine();
                    if (line == null) {
                        try {
                            break;
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                    arrayList.add(line);
                    if (line.startsWith("[offset:") && line.endsWith("]")) {
                        String strSubstring = line.substring(line.lastIndexOf(StringUtils.PROCESS_POSTFIX_DELIMITER) + 1, line.length() - 1);
                        if (TextUtils.isEmpty(strSubstring)) {
                            continue;
                        } else {
                            i = Integer.parseInt(strSubstring);
                        }
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                    try {
                        this.a.close();
                    } catch (IOException e3) {
                        throw new RuntimeException(e3);
                    }
                }
            } catch (Throwable th) {
                try {
                    this.a.close();
                    throw th;
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }
        this.a.close();
        lyricFile.setAllLines(arrayList);
        lyricFile.setOffset(i);
        return lyricFile;
    }
}
