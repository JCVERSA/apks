package androidx.work;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class OverwritingInputMerger extends InputMerger {
    @Override
    @NonNull
    public Data merge(@NonNull List<Data> list) {
        Data.Builder builder = new Data.Builder();
        HashMap map = new HashMap();
        Iterator<Data> it = list.iterator();
        while (it.hasNext()) {
            map.putAll(it.next().getKeyValueMap());
        }
        builder.putAll(map);
        return builder.build();
    }
}
