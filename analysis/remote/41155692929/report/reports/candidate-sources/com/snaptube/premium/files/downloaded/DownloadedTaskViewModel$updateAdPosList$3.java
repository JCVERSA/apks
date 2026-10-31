package com.snaptube.premium.files.downloaded;

import com.snaptube.premium.files.pojo.DownloadData;
import com.snaptube.premium.model.LocalVideoAlbumInfo;
import com.snaptube.premium.model.VideoMyThingsCardModel;
import com.snaptube.util.ProductionEnv;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import o.do3;
import o.lr1;
import o.mg8;
import o.n74;
import o.or3;
import o.rx2;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "index", "Lcom/snaptube/premium/files/pojo/DownloadData;", "Lcom/snaptube/premium/model/VideoMyThingsCardModel;", "item", "Lo/mg8;", "invoke", "(ILcom/snaptube/premium/files/pojo/DownloadData;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadedTaskViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadedTaskViewModel.kt\ncom/snaptube/premium/files/downloaded/DownloadedTaskViewModel$updateAdPosList$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,523:1\n1#2:524\n*E\n"})
public final class DownloadedTaskViewModel$updateAdPosList$3 extends Lambda implements rx2 {
    final DownloadedTaskViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadedTaskViewModel$updateAdPosList$3(DownloadedTaskViewModel downloadedTaskViewModel) {
        super(2);
        this.this$0 = downloadedTaskViewModel;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        invoke(((Number) obj).intValue(), (DownloadData) obj2);
        return mg8.a;
    }

    public final void invoke(int i, @NotNull DownloadData downloadData) {
        n74 n74VarN;
        LocalVideoAlbumInfo localVideoAlbumInfoK;
        n74 n74VarN2;
        LocalVideoAlbumInfo localVideoAlbumInfoK2;
        or3.f(downloadData, "item");
        Integer numValueOf = Integer.valueOf(i);
        DownloadedTaskViewModel downloadedTaskViewModel = this.this$0;
        if (DownloadedTaskViewModel.d0(downloadedTaskViewModel).size() < i || DownloadedTaskViewModel.e0(downloadedTaskViewModel).contains(Integer.valueOf(i))) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            DownloadedTaskViewModel downloadedTaskViewModel2 = this.this$0;
            DownloadedTaskViewModel.e0(downloadedTaskViewModel2).add(Integer.valueOf(i));
            VideoMyThingsCardModel videoMyThingsCardModelG0 = DownloadedTaskViewModel.g0(downloadedTaskViewModel2, i);
            long jCurrentTimeMillis = (videoMyThingsCardModelG0 == null || (n74VarN2 = videoMyThingsCardModelG0.n()) == null || (localVideoAlbumInfoK2 = n74VarN2.k()) == null) ? System.currentTimeMillis() : localVideoAlbumInfoK2.getCreateTime();
            long jCurrentTimeMillis2 = (videoMyThingsCardModelG0 == null || (n74VarN = videoMyThingsCardModelG0.n()) == null || (localVideoAlbumInfoK = n74VarN.k()) == null) ? System.currentTimeMillis() : localVideoAlbumInfoK.getFinishTime();
            lr1.a aVar = lr1.a;
            do3 do3VarD = aVar.d((VideoMyThingsCardModel) downloadData.d());
            do3VarD.e(jCurrentTimeMillis);
            do3VarD.f(jCurrentTimeMillis2);
            ProductionEnv.d("feed_stream_insert", "插入列表 位置：" + i + ", placementID: " + do3VarD.a());
            DownloadedTaskViewModel.d0(downloadedTaskViewModel2).add(i, new DownloadData(100, aVar.e(do3VarD)));
        }
    }
}
