package q0;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.pdf.PdfRenderer;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Locale;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.NArc;

public final class e {

    public static class a {

        public final Bitmap f1379a;

        public final int[] f1380b;

        public final String[] f1381c;

        public int f1382d = 0;

        public a(Bitmap bitmap, int[] iArr, String[] strArr) {
            this.f1379a = bitmap;
            this.f1380b = iArr;
            this.f1381c = strArr;
        }
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            int i2 = (int) (Long.parseLong(str) / 1000);
            Locale locale = Locale.ENGLISH;
            String str2 = String.format(locale, "%02d", Integer.valueOf(i2 % 60));
            int i3 = i2 / 60;
            String str3 = String.format(locale, "%02d", Integer.valueOf(i3 % 60)) + ":" + str2;
            int i4 = i3 / 60;
            if (i4 <= 0) {
                return str3;
            }
            return String.format(locale, "%02d", Integer.valueOf(i4 % 60)) + ":" + str3;
        } catch (Exception unused) {
            return "";
        }
    }

    public static a b(int i2, int i3, h0.h hVar) {
        Bitmap bitmapF;
        if (hVar.o() && a0.c.K(i2, 1)) {
            String strR = hVar.r();
            try {
                try {
                    if ("apks".equals(a0.c.s(strR))) {
                        bitmapF = q0.a.e(i3, strR);
                    } else {
                        bitmapF = q0.a.f(strR);
                        if (bitmapF != null) {
                            try {
                                if (bitmapF.getWidth() <= i3) {
                                    bitmapF = Bitmap.createScaledBitmap(bitmapF, i3, i3, true);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                } catch (OutOfMemoryError unused2) {
                    return null;
                }
            } catch (Exception unused3) {
                bitmapF = null;
            }
            if (bitmapF != null) {
                return new a(bitmapF, null, null);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0185 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:154:0x0227 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:156:0x022c A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:157:0x023a  */
    /* JADX WARN: Code duplicated, block: B:159:0x0240  */
    /* JADX WARN: Code duplicated, block: B:162:0x0257 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0260 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:166:0x0264 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:167:0x0266 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:168:0x026f A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0275 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TRY_LEAVE, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0291  */
    /* JADX WARN: Code duplicated, block: B:181:0x0293 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:186:0x02b8 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:188:0x02c9 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:189:0x02ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x02d0 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:191:0x02e1 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:193:0x02e7 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:196:0x02f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:198:0x02f5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:80:0x010d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0110 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x0126 A[Catch: all -> 0x0109, Exception | OutOfMemoryError -> 0x0167, Exception | OutOfMemoryError -> 0x0167, TryCatch #6 {all -> 0x0109, blocks: (B:75:0x00fe, B:77:0x0104, B:84:0x0114, B:87:0x011e, B:89:0x0126, B:91:0x012c, B:106:0x015a, B:112:0x016f, B:94:0x013b, B:97:0x0141, B:120:0x0187, B:123:0x018f, B:135:0x01c1, B:138:0x01d3, B:139:0x01e8, B:141:0x01ec, B:142:0x01fd, B:144:0x0204, B:146:0x020a, B:152:0x0221, B:154:0x0227, B:156:0x022c, B:160:0x0242, B:162:0x0257, B:163:0x025b, B:165:0x0260, B:178:0x028c, B:181:0x0293, B:183:0x0298, B:184:0x02b1, B:186:0x02b8, B:188:0x02c9, B:190:0x02d0, B:191:0x02e1, B:193:0x02e7, B:194:0x02ea, B:199:0x02f7, B:200:0x02fc, B:167:0x0266, B:168:0x026f, B:170:0x0275, B:177:0x0289, B:148:0x0213, B:150:0x0218, B:124:0x0195, B:127:0x019b, B:129:0x01a5, B:130:0x01b0, B:131:0x01b6), top: B:214:0x00fe }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0139 A[ADDED_TO_REGION] */
    public static a c(h0.h hVar, long j2, int i2, int i3, byte[] bArr) throws Throwable {
        String[] strArr;
        int[] iArr;
        ParcelFileDescriptor parcelFileDescriptor;
        InputStream inputStreamW;
        ParcelFileDescriptor parcelFileDescriptorV;
        ParcelFileDescriptor parcelFileDescriptorV2;
        String strR;
        boolean zI;
        Bitmap bitmapF;
        int i4;
        BitmapFactory.Options options;
        BufferedInputStream bufferedInputStream;
        a aVar;
        d dVar;
        Bitmap bitmapD;
        BufferedInputStream bufferedInputStream2;
        InputStream bufferedInputStream3 = null;
        if (a0.c.K(i2, 2)) {
            iArr = new int[]{R.string.FINFO_IMAGE_SIZE, R.string.FINFO_IMAGE_CAMERA_MAKE, R.string.FINFO_IMAGE_CAMERA_MODEL};
            strArr = new String[3];
        } else if (a0.c.K(i2, 4)) {
            iArr = new int[]{R.string.FINFO_IMAGE_SIZE};
            strArr = new String[1];
        } else {
            strArr = null;
            iArr = null;
        }
        String strE = hVar.e();
        try {
            try {
                if (hVar.k()) {
                    try {
                        try {
                            if (!a0.c.K(h0.e.c(hVar), 1)) {
                                if (!a0.c.K(i2, 1)) {
                                    return null;
                                }
                                try {
                                    parcelFileDescriptorV = h0.f.u(hVar).v(36864);
                                    try {
                                        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorV.getFileDescriptor());
                                        if (bitmapDecodeFileDescriptor != null) {
                                            a aVar2 = new a(bitmapDecodeFileDescriptor, iArr, strArr);
                                            n0.e.c(parcelFileDescriptorV);
                                            return aVar2;
                                        }
                                    } catch (Exception unused) {
                                    } catch (Throwable th) {
                                        th = th;
                                        n0.e.c(parcelFileDescriptorV);
                                        throw th;
                                    }
                                } catch (Exception unused2) {
                                    parcelFileDescriptorV = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    parcelFileDescriptorV = null;
                                }
                                n0.e.c(parcelFileDescriptorV);
                                return null;
                            }
                        } catch (Exception | OutOfMemoryError unused3) {
                            inputStreamW = null;
                            parcelFileDescriptor = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        parcelFileDescriptor = null;
                        n0.e.d(bufferedInputStream3);
                        n0.e.c(parcelFileDescriptor);
                        throw th;
                    }
                }
                if (hVar.g()) {
                    NArc nArcC = f0.a.m().c();
                    if (nArcC == null) {
                        return null;
                    }
                    inputStreamW = nArcC.h(a0.c.i0(-1, hVar.f1109d), hVar.f1110e);
                } else {
                    if (!hVar.m()) {
                        int i5 = Build.VERSION.SDK_INT;
                        if (i5 >= 24 || (i5 >= 21 && (strArr == null || strArr.length == 1 || !hVar.j()))) {
                            try {
                                parcelFileDescriptorV2 = h0.f.u(hVar).v(268435456);
                            } catch (Exception unused4) {
                                parcelFileDescriptorV2 = null;
                            }
                            if (parcelFileDescriptorV2 != null) {
                                try {
                                    if (Os.lseek(parcelFileDescriptorV2.getFileDescriptor(), 0L, OsConstants.SEEK_SET) != 0) {
                                        throw new Exception("Seek error! Unsupported path!");
                                    }
                                } catch (Exception | OutOfMemoryError unused5) {
                                    parcelFileDescriptor = parcelFileDescriptorV2;
                                } catch (Throwable th4) {
                                    th = th4;
                                    parcelFileDescriptor = parcelFileDescriptorV2;
                                    n0.e.d(bufferedInputStream3);
                                    n0.e.c(parcelFileDescriptor);
                                    throw th;
                                }
                                inputStreamW = bufferedInputStream3;
                                n0.e.d(inputStreamW);
                                n0.e.c(parcelFileDescriptor);
                                return null;
                            }
                            parcelFileDescriptor = parcelFileDescriptorV2;
                            inputStreamW = null;
                        } else {
                            inputStreamW = null;
                            parcelFileDescriptor = null;
                        }
                        if (inputStreamW == null || parcelFileDescriptor != null) {
                            strR = null;
                            if (inputStreamW != null && parcelFileDescriptor == null && strR == null) {
                                hVar.e();
                                n0.e.d(inputStreamW);
                                n0.e.c(parcelFileDescriptor);
                                return null;
                            }
                            zI = a0.c.I(strE);
                            if (inputStreamW != null && !inputStreamW.markSupported()) {
                                boolean zG = hVar.g();
                                if ((j2 <= 2097152 || zG) && Build.VERSION.SDK_INT >= 24 && zI) {
                                    bufferedInputStream2 = new BufferedInputStream(inputStreamW, 131072);
                                    try {
                                        bufferedInputStream2.mark(5242880);
                                        inputStreamW = bufferedInputStream2;
                                    } catch (Exception | OutOfMemoryError unused6) {
                                        inputStreamW = bufferedInputStream2;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        bufferedInputStream3 = bufferedInputStream2;
                                        n0.e.d(bufferedInputStream3);
                                        n0.e.c(parcelFileDescriptor);
                                        throw th;
                                    }
                                } else if ((j2 > 131072 || zG) && a0.c.P(strE)) {
                                    if (j2 <= 5242880) {
                                        bufferedInputStream3 = new BufferedInputStream(inputStreamW, ((int) j2) + 1);
                                        try {
                                            bufferedInputStream3.mark(5242880);
                                            inputStreamW = bufferedInputStream3;
                                        } catch (Exception | OutOfMemoryError unused7) {
                                            inputStreamW = bufferedInputStream3;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            n0.e.d(bufferedInputStream3);
                                            n0.e.c(parcelFileDescriptor);
                                            throw th;
                                        }
                                    }
                                }
                            }
                            if (zI || !(inputStreamW == null || inputStreamW.markSupported())) {
                                bitmapF = null;
                                i4 = 0;
                                options = new BitmapFactory.Options();
                                options.inTempStorage = bArr;
                                if (!"png".equals(a0.c.s(strE))) {
                                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                                }
                                options.inJustDecodeBounds = true;
                                if (strR != null) {
                                    BitmapFactory.decodeFile(strR, options);
                                } else if (parcelFileDescriptor != null) {
                                    BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                                } else {
                                    if (!inputStreamW.markSupported()) {
                                        bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                                        try {
                                            bufferedInputStream.mark(131072);
                                            inputStreamW = bufferedInputStream;
                                        } catch (Exception | OutOfMemoryError unused8) {
                                            inputStreamW = bufferedInputStream;
                                        } catch (Throwable th7) {
                                            th = th7;
                                            bufferedInputStream3 = bufferedInputStream;
                                            n0.e.d(bufferedInputStream3);
                                            n0.e.c(parcelFileDescriptor);
                                            throw th;
                                        }
                                    }
                                    BitmapFactory.decodeStream(inputStreamW, null, options);
                                }
                                if (options.outWidth != -1) {
                                    if (strArr != null && strArr[0] == null) {
                                        strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                    }
                                    if (a0.c.K(i2, 1)) {
                                        options.inJustDecodeBounds = false;
                                        options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                        if (strR != null) {
                                            bitmapF = BitmapFactory.decodeFile(strR, options);
                                        } else if (parcelFileDescriptor != null) {
                                            FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                                            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_SET);
                                            bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                                        } else {
                                            if (inputStreamW.markSupported()) {
                                                inputStreamW.reset();
                                            }
                                            bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                                        }
                                    }
                                }
                                if (bitmapF == null || iArr != null) {
                                    if (i4 != 0 && bitmapF != null) {
                                        bitmapF = b.f(bitmapF, i4);
                                    }
                                    aVar = new a(bitmapF, iArr, strArr);
                                }
                            } else {
                                if (strR != null) {
                                    dVar = new d(strR);
                                } else {
                                    int i6 = Build.VERSION.SDK_INT;
                                    if (i6 < 24) {
                                        dVar = null;
                                    } else if (parcelFileDescriptor != null) {
                                        int i7 = d.f1377b;
                                        FileDescriptor fileDescriptor2 = parcelFileDescriptor.getFileDescriptor();
                                        dVar = i6 < 28 ? new d(new FileInputStream(fileDescriptor2)) : new d(fileDescriptor2);
                                    } else {
                                        dVar = new d(inputStreamW);
                                    }
                                }
                                if (dVar != null) {
                                    if (strArr != null) {
                                        int attributeInt = dVar.getAttributeInt("ImageWidth", 0);
                                        int attributeInt2 = dVar.getAttributeInt("ImageLength", 0);
                                        if (attributeInt > 0 && attributeInt2 > 0) {
                                            strArr[0] = "" + attributeInt + "x" + attributeInt2;
                                        }
                                        if (strArr.length > 1) {
                                            strArr[1] = dVar.getAttribute("Make");
                                            strArr[2] = dVar.getAttribute("Model");
                                        }
                                    }
                                    if (a0.c.K(i2, 1)) {
                                        bitmapD = d(dVar, i3, bArr);
                                        if (bitmapD != null) {
                                            aVar = new a(bitmapD, iArr, strArr);
                                        } else {
                                            int iG = g(dVar);
                                            if (inputStreamW != null) {
                                                inputStreamW.reset();
                                            }
                                            if (parcelFileDescriptor != null) {
                                                Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                                            }
                                            i4 = iG;
                                            bitmapF = bitmapD;
                                        }
                                    } else if (strArr == null || strArr[0] != null) {
                                        bitmapD = null;
                                        int iG2 = g(dVar);
                                        if (inputStreamW != null) {
                                            inputStreamW.reset();
                                        }
                                        if (parcelFileDescriptor != null) {
                                            Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                                        }
                                        i4 = iG2;
                                        bitmapF = bitmapD;
                                    } else {
                                        aVar = new a(null, iArr, strArr);
                                    }
                                } else {
                                    bitmapF = null;
                                    i4 = 0;
                                }
                                options = new BitmapFactory.Options();
                                options.inTempStorage = bArr;
                                if (!"png".equals(a0.c.s(strE))) {
                                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                                }
                                options.inJustDecodeBounds = true;
                                if (strR != null) {
                                    BitmapFactory.decodeFile(strR, options);
                                } else if (parcelFileDescriptor != null) {
                                    BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                                } else {
                                    if (!inputStreamW.markSupported()) {
                                        bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                                        bufferedInputStream.mark(131072);
                                        inputStreamW = bufferedInputStream;
                                    }
                                    BitmapFactory.decodeStream(inputStreamW, null, options);
                                }
                                if (options.outWidth != -1) {
                                    if (strArr != null) {
                                        strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                    }
                                    if (a0.c.K(i2, 1)) {
                                        options.inJustDecodeBounds = false;
                                        options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                        if (strR != null) {
                                            bitmapF = BitmapFactory.decodeFile(strR, options);
                                        } else if (parcelFileDescriptor != null) {
                                            FileDescriptor fileDescriptor3 = parcelFileDescriptor.getFileDescriptor();
                                            Os.lseek(fileDescriptor3, 0L, OsConstants.SEEK_SET);
                                            bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor3, null, options);
                                        } else {
                                            if (inputStreamW.markSupported()) {
                                                inputStreamW.reset();
                                            }
                                            bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                                        }
                                    }
                                }
                                if (bitmapF == null) {
                                }
                                if (i4 != 0) {
                                    bitmapF = b.f(bitmapF, i4);
                                }
                                aVar = new a(bitmapF, iArr, strArr);
                            }
                            n0.e.d(inputStreamW);
                            n0.e.c(parcelFileDescriptor);
                            return aVar;
                        }
                        try {
                            try {
                                if (hVar.j()) {
                                    strR = hVar.r();
                                } else {
                                    strR = null;
                                }
                                if (inputStreamW != null) {
                                }
                                zI = a0.c.I(strE);
                                if (inputStreamW != null) {
                                    boolean zG2 = hVar.g();
                                    if (j2 <= 2097152) {
                                    }
                                    bufferedInputStream2 = new BufferedInputStream(inputStreamW, 131072);
                                    bufferedInputStream2.mark(5242880);
                                    inputStreamW = bufferedInputStream2;
                                }
                                if (zI) {
                                    bitmapF = null;
                                    i4 = 0;
                                    options = new BitmapFactory.Options();
                                    options.inTempStorage = bArr;
                                    if (!"png".equals(a0.c.s(strE))) {
                                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                                    }
                                    options.inJustDecodeBounds = true;
                                    if (strR != null) {
                                        BitmapFactory.decodeFile(strR, options);
                                    } else if (parcelFileDescriptor != null) {
                                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                                    } else {
                                        if (!inputStreamW.markSupported()) {
                                            bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                                            bufferedInputStream.mark(131072);
                                            inputStreamW = bufferedInputStream;
                                        }
                                        BitmapFactory.decodeStream(inputStreamW, null, options);
                                    }
                                    if (options.outWidth != -1) {
                                        if (strArr != null) {
                                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                        }
                                        if (a0.c.K(i2, 1)) {
                                            options.inJustDecodeBounds = false;
                                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                            if (strR != null) {
                                                bitmapF = BitmapFactory.decodeFile(strR, options);
                                            } else if (parcelFileDescriptor != null) {
                                                FileDescriptor fileDescriptor4 = parcelFileDescriptor.getFileDescriptor();
                                                Os.lseek(fileDescriptor4, 0L, OsConstants.SEEK_SET);
                                                bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor4, null, options);
                                            } else {
                                                if (inputStreamW.markSupported()) {
                                                    inputStreamW.reset();
                                                }
                                                bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                                            }
                                        }
                                    }
                                    if (bitmapF == null) {
                                    }
                                    if (i4 != 0) {
                                        bitmapF = b.f(bitmapF, i4);
                                    }
                                    aVar = new a(bitmapF, iArr, strArr);
                                } else {
                                    bitmapF = null;
                                    i4 = 0;
                                    options = new BitmapFactory.Options();
                                    options.inTempStorage = bArr;
                                    if (!"png".equals(a0.c.s(strE))) {
                                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                                    }
                                    options.inJustDecodeBounds = true;
                                    if (strR != null) {
                                        BitmapFactory.decodeFile(strR, options);
                                    } else if (parcelFileDescriptor != null) {
                                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                                    } else {
                                        if (!inputStreamW.markSupported()) {
                                            bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                                            bufferedInputStream.mark(131072);
                                            inputStreamW = bufferedInputStream;
                                        }
                                        BitmapFactory.decodeStream(inputStreamW, null, options);
                                    }
                                    if (options.outWidth != -1) {
                                        if (strArr != null) {
                                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                        }
                                        if (a0.c.K(i2, 1)) {
                                            options.inJustDecodeBounds = false;
                                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                            if (strR != null) {
                                                bitmapF = BitmapFactory.decodeFile(strR, options);
                                            } else if (parcelFileDescriptor != null) {
                                                FileDescriptor fileDescriptor5 = parcelFileDescriptor.getFileDescriptor();
                                                Os.lseek(fileDescriptor5, 0L, OsConstants.SEEK_SET);
                                                bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor5, null, options);
                                            } else {
                                                if (inputStreamW.markSupported()) {
                                                    inputStreamW.reset();
                                                }
                                                bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                                            }
                                        }
                                    }
                                    if (bitmapF == null) {
                                    }
                                    if (i4 != 0) {
                                        bitmapF = b.f(bitmapF, i4);
                                    }
                                    aVar = new a(bitmapF, iArr, strArr);
                                }
                                n0.e.d(inputStreamW);
                                n0.e.c(parcelFileDescriptor);
                                return aVar;
                            } catch (Throwable th8) {
                                th = th8;
                                bufferedInputStream3 = inputStreamW;
                                n0.e.d(bufferedInputStream3);
                                n0.e.c(parcelFileDescriptor);
                                throw th;
                            }
                        } catch (Exception | OutOfMemoryError unused9) {
                        }
                        n0.e.d(inputStreamW);
                        n0.e.c(parcelFileDescriptor);
                        return null;
                    }
                    inputStreamW = h0.f.u(hVar).w();
                }
                parcelFileDescriptor = null;
                if (inputStreamW == null) {
                    strR = null;
                    if (inputStreamW != null) {
                    }
                    zI = a0.c.I(strE);
                    if (inputStreamW != null) {
                        boolean zG3 = hVar.g();
                        if (j2 <= 2097152) {
                        }
                        bufferedInputStream2 = new BufferedInputStream(inputStreamW, 131072);
                        bufferedInputStream2.mark(5242880);
                        inputStreamW = bufferedInputStream2;
                    }
                    if (zI) {
                        bitmapF = null;
                        i4 = 0;
                        options = new BitmapFactory.Options();
                        options.inTempStorage = bArr;
                        if (!"png".equals(a0.c.s(strE))) {
                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                        }
                        options.inJustDecodeBounds = true;
                        if (strR != null) {
                            BitmapFactory.decodeFile(strR, options);
                        } else if (parcelFileDescriptor != null) {
                            BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                        } else {
                            if (!inputStreamW.markSupported()) {
                                bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                                bufferedInputStream.mark(131072);
                                inputStreamW = bufferedInputStream;
                            }
                            BitmapFactory.decodeStream(inputStreamW, null, options);
                        }
                        if (options.outWidth != -1) {
                            if (strArr != null) {
                                strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                            }
                            if (a0.c.K(i2, 1)) {
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                if (strR != null) {
                                    bitmapF = BitmapFactory.decodeFile(strR, options);
                                } else if (parcelFileDescriptor != null) {
                                    FileDescriptor fileDescriptor6 = parcelFileDescriptor.getFileDescriptor();
                                    Os.lseek(fileDescriptor6, 0L, OsConstants.SEEK_SET);
                                    bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor6, null, options);
                                } else {
                                    if (inputStreamW.markSupported()) {
                                        inputStreamW.reset();
                                    }
                                    bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                                }
                            }
                        }
                        if (bitmapF == null) {
                        }
                        if (i4 != 0) {
                            bitmapF = b.f(bitmapF, i4);
                        }
                        aVar = new a(bitmapF, iArr, strArr);
                    } else {
                        bitmapF = null;
                        i4 = 0;
                        options = new BitmapFactory.Options();
                        options.inTempStorage = bArr;
                        if (!"png".equals(a0.c.s(strE))) {
                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                        }
                        options.inJustDecodeBounds = true;
                        if (strR != null) {
                            BitmapFactory.decodeFile(strR, options);
                        } else if (parcelFileDescriptor != null) {
                            BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                        } else {
                            if (!inputStreamW.markSupported()) {
                                bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                                bufferedInputStream.mark(131072);
                                inputStreamW = bufferedInputStream;
                            }
                            BitmapFactory.decodeStream(inputStreamW, null, options);
                        }
                        if (options.outWidth != -1) {
                            if (strArr != null) {
                                strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                            }
                            if (a0.c.K(i2, 1)) {
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                if (strR != null) {
                                    bitmapF = BitmapFactory.decodeFile(strR, options);
                                } else if (parcelFileDescriptor != null) {
                                    FileDescriptor fileDescriptor7 = parcelFileDescriptor.getFileDescriptor();
                                    Os.lseek(fileDescriptor7, 0L, OsConstants.SEEK_SET);
                                    bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor7, null, options);
                                } else {
                                    if (inputStreamW.markSupported()) {
                                        inputStreamW.reset();
                                    }
                                    bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                                }
                            }
                        }
                        if (bitmapF == null) {
                        }
                        if (i4 != 0) {
                            bitmapF = b.f(bitmapF, i4);
                        }
                        aVar = new a(bitmapF, iArr, strArr);
                    }
                    n0.e.d(inputStreamW);
                    n0.e.c(parcelFileDescriptor);
                    return aVar;
                }
                strR = null;
                if (inputStreamW != null) {
                }
                zI = a0.c.I(strE);
                if (inputStreamW != null) {
                    boolean zG4 = hVar.g();
                    if (j2 <= 2097152) {
                    }
                    bufferedInputStream2 = new BufferedInputStream(inputStreamW, 131072);
                    bufferedInputStream2.mark(5242880);
                    inputStreamW = bufferedInputStream2;
                }
                if (zI) {
                    bitmapF = null;
                    i4 = 0;
                    options = new BitmapFactory.Options();
                    options.inTempStorage = bArr;
                    if (!"png".equals(a0.c.s(strE))) {
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                    }
                    options.inJustDecodeBounds = true;
                    if (strR != null) {
                        BitmapFactory.decodeFile(strR, options);
                    } else if (parcelFileDescriptor != null) {
                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                    } else {
                        if (!inputStreamW.markSupported()) {
                            bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                            bufferedInputStream.mark(131072);
                            inputStreamW = bufferedInputStream;
                        }
                        BitmapFactory.decodeStream(inputStreamW, null, options);
                    }
                    if (options.outWidth != -1) {
                        if (strArr != null) {
                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                        }
                        if (a0.c.K(i2, 1)) {
                            options.inJustDecodeBounds = false;
                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                            if (strR != null) {
                                bitmapF = BitmapFactory.decodeFile(strR, options);
                            } else if (parcelFileDescriptor != null) {
                                FileDescriptor fileDescriptor8 = parcelFileDescriptor.getFileDescriptor();
                                Os.lseek(fileDescriptor8, 0L, OsConstants.SEEK_SET);
                                bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor8, null, options);
                            } else {
                                if (inputStreamW.markSupported()) {
                                    inputStreamW.reset();
                                }
                                bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                            }
                        }
                    }
                    if (bitmapF == null) {
                    }
                    if (i4 != 0) {
                        bitmapF = b.f(bitmapF, i4);
                    }
                    aVar = new a(bitmapF, iArr, strArr);
                } else {
                    bitmapF = null;
                    i4 = 0;
                    options = new BitmapFactory.Options();
                    options.inTempStorage = bArr;
                    if (!"png".equals(a0.c.s(strE))) {
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                    }
                    options.inJustDecodeBounds = true;
                    if (strR != null) {
                        BitmapFactory.decodeFile(strR, options);
                    } else if (parcelFileDescriptor != null) {
                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                    } else {
                        if (!inputStreamW.markSupported()) {
                            bufferedInputStream = new BufferedInputStream(inputStreamW, 131072);
                            bufferedInputStream.mark(131072);
                            inputStreamW = bufferedInputStream;
                        }
                        BitmapFactory.decodeStream(inputStreamW, null, options);
                    }
                    if (options.outWidth != -1) {
                        if (strArr != null) {
                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                        }
                        if (a0.c.K(i2, 1)) {
                            options.inJustDecodeBounds = false;
                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                            if (strR != null) {
                                bitmapF = BitmapFactory.decodeFile(strR, options);
                            } else if (parcelFileDescriptor != null) {
                                FileDescriptor fileDescriptor9 = parcelFileDescriptor.getFileDescriptor();
                                Os.lseek(fileDescriptor9, 0L, OsConstants.SEEK_SET);
                                bitmapF = BitmapFactory.decodeFileDescriptor(fileDescriptor9, null, options);
                            } else {
                                if (inputStreamW.markSupported()) {
                                    inputStreamW.reset();
                                }
                                bitmapF = BitmapFactory.decodeStream(inputStreamW, null, options);
                            }
                        }
                    }
                    if (bitmapF == null) {
                    }
                    if (i4 != 0) {
                        bitmapF = b.f(bitmapF, i4);
                    }
                    aVar = new a(bitmapF, iArr, strArr);
                }
                n0.e.d(inputStreamW);
                n0.e.c(parcelFileDescriptor);
                return aVar;
            } catch (Exception | OutOfMemoryError unused10) {
                inputStreamW = null;
                parcelFileDescriptor = null;
            }
            n0.e.d(inputStreamW);
            n0.e.c(parcelFileDescriptor);
            return null;
        } catch (Throwable th9) {
            th = th9;
            bufferedInputStream3 = null;
            parcelFileDescriptor = null;
        }
    }

    public static Bitmap d(d dVar, int i2, byte[] bArr) {
        byte[] thumbnail;
        int iG;
        try {
            if (!dVar.hasThumbnail() || (thumbnail = dVar.getThumbnail()) == null) {
                return null;
            }
            Bitmap bitmapC = b.c(thumbnail, i2, bArr);
            return (bitmapC == null || (iG = g(dVar)) == 0) ? bitmapC : b.f(bitmapC, iG);
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:254:0x03b5 A[PHI: r13
      0x03b5: PHI (r13v20 java.io.InputStream) = (r13v18 java.io.InputStream), (r13v27 java.io.InputStream) binds: [B:210:0x02fa, B:232:0x034a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:256:0x03b8 A[Catch: all -> 0x0346, Exception | OutOfMemoryError -> 0x03b2, TRY_LEAVE, TryCatch #20 {Exception | OutOfMemoryError -> 0x03b2, blocks: (B:241:0x0369, B:243:0x036d, B:245:0x0388, B:247:0x03a2, B:249:0x03a5, B:251:0x03a9, B:252:0x03ad, B:256:0x03b8), top: B:391:0x0369 }] */
    /* JADX WARN: Code duplicated, block: B:263:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:265:0x03ce A[Catch: Exception | OutOfMemoryError -> 0x03c8, all -> 0x041b, TryCatch #23 {Exception | OutOfMemoryError -> 0x03c8, all -> 0x041b, blocks: (B:270:0x03db, B:272:0x03df, B:274:0x03e3, B:275:0x0416, B:257:0x03be, B:259:0x03c2, B:265:0x03ce), top: B:401:0x03be }] */
    /* JADX WARN: Code duplicated, block: B:267:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:336:0x0507  */
    public static a e(h0.h hVar, long j2, int i2, int i3, int i4, byte[] bArr) {
        int[] iArr;
        String[] strArr;
        String str;
        String strSubstring;
        PackageInfo packageInfo;
        String strSubstring2;
        int[] iArr2;
        String[] strArr2;
        Bitmap bitmapD;
        l.a aVar;
        InputStream inputStreamJ;
        String strR;
        m.a aVar2;
        boolean z2;
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        Drawable drawableLoadIcon;
        x0.d.a aVarI;
        m.a aVar3;
        MediaMetadataRetriever mediaMetadataRetriever;
        MediaMetadataRetriever mediaMetadataRetriever2;
        int[] iArr3;
        String[] strArr3;
        byte[] embeddedPicture;
        ParcelFileDescriptor parcelFileDescriptorI;
        PdfRenderer pdfRenderer;
        PdfRenderer pdfRenderer2;
        int i5;
        boolean z3;
        int[] iArr4;
        String[] strArr4;
        InputStream inputStream;
        InputStream inputStreamW;
        if (i2 == 4) {
            if (a0.c.L(i3, 6)) {
                iArr = new int[]{R.string.FINFO_APK_NAME};
                strArr = new String[1];
            } else {
                iArr = null;
                strArr = null;
            }
            try {
                PackageManager packageManager2 = ZApp.e().getPackageManager();
                String strR2 = hVar.r();
                int i6 = Build.VERSION.SDK_INT;
                if (i6 >= 30 && strR2.startsWith("/data/app")) {
                    if (i6 >= 34) {
                        o0.a aVarC = o0.a.c(0);
                        ArrayList<String> arrayListB = j0.g.b(strR2, aVarC);
                        n0.e.d(aVarC);
                        strSubstring2 = arrayListB.isEmpty() ? null : arrayListB.get(0);
                    } else {
                        String[] list = new File(strR2).list();
                        if (list != null && list.length >= 1) {
                            strSubstring2 = list[0];
                        }
                    }
                    if (strSubstring2 != null) {
                        int iIndexOf = strSubstring2.indexOf(45);
                        if (iIndexOf > 0) {
                            strSubstring2 = strSubstring2.substring(0, iIndexOf);
                        }
                        strSubstring = strSubstring2;
                        str = null;
                    }
                    return null;
                }
                if (strR2.contains("/app/") || strR2.contains("/priv-app/")) {
                    String strY = a0.c.y(strR2);
                    if (strY.indexOf(45) > 0) {
                        strY = "base";
                    }
                    str = strR2 + '/' + strY + ".apk";
                } else {
                    String strY2 = a0.c.y(strR2);
                    if (i6 <= 26) {
                        str = strR2 + '/' + strY2 + ".apk";
                        if (!n0.e.i(str)) {
                            str = null;
                        }
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        int iIndexOf2 = strY2.indexOf(45);
                        strSubstring = iIndexOf2 > 0 ? strY2.substring(0, iIndexOf2) : strY2;
                    }
                }
                strSubstring = null;
                if (str != null) {
                    packageInfo = packageManager2.getPackageArchiveInfo(str, 0);
                    if (packageInfo != null) {
                        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                        applicationInfo.sourceDir = str;
                        applicationInfo.publicSourceDir = str;
                    }
                } else {
                    packageInfo = packageManager2.getPackageInfo(strSubstring, 0);
                }
                if (packageInfo != null) {
                    Bitmap bitmapD2 = z0.b.d(z0.b.a(4), i6 < 22 ? packageInfo.applicationInfo.loadIcon(packageManager2) : packageInfo.applicationInfo.loadUnbadgedIcon(packageManager2));
                    if (bitmapD2 != null) {
                        if (strArr != null) {
                            strArr[0] = packageManager2.getApplicationLabel(packageInfo.applicationInfo).toString();
                        }
                        return new a(bitmapD2, iArr, strArr);
                    }
                }
            } catch (Exception | OutOfMemoryError unused) {
            }
            return null;
        }
        if (i2 == 9) {
            return c(hVar, j2, i3, i4, bArr);
        }
        if (i2 == 20) {
            return b(i3, i4, hVar);
        }
        if (i2 == 6) {
            l.a aVar4 = null;
            if (a0.c.K(i3, 2)) {
                iArr2 = new int[]{R.string.FINFO_APK_NAME, R.string.FINFO_APK_VERSION, R.string.FINFO_APK_VERSION_CODE, R.string.FINFO_APK_SDK, R.string.FINFO_ARCHIVE_TYPE};
                strArr2 = new String[5];
            } else if (a0.c.K(i3, 4)) {
                iArr2 = new int[]{R.string.FINFO_APK_VERSION};
                strArr2 = new String[1];
            } else {
                iArr2 = null;
                strArr2 = null;
            }
            try {
                try {
                    try {
                        if (hVar.j()) {
                            strR = hVar.r();
                            inputStreamJ = null;
                        } else {
                            inputStreamJ = j(hVar, j2, iArr2 != null && iArr2.length > 1);
                            strR = null;
                        }
                        try {
                            try {
                                if (!a0.c.K(i3, 1)) {
                                    if (iArr2 != null) {
                                        if (strR == null) {
                                            if (inputStreamJ != null) {
                                                aVar = new l.a(inputStreamJ, 0);
                                            }
                                            return null;
                                        }
                                        aVar = new l.b(strR);
                                        bitmapD = null;
                                    }
                                    n0.e.d(inputStreamJ);
                                    return null;
                                }
                                if (strR == null) {
                                    bitmapD = null;
                                    if (inputStreamJ != null) {
                                        aVar = new l.a(inputStreamJ, 1);
                                        try {
                                            aVar2 = aVar.f1170d;
                                            if (aVar2 != null || aVar2.f1205a == null) {
                                                z2 = false;
                                            } else {
                                                z2 = true;
                                            }
                                            if (z2) {
                                                bitmapD = q0.a.d(aVar, i4);
                                            }
                                        } catch (Exception | OutOfMemoryError unused2) {
                                        } catch (Throwable th) {
                                            th = th;
                                            inputStreamJ = inputStreamJ;
                                            aVar4 = aVar;
                                            n0.e.d(inputStreamJ);
                                            n0.e.d(aVar4);
                                            throw th;
                                        }
                                    } else {
                                        aVar = null;
                                    }
                                } else {
                                    int i7 = Build.VERSION.SDK_INT;
                                    if (i7 >= 30 || j2 < 2147483648L) {
                                        packageManager = ZApp.e().getPackageManager();
                                        packageArchiveInfo = packageManager.getPackageArchiveInfo(strR, 1);
                                    } else {
                                        packageManager = null;
                                        packageArchiveInfo = null;
                                    }
                                    if (packageArchiveInfo != null) {
                                        ApplicationInfo applicationInfo2 = packageArchiveInfo.applicationInfo;
                                        applicationInfo2.sourceDir = strR;
                                        applicationInfo2.publicSourceDir = strR;
                                        drawableLoadIcon = applicationInfo2.loadIcon(packageManager);
                                    } else {
                                        if (i7 >= 24 && i7 < 30 && (aVarI = x0.d.i(strR)) != null && a0.c.K(aVarI.f2259f, 2)) {
                                            inputStreamJ = new FileInputStream(strR);
                                        }
                                        drawableLoadIcon = null;
                                    }
                                    if (drawableLoadIcon != null) {
                                        bitmapD = (i7 < 26 || (drawableLoadIcon instanceof BitmapDrawable)) ? Bitmap.createScaledBitmap(((BitmapDrawable) drawableLoadIcon).getBitmap(), i4, i4, true) : b.b((AdaptiveIconDrawable) drawableLoadIcon, i4);
                                        if (iArr2 != null) {
                                            try {
                                                if (iArr2[0] != R.string.FINFO_APK_VERSION) {
                                                    strArr2[0] = packageArchiveInfo.packageName;
                                                    strArr2[1] = packageArchiveInfo.versionName;
                                                    strArr2[2] = "" + packageArchiveInfo.versionCode;
                                                    if (i7 >= 24) {
                                                        strArr2[3] = "API " + packageArchiveInfo.applicationInfo.minSdkVersion + "+";
                                                        String[] strArr5 = packageArchiveInfo.splitNames;
                                                        strArr2[4] = (strArr5 == null || strArr5.length <= 0) ? null : strArr5[0];
                                                    }
                                                } else {
                                                    strArr2[0] = packageArchiveInfo.versionName;
                                                }
                                            } catch (Exception | OutOfMemoryError unused3) {
                                                aVar = null;
                                            }
                                        }
                                        n0.e.d(inputStreamJ);
                                        n0.e.d(aVar);
                                        if (bitmapD == null || iArr2 != null) {
                                            return new a(bitmapD, iArr2, strArr2);
                                        }
                                    } else {
                                        bitmapD = null;
                                    }
                                    if (inputStreamJ != null) {
                                        aVar = new l.a(inputStreamJ, 1);
                                        aVar2 = aVar.f1170d;
                                        if (aVar2 != null) {
                                            z2 = false;
                                        } else {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            bitmapD = q0.a.d(aVar, i4);
                                        }
                                    } else {
                                        aVar = null;
                                    }
                                }
                                return null;
                                if (iArr2 != null && aVar != null && (aVar3 = aVar.f1170d) != null) {
                                    if (iArr2[0] != R.string.FINFO_APK_VERSION) {
                                        strArr2[0] = aVar3.f1205a;
                                        strArr2[1] = aVar3.f1208d;
                                        strArr2[2] = "" + aVar3.f1209e;
                                        strArr2[3] = "API " + aVar3.f1211g + "+";
                                        strArr2[4] = aVar3.f1210f;
                                    } else {
                                        strArr2[0] = aVar3.f1208d;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                aVar4 = null;
                                n0.e.d(inputStreamJ);
                                n0.e.d(aVar4);
                                throw th;
                            }
                        } catch (Exception | OutOfMemoryError unused4) {
                            bitmapD = null;
                        }
                    } catch (Exception | OutOfMemoryError unused5) {
                        bitmapD = null;
                        aVar = null;
                        inputStreamJ = null;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamJ = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamJ = null;
                }
            } catch (Exception | OutOfMemoryError unused6) {
                bitmapD = null;
                aVar = null;
                inputStreamJ = null;
            }
            n0.e.d(inputStreamJ);
            n0.e.d(aVar);
            if (bitmapD == null) {
            }
            return new a(bitmapD, iArr2, strArr2);
        }
        if (i2 == 7) {
            if (hVar.j()) {
                try {
                    mediaMetadataRetriever2 = new MediaMetadataRetriever();
                    try {
                        mediaMetadataRetriever2.setDataSource(hVar.r());
                        Bitmap bitmapC = (!a0.c.K(i3, 1) || (embeddedPicture = mediaMetadataRetriever2.getEmbeddedPicture()) == null) ? null : b.c(embeddedPicture, i4, bArr);
                        if (a0.c.K(i3, 2)) {
                            iArr3 = new int[]{R.string.FINFO_MEDIA_DURATION, R.string.FINFO_MEDIA_TITLE, R.string.FINFO_MEDIA_ARTIST, R.string.FINFO_MEDIA_GENRE, R.string.FINFO_MEDIA_BITRATE};
                            strArr3 = new String[5];
                        } else if (a0.c.K(i3, 4)) {
                            iArr3 = new int[]{R.string.FINFO_MEDIA_DURATION};
                            strArr3 = new String[1];
                        } else {
                            iArr3 = null;
                            strArr3 = null;
                        }
                        if (iArr3 != null) {
                            strArr3[0] = a(mediaMetadataRetriever2.extractMetadata(9));
                            if (iArr3.length > 1) {
                                strArr3[1] = mediaMetadataRetriever2.extractMetadata(7);
                                strArr3[2] = mediaMetadataRetriever2.extractMetadata(2);
                                strArr3[3] = mediaMetadataRetriever2.extractMetadata(6);
                                strArr3[4] = mediaMetadataRetriever2.extractMetadata(20);
                            }
                        }
                        if (bitmapC != null || iArr3 != null) {
                            a aVar5 = new a(bitmapC, iArr3, strArr3);
                            try {
                                mediaMetadataRetriever2.release();
                            } catch (IOException unused7) {
                            }
                            return aVar5;
                        }
                    } catch (Exception unused8) {
                        if (mediaMetadataRetriever2 != null) {
                        }
                        return null;
                    } catch (Throwable th5) {
                        th = th5;
                        mediaMetadataRetriever = mediaMetadataRetriever2;
                        if (mediaMetadataRetriever != null) {
                            try {
                                mediaMetadataRetriever.release();
                            } catch (IOException unused9) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused10) {
                    mediaMetadataRetriever2 = null;
                } catch (Throwable th6) {
                    th = th6;
                    mediaMetadataRetriever = null;
                }
                try {
                    mediaMetadataRetriever2.release();
                } catch (IOException unused11) {
                }
            }
            return null;
        }
        switch (i2) {
            case 13:
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        parcelFileDescriptorI = i(hVar, j2);
                        if (parcelFileDescriptorI != null) {
                            try {
                                try {
                                    if (hVar.o()) {
                                        try {
                                            byte[] bArr2 = new byte[8];
                                            FileDescriptor fileDescriptor = parcelFileDescriptorI.getFileDescriptor();
                                            bArr2[0] = 0;
                                            if (Os.read(fileDescriptor, bArr2, 0, 8) >= 4 && bArr2[0] == 37 && bArr2[1] == 80 && bArr2[2] == 68 && bArr2[3] == 70 && Os.lseek(fileDescriptor, -8, OsConstants.SEEK_END) > 0 && Os.read(fileDescriptor, bArr2, 0, 8) >= 4) {
                                                while (true) {
                                                    if (i5 < 5) {
                                                        if (bArr2[i5] == 69) {
                                                            int i8 = i5 + 1;
                                                            i5 = (bArr2[i8] == 79 && bArr2[i5 + 2] == 70) ? i8 : 0;
                                                        }
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                }
                                                if (z3) {
                                                    Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_SET);
                                                    break;
                                                }
                                            }
                                        } catch (Exception unused12) {
                                        }
                                    }
                                    pdfRenderer = new PdfRenderer(parcelFileDescriptorI);
                                    try {
                                        Bitmap bitmapF = a0.c.K(i3, 1) ? f(pdfRenderer, i4) : null;
                                        if (a0.c.L(i3, 6)) {
                                            a aVar6 = new a(bitmapF, new int[]{R.string.FINFO_BOOK_PAGES}, new String[]{String.valueOf(pdfRenderer.getPageCount())});
                                            n0.e.e(pdfRenderer);
                                            n0.e.c(parcelFileDescriptorI);
                                            return aVar6;
                                        }
                                    } catch (Exception unused13) {
                                    } catch (Throwable th7) {
                                        th = th7;
                                        pdfRenderer2 = pdfRenderer;
                                        n0.e.e(pdfRenderer2);
                                        n0.e.c(parcelFileDescriptorI);
                                        throw th;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    pdfRenderer2 = null;
                                    n0.e.e(pdfRenderer2);
                                    n0.e.c(parcelFileDescriptorI);
                                    throw th;
                                }
                            } catch (Exception unused14) {
                                pdfRenderer = null;
                            }
                            n0.e.e(pdfRenderer);
                        }
                    } catch (Exception unused15) {
                        parcelFileDescriptorI = null;
                    } catch (Throwable th9) {
                        th = th9;
                        parcelFileDescriptorI = null;
                    }
                    n0.e.c(parcelFileDescriptorI);
                }
                return null;
            case 14:
                return h(i3, i4, hVar);
            case 15:
                if (a0.c.K(i3, 2)) {
                    iArr4 = new int[]{R.string.FINFO_BOOK_AUTOR, R.string.FINFO_BOOK_TITLE, R.string.FINFO_MEDIA_GENRE};
                    strArr4 = new String[3];
                } else if (a0.c.K(i3, 4)) {
                    iArr4 = new int[]{R.string.FINFO_BOOK_TITLE};
                    strArr4 = new String[1];
                } else {
                    iArr4 = null;
                    strArr4 = null;
                }
                String strE = hVar.e();
                try {
                    try {
                        if (hVar.g()) {
                            NArc nArcC = f0.a.m().c();
                            if (nArcC != null) {
                                inputStreamW = nArcC.h(a0.c.i0(-1, hVar.f1109d), hVar.f1110e);
                            }
                            return null;
                        }
                        inputStreamW = hVar.m() ? h0.f.u(hVar).w() : h0.f.u(hVar).w();
                        if (inputStreamW == null) {
                            hVar.e();
                        } else {
                            b.c cVar = new b.c(1);
                            cVar.b(inputStreamW, a0.c.s(strE), true);
                            byte[] bArr3 = (byte[]) cVar.f243e;
                            Bitmap bitmapC2 = bArr3 != null ? b.c(bArr3, i4, bArr) : null;
                            if (iArr4 != null) {
                                if (iArr4.length > 1) {
                                    strArr4[0] = cVar.a(0);
                                    strArr4[1] = cVar.a(2);
                                    strArr4[2] = cVar.a(3);
                                } else {
                                    String strA = cVar.a(1);
                                    String strA2 = cVar.a(2);
                                    if (strA2 != null || strA != null) {
                                        StringBuilder sb = new StringBuilder();
                                        if (strA != null) {
                                            sb.append(strA);
                                            if (strA2 != null) {
                                                sb.append(" - ");
                                                sb.append(strA2);
                                            }
                                        } else {
                                            sb.append(strA2);
                                        }
                                        strArr4[0] = sb.toString();
                                    }
                                }
                            }
                            if (bitmapC2 != null || iArr4 != null) {
                                a aVar7 = new a(bitmapC2, iArr4, strArr4);
                                n0.e.d(inputStreamW);
                                return aVar7;
                            }
                        }
                    } catch (Exception | OutOfMemoryError unused16) {
                    } catch (Throwable th10) {
                        th = th10;
                        inputStream = inputStreamW;
                        n0.e.d(inputStream);
                        throw th;
                    }
                } catch (Exception | OutOfMemoryError unused17) {
                    inputStreamW = null;
                } catch (Throwable th11) {
                    th = th11;
                    inputStream = null;
                }
                n0.e.d(inputStreamW);
                return null;
            default:
                return null;
        }
    }

    public static Bitmap f(PdfRenderer pdfRenderer, int i2) {
        PdfRenderer.Page pageOpenPage;
        try {
            if (pdfRenderer.getPageCount() > 0 && (pageOpenPage = pdfRenderer.openPage(0)) != null && pageOpenPage.getHeight() != 0 && pageOpenPage.getWidth() != 0) {
                float f2 = i2;
                float fMax = Math.max(f2 / pageOpenPage.getHeight(), f2 / pageOpenPage.getWidth());
                Matrix matrix = new Matrix();
                matrix.setScale(fMax, fMax);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (pageOpenPage.getWidth() * fMax), (int) (pageOpenPage.getHeight() * fMax), Bitmap.Config.ARGB_8888);
                pageOpenPage.render(bitmapCreateBitmap, null, matrix, 1);
                pageOpenPage.close();
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), bitmapCreateBitmap.getConfig());
                bitmapCreateBitmap2.eraseColor(-1);
                new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
                bitmapCreateBitmap.recycle();
                return bitmapCreateBitmap2;
            }
        } catch (Exception | OutOfMemoryError unused) {
        }
        return null;
    }

    public static int g(d dVar) {
        int attributeInt = dVar.getAttributeInt("Orientation", 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt != 6) {
            return attributeInt != 8 ? 0 : 270;
        }
        return 90;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006b  */
    /* JADX WARN: Code duplicated, block: B:33:0x007a A[Catch: Exception -> 0x00c7, all -> 0x00cd, TryCatch #5 {Exception -> 0x00c7, blocks: (B:31:0x006d, B:33:0x007a, B:36:0x008a, B:37:0x00a0, B:39:0x00b3), top: B:73:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b3 A[Catch: Exception -> 0x00c7, all -> 0x00cd, TRY_LEAVE, TryCatch #5 {Exception -> 0x00c7, blocks: (B:31:0x006d, B:33:0x007a, B:36:0x008a, B:37:0x00a0, B:39:0x00b3), top: B:73:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0142  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x00b3, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [int] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v16, types: [int[]] */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    public static a h(int i2, int i3, h0.h hVar) throws Throwable {
        MediaMetadataRetriever mediaMetadataRetriever;
        Bitmap bitmapC;
        String[] strArr;
        String strExtractMetadata;
        String strExtractMetadata2;
        long jJ0;
        if (!hVar.j()) {
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT < 27) {
                if (a0.c.K(i2, 1)) {
                    bitmapC = ThumbnailUtils.createVideoThumbnail(hVar.r(), 3);
                    i2 = 0;
                    strArr = null;
                }
                return null;
            }
            try {
                mediaMetadataRetriever = new MediaMetadataRetriever();
                try {
                    try {
                        mediaMetadataRetriever.setDataSource(hVar.r());
                        if (a0.c.K(i2, 1)) {
                            byte[] embeddedPicture = mediaMetadataRetriever.getEmbeddedPicture();
                            bitmapC = embeddedPicture != null ? b.c(embeddedPicture, i3, null) : mediaMetadataRetriever.getScaledFrameAtTime(-1L, 0, i3, i3);
                        } else {
                            bitmapC = null;
                        }
                        try {
                            try {
                                if (a0.c.K(i2, 2)) {
                                    strArr = new String[3];
                                    i2 = new int[]{R.string.FINFO_MEDIA_DURATION, R.string.FINFO_IMAGE_SIZE, R.string.FINFO_MEDIA_BITRATE};
                                } else {
                                    if (a0.c.K(i2, 4)) {
                                        strArr = new String[1];
                                        i2 = new int[]{R.string.FINFO_MEDIA_DURATION};
                                    } else {
                                        i2 = 0;
                                        strArr = null;
                                    }
                                    if (i2 != 0) {
                                        try {
                                            strArr[0] = a(mediaMetadataRetriever.extractMetadata(9));
                                            if (i2.length > 1) {
                                                strExtractMetadata = mediaMetadataRetriever.extractMetadata(19);
                                                strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
                                                if (strExtractMetadata != null && strExtractMetadata2 != null) {
                                                    strArr[1] = strExtractMetadata2 + "x" + strExtractMetadata;
                                                }
                                                jJ0 = a0.c.j0(0L, mediaMetadataRetriever.extractMetadata(20)) / 1024;
                                                if (jJ0 > 0) {
                                                    strArr[2] = jJ0 + " kb/s";
                                                }
                                            }
                                        } catch (Exception unused) {
                                            i2 = i2;
                                            if (mediaMetadataRetriever != null) {
                                            }
                                            if (bitmapC != null) {
                                                bitmapC = null;
                                            } else {
                                                bitmapC = null;
                                            }
                                            if (bitmapC == null) {
                                            }
                                            return new a(bitmapC, i2, strArr);
                                        }
                                    }
                                    mediaMetadataRetriever.release();
                                }
                                if (i2 != 0) {
                                    strArr[0] = a(mediaMetadataRetriever.extractMetadata(9));
                                    if (i2.length > 1) {
                                        strExtractMetadata = mediaMetadataRetriever.extractMetadata(19);
                                        strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
                                        if (strExtractMetadata != null) {
                                            strArr[1] = strExtractMetadata2 + "x" + strExtractMetadata;
                                        }
                                        jJ0 = a0.c.j0(0L, mediaMetadataRetriever.extractMetadata(20)) / 1024;
                                        if (jJ0 > 0) {
                                            strArr[2] = jJ0 + " kb/s";
                                        }
                                    }
                                }
                            } catch (Exception unused2) {
                                strArr = null;
                                i2 = i2;
                            }
                        } catch (Exception unused3) {
                            i2 = 0;
                            strArr = null;
                        }
                    } catch (Exception unused4) {
                        i2 = 0;
                        bitmapC = null;
                        strArr = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (mediaMetadataRetriever != null) {
                        mediaMetadataRetriever.release();
                    }
                    throw th;
                }
            } catch (Exception unused5) {
                i2 = 0;
                bitmapC = null;
                strArr = null;
                mediaMetadataRetriever = null;
            } catch (Throwable th2) {
                th = th2;
                mediaMetadataRetriever = null;
            }
            mediaMetadataRetriever.release();
            if (bitmapC != null || bitmapC.getWidth() == 0 || bitmapC.getHeight() == 0) {
                bitmapC = null;
            } else {
                Canvas canvas = new Canvas(bitmapC);
                int iMin = Math.min(bitmapC.getWidth(), bitmapC.getHeight()) / 4;
                canvas.drawBitmap(z0.b.e(ZApp.e(), 31), (Rect) null, new Rect((bitmapC.getWidth() / 2) - iMin, (bitmapC.getHeight() / 2) - iMin, (bitmapC.getWidth() / 2) + iMin, (bitmapC.getHeight() / 2) + iMin), (Paint) null);
            }
            if (bitmapC == null || i2 != 0) {
                return new a(bitmapC, i2, strArr);
            }
        } catch (Exception unused6) {
        }
        return null;
    }

    public static ParcelFileDescriptor i(h0.h hVar, long j2) {
        NArc nArcC;
        try {
            if (hVar.o()) {
                return h0.f.u(hVar).v(268435456);
            }
            if (Build.VERSION.SDK_INT < 26 || !hVar.g() || j2 == 0 || j2 > 524288 || (nArcC = f0.a.m().c()) == null) {
                return null;
            }
            String str = hVar.f1109d;
            return str != null ? nArcC.d(Integer.parseInt(str), null, 524288) : nArcC.d(-1, hVar.f1110e, 524288);
        } catch (Exception unused) {
        }
        return null;
    }

    public static InputStream j(h0.h hVar, long j2, boolean z2) {
        try {
            if (hVar.o()) {
                return h0.f.u(hVar).w();
            }
            if (Build.VERSION.SDK_INT >= 26 && hVar.g() && j2 != 0 && j2 <= 31457280) {
                NArc nArcL = z2 ? NArc.l(hVar.f1108c) : f0.a.m().c();
                if (nArcL == null) {
                    return null;
                }
                e0.f fVarH = nArcL.h(a0.c.i0(-1, hVar.f1109d), hVar.f1110e);
                if (fVarH != null && z2) {
                    fVarH.f683f = true;
                }
                return fVarH;
            }
            return null;
        } catch (Exception unused) {
        }
    }
}
