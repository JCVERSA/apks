package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.LiveDataRepositoryDelegate;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class dn5 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final LiveData a() {
        return new MutableLiveData(y71.k());
    }

    public final LiveData b(rl8 rl8Var) {
        LiveData liveDataA;
        if (rl8Var instanceof rl8.i) {
            rl8.i iVar = (rl8.i) rl8Var;
            liveDataA = iVar.b() ? LiveDataRepositoryDelegate.INSTANCE.observePlayListFolderSet(iVar) : LiveDataRepositoryDelegate.INSTANCE.observePlayListFolderSetNonCount(iVar);
        } else if (rl8Var instanceof rl8.e) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observePlayHistory((rl8.e) rl8Var);
        } else if (rl8Var instanceof rl8.f) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observePlayListElements((rl8.f) rl8Var);
        } else if (rl8Var instanceof rl8.c) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observeFavoritePlayListElements((rl8.c) rl8Var);
        } else if (rl8Var instanceof rl8.a) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observeConvertAudio((rl8.a) rl8Var);
        } else if (rl8Var instanceof rl8.j) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observeVideoConverting((rl8.j) rl8Var);
        } else if (rl8Var instanceof rl8.b) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observeDownloadSubtitle();
        } else if (rl8Var instanceof rl8.d) {
            liveDataA = LiveDataRepositoryDelegate.INSTANCE.observeAllMissingData();
        } else {
            vmb.i("LiveDataQueryEngine", "unsupported query action: " + rl8Var.getClass().getSimpleName());
            liveDataA = a();
        }
        y45.h(liveDataA, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.collections.List<O of com.transsion.dbdata.source.engine.LiveDataQueryEngine.executeQuery>>");
        return liveDataA;
    }

    public LiveData c(sl8 sl8Var) {
        y45.j(sl8Var, Progress.REQUEST);
        try {
            if (sl8Var.c()) {
                vmb.a("LiveDataQueryEngine", "queryBatchLiveData processing: " + sl8Var.a().getClass().getSimpleName());
                LiveData liveDataB = b(sl8Var.a());
                vmb.a("LiveDataQueryEngine", "queryBatchLiveData completed successfully for " + sl8Var.a().getClass().getSimpleName());
                return liveDataB;
            }
            vmb.c("LiveDataQueryEngine", "queryBatchLiveData validation failed for " + sl8Var.a().getClass().getSimpleName() + ", input: " + sl8Var.a().a().getName() + ", output: " + sl8Var.b().getName());
            return a();
        } catch (Exception e) {
            vmb.d("LiveDataQueryEngine", "queryBatchLiveData error for " + sl8Var.a().getClass().getSimpleName(), e);
            return a();
        }
    }
}
