package defpackage;

import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.utils.AudioFilterUtils;
import kotlin.Pair;

public abstract class zm implements qu4 {
    public final String a = "MVBaseHandler";

    public static final boolean h(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.q(audioItem.size);
    }

    public static final boolean i(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.n(audioItem.duration);
    }

    public static final boolean j(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.p(audioItem.parentPath);
    }

    public static final boolean k(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.o(audioItem.data);
    }

    public final synchronized void g(AudioItem audioItem) {
        y45.j(audioItem, "item");
        for (Pair pair : y71.n(new Pair(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(zm.h((AudioItem) obj));
            }
        }, "filter_size"), new Pair(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(zm.i((AudioItem) obj));
            }
        }, "filter_duration"), new Pair(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(zm.j((AudioItem) obj));
            }
        }, "filter_buckets"), new Pair(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(zm.k((AudioItem) obj));
            }
        }, "filter_manually"))) {
            e74 e74Var = (e74) pair.component1();
            String str = (String) pair.component2();
            if (((Boolean) e74Var.invoke(audioItem)).booleanValue()) {
                audioItem.addFilteredType(str);
            }
        }
    }
}
