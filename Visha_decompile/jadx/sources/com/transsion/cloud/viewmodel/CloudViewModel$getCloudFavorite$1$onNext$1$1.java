package com.transsion.cloud.viewmodel;

import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudFavorite$1$onNext$1$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$getCloudFavorite$1$onNext$1$1 extends SuspendLambda implements s74 {
    final List<MIMediaLibraryData> $it;
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$getCloudFavorite$1$onNext$1$1(List<MIMediaLibraryData> list, CloudViewModel cloudViewModel, wh1<? super CloudViewModel$getCloudFavorite$1$onNext$1$1> wh1Var) {
        super(2, wh1Var);
        this.$it = list;
        this.this$0 = cloudViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getCloudFavorite$1$onNext$1$1(this.$it, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getCloudFavorite$1$onNext$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        Collection collection;
        Collection collection2;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        if (com.transsion.palmsdk.b.s()) {
            if (!this.$it.isEmpty()) {
                Iterator<T> it = this.$it.iterator();
                while (it.hasNext()) {
                    ((MIMediaLibraryData) it.next()).setMediaLibraryCollectFlag(true);
                }
            }
            this.this$0.getMCloudFavoriteList().setValue(this.$it);
            this.this$0.a0(this.$it);
            Triple triple = (Triple) this.this$0.getMCloudDataList().getValue();
            List list = triple != null ? (List) triple.getSecond() : null;
            if ((list != null && !list.isEmpty()) || (((collection = (Collection) this.this$0.getMCloudFavoriteList().getValue()) != null && !collection.isEmpty()) || ((collection2 = (Collection) this.this$0.getMCloudRecentlyList().getValue()) != null && !collection2.isEmpty()))) {
                this.this$0.getMNoContentLiveData().setValue(mk0.a(false));
            }
        }
        return zfb.a;
    }
}
