package defpackage;

import android.text.TextUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

public abstract class ls1 {
    public static boolean a = true;

    public static synchronized void a(List list) {
        try {
            if (a) {
                if (list == null) {
                    return;
                }
                try {
                    ArrayList arrayList = new ArrayList(list);
                    arrayList.removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return Objects.isNull((MediaItem) obj);
                        }
                    });
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = ((MediaItem) it.next()).data;
                        if (!TextUtils.isEmpty(str) && str.contains("visha_hls_")) {
                            File file = new File(str);
                            if (!str.toLowerCase().endsWith(".ts") && (!file.exists() || file.length() >= 20480)) {
                                if (!file.exists()) {
                                }
                            }
                            it.remove();
                        }
                    }
                    list.clear();
                    list.addAll(arrayList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
