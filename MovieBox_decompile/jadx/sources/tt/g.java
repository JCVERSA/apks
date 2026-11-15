package tt;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class g extends e {

    String f72828d;

    public g(String str, String str2) {
        super(str, str2.getBytes().length, null);
        this.f72828d = str2;
    }

    @Override
    protected InputStream e() {
        return new ByteArrayInputStream(this.f72828d.getBytes());
    }

    public String toString() {
        return this.f72828d;
    }
}
