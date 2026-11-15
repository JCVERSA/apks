package defpackage;

import android.content.Context;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import org.acra.config.CoreConfiguration;

public final class yz1 implements cl {
    @Override
    public List a(Context context, CoreConfiguration coreConfiguration) {
        Uri uri;
        y45.j(context, "context");
        y45.j(coreConfiguration, "configuration");
        List<String> attachmentUris = coreConfiguration.getAttachmentUris();
        ArrayList arrayList = new ArrayList();
        for (String str : attachmentUris) {
            try {
                uri = Uri.parse(str);
            } catch (Exception e) {
                c.d.e(c.c, "Failed to parse Uri " + str, e);
                uri = null;
            }
            if (uri != null) {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }
}
