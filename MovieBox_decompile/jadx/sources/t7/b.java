package t7;

public class b implements d, c {
    @Override
    public CharSequence a(long j10, int i10, String str, String str2) {
        return Long.toString(j10) + '|' + s7.c.b(i10) + '|' + str + '|' + str2;
    }

    @Override
    public CharSequence b(int i10, String str, String str2) {
        return a(System.currentTimeMillis(), i10, str, str2);
    }
}
