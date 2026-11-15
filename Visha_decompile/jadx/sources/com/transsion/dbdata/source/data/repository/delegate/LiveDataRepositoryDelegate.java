package com.transsion.dbdata.source.data.repository.delegate;

import androidx.p004lifecycle.LiveData;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.source.data.repository.LiveDataProviderRepository;
import defpackage.qe6;
import defpackage.rl8;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0012J\u001d\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00062\u0006\u0010\u0005\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001f\u0010 J!\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u001d\u001a\u00020!¢\u0006\u0004\b\"\u0010#J!\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u001d\u001a\u00020$¢\u0006\u0004\b%\u0010&J\u0019\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u00070\u0006¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\u00070\u0006¢\u0006\u0004\b+\u0010)¨\u0006,"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;", "", MethodDecl.initName, "()V", "Lrl8$a;", "action", "Landroidx/lifecycle/LiveData;", "", "Lcom/transsion/dbdata/database/ConvertAudio;", "observeConvertAudio", "(Lrl8$a;)Landroidx/lifecycle/LiveData;", "Lrl8$j;", "Lcom/transsion/dbdata/database/ConvertingVideo;", "observeVideoConverting", "(Lrl8$j;)Landroidx/lifecycle/LiveData;", "Lrl8$i;", "Lcom/transsion/dbdata/database/PlayListFolderItem;", "observePlayListFolderSet", "(Lrl8$i;)Landroidx/lifecycle/LiveData;", "Lcom/transsion/dbdata/database/PlayListItem;", "observePlayListFolderSetNonCount", "Lrl8$h;", "observePlayListFolder", "(Lrl8$h;)Landroidx/lifecycle/LiveData;", "Lrl8$e;", "Lcom/transsion/dbdata/database/MediaPlayCount;", "observePlayHistory", "(Lrl8$e;)Landroidx/lifecycle/LiveData;", "Lrl8$f;", "input", "Lcom/transsion/dbdata/database/PlayListMediaItem;", "observePlayListElements", "(Lrl8$f;)Landroidx/lifecycle/LiveData;", "Lrl8$g;", "observePlayListElementsById", "(Lrl8$g;)Landroidx/lifecycle/LiveData;", "Lrl8$c;", "observeFavoritePlayListElements", "(Lrl8$c;)Landroidx/lifecycle/LiveData;", "Lcom/transsion/dbdata/beans/SubtitleHistory;", "observeDownloadSubtitle", "()Landroidx/lifecycle/LiveData;", "Lqe6;", "observeAllMissingData", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LiveDataRepositoryDelegate {
    public static final LiveDataRepositoryDelegate INSTANCE = new LiveDataRepositoryDelegate();

    private LiveDataRepositoryDelegate() {
    }

    public final LiveData<List<qe6>> observeAllMissingData() {
        return LiveDataProviderRepository.INSTANCE.observeAllMissingData();
    }

    public final LiveData<List<ConvertAudio>> observeConvertAudio(rl8.a action) {
        y45.j(action, "action");
        return LiveDataProviderRepository.INSTANCE.observeConvertAudio(action.b());
    }

    public final LiveData<List<SubtitleHistory>> observeDownloadSubtitle() {
        return LiveDataProviderRepository.INSTANCE.observeDownloadSubtitle();
    }

    public final LiveData<List<PlayListMediaItem>> observeFavoritePlayListElements(rl8.c input) {
        y45.j(input, "input");
        return LiveDataProviderRepository.INSTANCE.observeFavoritePlayListElements(input.b(), input.c());
    }

    public final LiveData<List<MediaPlayCount>> observePlayHistory(rl8.e action) {
        y45.j(action, "action");
        return LiveDataProviderRepository.INSTANCE.observePlayHistory(action.b());
    }

    public final LiveData<List<PlayListMediaItem>> observePlayListElements(rl8.f input) {
        y45.j(input, "input");
        return LiveDataProviderRepository.INSTANCE.observePlayListElements(input.c(), input.b(), input.d());
    }

    public final LiveData<List<PlayListMediaItem>> observePlayListElementsById(rl8.g input) {
        y45.j(input, "input");
        LiveDataProviderRepository liveDataProviderRepository = LiveDataProviderRepository.INSTANCE;
        throw null;
    }

    public final LiveData<PlayListFolderItem> observePlayListFolder(rl8.h action) {
        y45.j(action, "action");
        LiveDataProviderRepository liveDataProviderRepository = LiveDataProviderRepository.INSTANCE;
        throw null;
    }

    public final LiveData<List<PlayListFolderItem>> observePlayListFolderSet(rl8.i action) {
        y45.j(action, "action");
        return LiveDataProviderRepository.INSTANCE.observePlayListFolderSet(action.c(), action.d(), action.e());
    }

    public final LiveData<List<PlayListItem>> observePlayListFolderSetNonCount(rl8.i action) {
        y45.j(action, "action");
        return LiveDataProviderRepository.INSTANCE.observePlayListFolderSetNonCount(action.c(), action.d(), action.e());
    }

    public final LiveData<List<ConvertingVideo>> observeVideoConverting(rl8.j action) {
        y45.j(action, "action");
        return LiveDataProviderRepository.INSTANCE.observeVideoConverting(action.b());
    }
}
