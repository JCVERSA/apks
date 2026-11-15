package defpackage;

import android.widget.Toast;
import com.transsion.cloud_drive.base.api.model.FileVideoTemplate;
import java.util.List;

public final class srb {
    public static final srb a = new srb();

    public final FileVideoTemplate a(List list) {
        y45.j(list, "templates");
        if (list.isEmpty()) {
            return null;
        }
        return (FileVideoTemplate) list.get(0);
    }

    public final void b(String str) {
        y45.j(str, "text");
        if (c07.b(se.a())) {
            Toast.makeText(se.a(), str, 0).show();
        }
    }
}
