package w1;

import java.io.IOException;

public abstract class g {
    public static void a(androidx.media3.datasource.a aVar) {
        if (aVar != null) {
            try {
                aVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
