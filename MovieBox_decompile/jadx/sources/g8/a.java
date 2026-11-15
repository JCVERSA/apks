package g8;

import android.util.Log;

public class a implements c {

    private boolean f60717a;

    private int f60718b;

    public a() {
        this(false, 4000);
    }

    static int b(String str, int i10, int i11) {
        if (i11 == str.length() || str.charAt(i11) == '\n') {
            return i11;
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            if (str.charAt(i12) == '\n') {
                return i12;
            }
        }
        return i11;
    }

    @Override
    public void a(int i10, String str, String str2) {
        int length = str2.length();
        int i11 = 0;
        while (i11 < length) {
            if (str2.charAt(i11) == '\n') {
                i11++;
            } else {
                int iMin = Math.min(this.f60718b + i11, length);
                if (this.f60717a) {
                    int iIndexOf = str2.indexOf(10, i11);
                    if (iIndexOf != -1) {
                        iMin = iIndexOf;
                    }
                } else {
                    iMin = b(str2, i11, iMin);
                }
                c(i10, str, str2.substring(i11, iMin));
                i11 = iMin;
            }
        }
    }

    void c(int i10, String str, String str2) {
        Log.println(i10, str, str2);
    }

    public a(boolean z10, int i10) {
        this.f60717a = z10;
        this.f60718b = i10;
    }
}
