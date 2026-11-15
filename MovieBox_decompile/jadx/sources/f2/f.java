package f2;

import androidx.media3.exoplayer.source.f0;
import com.google.common.collect.ImmutableList;
import java.util.List;

public final class f implements e {
    @Override
    public f0 a(List list, List list2) {
        return new d(list, list2);
    }

    @Override
    public f0 b() {
        return new d(ImmutableList.of(), ImmutableList.of());
    }
}
