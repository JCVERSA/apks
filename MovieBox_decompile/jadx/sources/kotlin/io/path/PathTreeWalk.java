package kotlin.io.path;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0005J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0012R\u0014\u0010\u001b\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0012¨\u0006\u001c"}, d2 = {"Lkotlin/io/path/PathTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/nio/file/Path;", "", "g", "()Ljava/util/Iterator;", "f", "iterator", "a", "Ljava/nio/file/Path;", "start", "", "Lkotlin/io/path/PathWalkOption;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "[Lkotlin/io/path/PathWalkOption;", "options", "", "h", "()Z", "followLinks", "Ljava/nio/file/LinkOption;", "j", "()[Ljava/nio/file/LinkOption;", "linkOptions", "i", "includeDirectories", CampaignEx.JSON_KEY_AD_K, "isBFS", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PathTreeWalk implements Sequence<Path> {

    private final Path start;

    private final PathWalkOption[] options;

    private final Iterator f() {
        return SequencesKt.a(new PathTreeWalk$bfsIterator$1(this, null));
    }

    private final Iterator g() {
        return SequencesKt.a(new PathTreeWalk$dfsIterator$1(this, null));
    }

    public final boolean h() {
        return ArraysKt.L(this.options, PathWalkOption.FOLLOW_LINKS);
    }

    public final boolean i() {
        return ArraysKt.L(this.options, PathWalkOption.INCLUDE_DIRECTORIES);
    }

    public final LinkOption[] j() {
        return LinkFollowing.f64285a.a(h());
    }

    private final boolean k() {
        return ArraysKt.L(this.options, PathWalkOption.BREADTH_FIRST);
    }

    @Override
    public Iterator getF64466a() {
        return k() ? f() : g();
    }
}
