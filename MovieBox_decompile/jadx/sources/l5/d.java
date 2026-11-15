package l5;

import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class d {

    public static final a f65637a = new a(null);

    private static final Pattern f65638b = Pattern.compile("\\{(\\d+)\\}\\{(\\d+)\\}(.*)");

    private static final Pattern f65639c = Pattern.compile("(\\d+):(\\d+):(\\d+)[:\\.](\\d+)");

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final int a(String str) {
        Matcher matcher = f65639c.matcher(str);
        if (!matcher.matches()) {
            return 0;
        }
        String strGroup = matcher.group(1);
        int i10 = strGroup != null ? Integer.parseInt(strGroup) : 0;
        String strGroup2 = matcher.group(2);
        int i11 = strGroup2 != null ? Integer.parseInt(strGroup2) : 0;
        String strGroup3 = matcher.group(3);
        int i12 = strGroup3 != null ? Integer.parseInt(strGroup3) : 0;
        String strGroup4 = matcher.group(4);
        return ((strGroup4 != null ? Integer.parseInt(strGroup4) : 0) * 10) + (i12 * 1000) + (i11 * 60000) + (i10 * TimeConstants.HOUR);
    }

    private final void c(BufferedReader bufferedReader, String str, m5.d dVar) {
        m5.b bVar = new m5.b();
        while (str != null && str.length() != 0) {
            int length = str.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.j(str.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            Matcher matcher = f65638b.matcher(str.subSequence(i10, length + 1).toString());
            try {
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    long j10 = 23976;
                    long j11 = (((long) (strGroup != null ? Integer.parseInt(strGroup) : 0)) * 1000000) / j10;
                    long j12 = (((long) (strGroup2 != null ? Integer.parseInt(strGroup2) : 0)) * 1000000) / j10;
                    m5.c cVar = new m5.c("", "");
                    cVar.f66266a = (int) j11;
                    bVar.f66263b = cVar;
                    m5.c cVar2 = new m5.c("", "");
                    cVar2.f66266a = (int) j12;
                    bVar.f66264c = cVar2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                if (matcher.matches()) {
                    bVar.f66265d = matcher.group(3);
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            int i11 = bVar.f66263b.f66266a;
            while (dVar.f66275i.containsKey(Integer.valueOf(i11))) {
                i11++;
            }
            TreeMap treeMap = dVar.f66275i;
            Intrinsics.g(treeMap, "tto.captions");
            treeMap.put(Integer.valueOf(i11), bVar);
            try {
                str = bufferedReader.readLine();
            } catch (Throwable unused) {
                str = "";
            }
            bVar = new m5.b();
        }
        dVar.f66279m = true;
    }

    private final void d(BufferedReader bufferedReader, String str, m5.d dVar) throws IOException {
        m5.b bVar = new m5.b();
        while (str != null && !StringsKt.W(str, "[COLF]", false, 2, null)) {
            str = bufferedReader.readLine();
        }
        while (str != null && str.length() != 0) {
            String line = bufferedReader.readLine();
            if (line != null) {
                int length = line.length() - 1;
                int i10 = 0;
                boolean z10 = false;
                while (i10 <= length) {
                    boolean z11 = Intrinsics.j(line.charAt(!z10 ? i10 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z11) {
                        i10++;
                    } else {
                        z10 = true;
                    }
                }
                str = line.subSequence(i10, length + 1).toString();
            } else {
                str = null;
            }
            if (str != null) {
                try {
                    List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
                    if (listS0 != null) {
                        String str2 = (String) listS0.get(0);
                        String str3 = (String) listS0.get(1);
                        int iA = a(str2);
                        int iA2 = a(str3);
                        m5.c cVar = new m5.c("", "");
                        cVar.f66266a = iA;
                        bVar.f66263b = cVar;
                        m5.c cVar2 = new m5.c("", "");
                        cVar2.f66266a = iA2;
                        bVar.f66264c = cVar2;
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            try {
                String line2 = bufferedReader.readLine();
                if (line2 != null) {
                    int length2 = line2.length() - 1;
                    int i11 = 0;
                    boolean z12 = false;
                    while (i11 <= length2) {
                        boolean z13 = Intrinsics.j(line2.charAt(!z12 ? i11 : length2), 32) <= 0;
                        if (z12) {
                            if (!z13) {
                                break;
                            } else {
                                length2--;
                            }
                        } else if (z13) {
                            i11++;
                        } else {
                            z12 = true;
                        }
                    }
                    str = line2.subSequence(i11, length2 + 1).toString();
                } else {
                    str = null;
                }
                bVar.f66265d = str;
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                bufferedReader.readLine();
            } catch (Throwable unused) {
            }
            int i12 = bVar.f66263b.f66266a;
            while (dVar.f66275i.containsKey(Integer.valueOf(i12))) {
                i12++;
            }
            TreeMap treeMap = dVar.f66275i;
            Intrinsics.g(treeMap, "tto.captions");
            treeMap.put(Integer.valueOf(i12), bVar);
            bVar = new m5.b();
        }
        dVar.f66279m = true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0086 A[DONT_GENERATE] */
    public m5.d b(String str, String unicode, InputStream inputStream) throws IOException {
        String string;
        Intrinsics.h(unicode, "unicode");
        m5.d dVar = new m5.d();
        BufferedReader bufferedReader = new BufferedReader(unicode.length() > 0 ? new InputStreamReader(inputStream, unicode) : new InputStreamReader(inputStream));
        dVar.f66271e = str;
        String line = bufferedReader.readLine();
        if (line != null) {
            int length = line.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.j(line.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            string = line.subSequence(i10, length + 1).toString();
        } else {
            string = null;
        }
        if (string != null) {
            try {
                if (StringsKt.W(string, "{", false, 2, null)) {
                    c(bufferedReader, string, dVar);
                } else if (string != null && StringsKt.W(string, "[INFORMATION]", false, 2, null)) {
                    d(bufferedReader, string, dVar);
                }
                if (inputStream != null) {
                }
            } catch (Throwable th2) {
                try {
                    th2.printStackTrace();
                } finally {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            }
        } else {
            if (string != null) {
                d(bufferedReader, string, dVar);
            }
            if (inputStream != null) {
            }
        }
        return dVar;
    }
}
