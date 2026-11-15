package com.hunantv.media.player.subtitle.a;

import android.os.Handler;
import android.os.Parcel;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.utils.NumericUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Vector;
import org.apache.commons.lang3.time.DateUtils;

public class a extends i {
    private final Handler h;

    public a(com.hunantv.media.player.subtitle.d.c cVar, MediaFormat mediaFormat) {
        super(cVar, mediaFormat);
        this.h = null;
    }

    private static long a(String str) {
        long j = Long.parseLong(str.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[0].trim());
        long j2 = Long.parseLong(str.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim());
        long j3 = Long.parseLong(str.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[2].split(StringUtils.COMMA)[0].trim());
        return (j * DateUtils.MILLIS_PER_HOUR) + (j2 * 60000) + (j3 * 1000) + Long.parseLong(str.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[2].split(StringUtils.COMMA)[1].trim());
    }

    @Override
    public com.hunantv.media.player.subtitle.d.c c() {
        return super.c();
    }

    private String a(BufferedReader bufferedReader) throws IOException {
        String line;
        if (bufferedReader == null) {
            return null;
        }
        do {
            line = bufferedReader.readLine();
            if (!StringUtil.isEmpty(line)) {
                return line;
            }
        } while (line != null);
        return null;
    }

    @Override
    public void a(b bVar) {
        super.a(bVar);
    }

    @Override
    public void a(d dVar) {
        super.a(dVar);
    }

    @Override
    public void a(Vector<com.hunantv.media.player.subtitle.d.a> vector) {
        if (c() != null) {
            super.a(vector);
            return;
        }
        if (this.h == null) {
            return;
        }
        for (com.hunantv.media.player.subtitle.d.a aVar : vector) {
            b bVar = (b) aVar;
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInt(102);
            parcelObtain.writeInt(7);
            parcelObtain.writeInt((int) aVar.a);
            parcelObtain.writeInt(16);
            StringBuilder sb = new StringBuilder();
            for (String str : bVar.p) {
                sb.append(str);
                sb.append('\n');
            }
            byte[] bytes = sb.toString().getBytes();
            parcelObtain.writeInt(bytes.length);
            parcelObtain.writeByteArray(bytes);
            this.h.sendMessage(this.h.obtainMessage(99, 0, 0, parcelObtain));
        }
        vector.clear();
    }

    @Override
    public void a(byte[] bArr, boolean z, long j, String str) {
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), str));
                while (true) {
                    String strA = a(bufferedReader);
                    if (strA == null) {
                        return;
                    }
                    if (NumericUtil.isNumeric(strA.trim())) {
                        String strA2 = a(bufferedReader);
                        if (strA2 == null) {
                            return;
                        }
                        if (strA2.contains("-->")) {
                            b bVar = new b();
                            String[] strArrSplit = strA2.split("-->");
                            int i = 0;
                            try {
                                bVar.a = a(strArrSplit[0]);
                                bVar.b = a(strArrSplit[1]);
                                bVar.d = j;
                                ArrayList<String> arrayList = new ArrayList();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null || line.trim().equals("")) {
                                        break;
                                    } else {
                                        arrayList.add(line);
                                    }
                                }
                                bVar.q = new c[arrayList.size()][];
                                bVar.p = (String[]) arrayList.toArray(new String[0]);
                                for (String str2 : arrayList) {
                                    c[] cVarArr = {new c(str2, -1L)};
                                    bVar.p[i] = str2;
                                    bVar.q[i] = cVarArr;
                                    i++;
                                }
                                a((com.hunantv.media.player.subtitle.d.a) bVar);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            } catch (IOException | Exception e) {
                com.hunantv.media.player.subtitle.c.e("SRTTrack", e.getMessage());
            }
        } catch (UnsupportedEncodingException e2) {
            com.hunantv.media.player.subtitle.c.d("SRTTrack", "subtitle data is not UTF-8 encoded: " + e2);
        }
    }
}
