package com.transsion.mimedia.viewmodel;

import com.transsion.dbdata.beans.MIMediaLibraryCache;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import defpackage.el0;
import defpackage.hw5;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.mimedia.viewmodel.MediaLibraryListViewModel$getMediaLibraryFromCache$1", f = "MediaLibraryListViewModel.kt", l = {}, m = "invokeSuspend")
public final class MediaLibraryListViewModel$getMediaLibraryFromCache$1 extends SuspendLambda implements s74 {
    int label;
    final MediaLibraryListViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.mimedia.viewmodel.MediaLibraryListViewModel$getMediaLibraryFromCache$1$1", f = "MediaLibraryListViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final List<MIMediaLibraryData> $favoriteList;
        int label;
        final MediaLibraryListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MediaLibraryListViewModel mediaLibraryListViewModel, List<MIMediaLibraryData> list, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.this$0 = mediaLibraryListViewModel;
            this.$favoriteList = list;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.this$0, this.$favoriteList, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            this.this$0.getMMediaLibraryList().setValue(this.$favoriteList);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaLibraryListViewModel$getMediaLibraryFromCache$1(MediaLibraryListViewModel mediaLibraryListViewModel, wh1<? super MediaLibraryListViewModel$getMediaLibraryFromCache$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = mediaLibraryListViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MediaLibraryListViewModel$getMediaLibraryFromCache$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MediaLibraryListViewModel$getMediaLibraryFromCache$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ArrayList arrayList;
        List<MIMediaLibraryCache> allCaches;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        hw5 hw5Var = this.this$0.mFavoriteDao;
        if (hw5Var == null || (allCaches = hw5Var.getAllCaches()) == null) {
            arrayList = null;
        } else {
            List<MIMediaLibraryCache> list = allCaches;
            arrayList = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((MIMediaLibraryCache) it.next()).toMIMediaLibraryData());
            }
        }
        el0.d(this.this$0.getMCoroutineScope(), mc2.c(), null, new AnonymousClass1(this.this$0, arrayList, null), 2, null);
        return zfb.a;
    }
}
