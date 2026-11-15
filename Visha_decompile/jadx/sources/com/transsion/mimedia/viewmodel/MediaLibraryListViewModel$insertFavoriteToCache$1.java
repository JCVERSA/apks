package com.transsion.mimedia.viewmodel;

import com.transsion.dbdata.beans.MIMediaLibraryCache;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import defpackage.hw5;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.mimedia.viewmodel.MediaLibraryListViewModel$insertFavoriteToCache$1", f = "MediaLibraryListViewModel.kt", l = {}, m = "invokeSuspend")
public final class MediaLibraryListViewModel$insertFavoriteToCache$1 extends SuspendLambda implements s74 {
    final List<MIMediaLibraryData> $list;
    int label;
    final MediaLibraryListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaLibraryListViewModel$insertFavoriteToCache$1(MediaLibraryListViewModel mediaLibraryListViewModel, List<MIMediaLibraryData> list, wh1<? super MediaLibraryListViewModel$insertFavoriteToCache$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = mediaLibraryListViewModel;
        this.$list = list;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MediaLibraryListViewModel$insertFavoriteToCache$1(this.this$0, this.$list, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MediaLibraryListViewModel$insertFavoriteToCache$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        hw5 hw5Var = this.this$0.mFavoriteDao;
        if (hw5Var != null) {
            mk0.b(hw5Var.deleteAllCaches());
        }
        ArrayList arrayList = new ArrayList();
        List<MIMediaLibraryData> list = this.$list;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                MIMediaLibraryCache mIMediaLibraryCacheFromMIMediaLibraryData = MIMediaLibraryCache.fromMIMediaLibraryData((MIMediaLibraryData) it.next());
                if (mIMediaLibraryCacheFromMIMediaLibraryData != null) {
                    arrayList.add(mIMediaLibraryCacheFromMIMediaLibraryData);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return zfb.a;
        }
        hw5 hw5Var2 = this.this$0.mFavoriteDao;
        if (hw5Var2 != null) {
            hw5Var2.insertCaches(arrayList);
        }
        return zfb.a;
    }
}
