package defpackage;

import com.transsion.dbdata.beans.media.AudioItem;
import java.util.function.Function;

public final class ex5 implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((AudioItem) obj).getDisplayName();
    }
}
