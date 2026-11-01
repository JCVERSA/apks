package o0;

import java.io.DataInputStream;

public final class f extends a {

    public static boolean f1308k;

    public static byte f1309l;

    public f() {
        try {
            e(new ProcessBuilder(new String[0]).command("su").start());
            if (f1308k) {
                return;
            }
            String strO = o();
            if (strO == null || strO.isEmpty() || this.f1294h != 0) {
                this.f1290d = null;
                this.f1291e = null;
                this.f1292f = null;
                this.f1296j = 1;
            } else {
                f1308k = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final int d() {
        return 1;
    }

    public final String o() {
        int i2;
        this.f1295i = false;
        this.f1294h = -1;
        try {
            StringBuilder sb = new StringBuilder();
            this.f1291e.write("id ; echo -e \"\\n#@#[$?]#@#\\n\" \r\n".getBytes("UTF-8"));
            this.f1291e.flush();
            int i3 = 60000;
            boolean z2 = false;
            while (!this.f1295i) {
                j(10L);
                if (this.f1292f.available() >= 6) {
                    DataInputStream dataInputStream = this.f1292f;
                    byte[] bArr = new byte[1024];
                    int i4 = 0;
                    while (dataInputStream.available() > 0 && (i2 = dataInputStream.read()) != -1) {
                        if (i2 != 13) {
                            bArr[i4] = (byte) i2;
                            i4++;
                        }
                    }
                    String str = i4 == 0 ? null : new String(bArr, 0, i4, "UTF-8");
                    if (str != null) {
                        sb.append(str);
                        if (!z2 && sb.indexOf("uid") != -1) {
                            z2 = true;
                        }
                        int iIndexOf = sb.indexOf("#@#[");
                        int iIndexOf2 = sb.indexOf("]#@#");
                        if (iIndexOf != -1 && iIndexOf2 != -1) {
                            this.f1295i = true;
                            try {
                                this.f1294h = Integer.parseInt(sb.substring(iIndexOf + 4, iIndexOf2));
                            } catch (Exception unused) {
                                this.f1294h = -1;
                            }
                        }
                    }
                }
                if (!z2 && (i3 = i3 - 1) <= 0) {
                    break;
                }
                if (h()) {
                    this.f1295i = true;
                    return null;
                }
            }
            if (z2) {
                return sb.toString();
            }
            return null;
        } catch (Exception unused2) {
            this.f1295i = true;
            return null;
        }
    }
}
