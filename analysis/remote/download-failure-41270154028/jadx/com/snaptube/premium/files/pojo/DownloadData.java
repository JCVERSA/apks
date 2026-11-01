package com.snaptube.premium.files.pojo;

import android.text.TextUtils;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.phoenix.card.models.CardViewModel;
import com.phoenix.download.card.model.TaskCardModel;
import com.snaptube.premium.model.LocalVideoAlbumInfo;
import com.snaptube.premium.model.VideoMyThingsCardModel;
import com.snaptube.taskManager.datasets.TaskInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import o.e18;
import o.n74;
import o.or3;
import o.pg1;

public final class DownloadData implements MultiItemEntity {
    public static final a c = new a(null);
    public int a;
    public Object b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/snaptube/premium/files/pojo/DownloadData$ViewType;", "", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface ViewType {
    }

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }
    }

    public DownloadData(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final boolean a(long j) {
        Object obj = this.b;
        if (obj instanceof TaskCardModel) {
            or3.d(obj, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel");
            e18 e18VarM = ((TaskCardModel) obj).m();
            return (e18VarM == null || e18VarM.b() == null || e18VarM.b().a != j) ? false : true;
        }
        if (obj instanceof VideoMyThingsCardModel) {
            or3.d(obj, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel");
            VideoMyThingsCardModel videoMyThingsCardModel = (VideoMyThingsCardModel) obj;
            return (videoMyThingsCardModel.n() == null || videoMyThingsCardModel.n().k() == null || videoMyThingsCardModel.n().k().getId() != j) ? false : true;
        }
        return false;
    }

    public final boolean b(DownloadData downloadData) {
        if (downloadData == null || this.a != downloadData.a) {
            return false;
        }
        Object obj = this.b;
        if ((obj instanceof TaskCardModel) && (downloadData.b instanceof TaskCardModel)) {
            long jF = f();
            return jF != 0 && jF == downloadData.f();
        }
        if (!(downloadData.b instanceof VideoMyThingsCardModel) || !(obj instanceof VideoMyThingsCardModel)) {
            return false;
        }
        long jH = h();
        return jH != 0 && jH == downloadData.h();
    }

    public final boolean c(String str) {
        Object obj = this.b;
        if (obj instanceof VideoMyThingsCardModel) {
            or3.d(obj, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel");
            n74 n74VarN = ((VideoMyThingsCardModel) obj).n();
            if (n74VarN == null || n74VarN.k() == null) {
                return false;
            }
            return TextUtils.equals(str, n74VarN.k().getFilePath());
        }
        if (!(obj instanceof TaskCardModel)) {
            return false;
        }
        or3.d(obj, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel");
        e18 e18VarM = ((TaskCardModel) obj).m();
        if (e18VarM == null || e18VarM.b() == null) {
            return false;
        }
        return TextUtils.equals(e18VarM.b().i(), str);
    }

    public final Object d() {
        return this.b;
    }

    public final String e() {
        TaskInfo taskInfoB;
        LocalVideoAlbumInfo localVideoAlbumInfoK;
        Object obj = this.b;
        if (obj instanceof VideoMyThingsCardModel) {
            or3.d(obj, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel");
            n74 n74VarN = ((VideoMyThingsCardModel) obj).n();
            if (n74VarN == null || (localVideoAlbumInfoK = n74VarN.k()) == null) {
                return null;
            }
            return localVideoAlbumInfoK.getFilePath();
        }
        if (!(obj instanceof TaskCardModel)) {
            return null;
        }
        or3.d(obj, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel");
        e18 e18VarM = ((TaskCardModel) obj).m();
        if (e18VarM == null || (taskInfoB = e18VarM.b()) == null) {
            return null;
        }
        return taskInfoB.i();
    }

    public final long f() {
        LocalVideoAlbumInfo localVideoAlbumInfoK;
        TaskInfo taskInfoB;
        Object obj = this.b;
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof TaskCardModel) {
            or3.d(obj, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel");
            e18 e18VarM = ((TaskCardModel) obj).m();
            if (e18VarM == null || (taskInfoB = e18VarM.b()) == null) {
                return 0L;
            }
            return taskInfoB.a;
        }
        if (!(obj instanceof VideoMyThingsCardModel)) {
            return 0L;
        }
        or3.d(obj, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel");
        n74 n74VarN = ((VideoMyThingsCardModel) obj).n();
        if (n74VarN == null || (localVideoAlbumInfoK = n74VarN.k()) == null) {
            return 0L;
        }
        return localVideoAlbumInfoK.getId();
    }

    public final int g() {
        return this.a;
    }

    @Override
    public int getType() {
        return this.a;
    }

    public final long h() {
        Object obj = this.b;
        if (obj == null || !(obj instanceof VideoMyThingsCardModel)) {
            return 0L;
        }
        or3.d(obj, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel");
        return ((VideoMyThingsCardModel) obj).getVideoId();
    }

    public final boolean i() {
        CardViewModel cardViewModelV;
        CardViewModel.MediaType mediaType;
        Object obj = this.b;
        if (obj == null || !(obj instanceof VideoMyThingsCardModel) || (cardViewModelV = ((VideoMyThingsCardModel) obj).v()) == null || (mediaType = cardViewModelV.getMediaType()) == null) {
            return false;
        }
        return mediaType == CardViewModel.MediaType.AUDIO || mediaType == CardViewModel.MediaType.AUDIO_WITH_META;
    }

    public final boolean j() {
        CardViewModel cardViewModelV;
        CardViewModel.MediaType mediaType;
        Object obj = this.b;
        return (obj == null || !(obj instanceof VideoMyThingsCardModel) || (cardViewModelV = ((VideoMyThingsCardModel) obj).v()) == null || (mediaType = cardViewModelV.getMediaType()) == null || mediaType != CardViewModel.MediaType.IMAGE) ? false : true;
    }

    public final boolean k() {
        CardViewModel cardViewModelV;
        CardViewModel.MediaType mediaType;
        Object obj = this.b;
        return (obj == null || !(obj instanceof VideoMyThingsCardModel) || (cardViewModelV = ((VideoMyThingsCardModel) obj).v()) == null || (mediaType = cardViewModelV.getMediaType()) == null || mediaType != CardViewModel.MediaType.VIDEO) ? false : true;
    }

    public final void l(Object obj) {
        this.b = obj;
    }

    public String toString() {
        return "type:" + this.a + ", data:" + this.b;
    }
}
