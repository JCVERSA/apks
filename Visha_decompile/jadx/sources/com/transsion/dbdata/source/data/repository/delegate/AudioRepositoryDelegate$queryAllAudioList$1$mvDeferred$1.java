package com.transsion.dbdata.source.data.repository.delegate;

import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lnk1;", "Lkotlin/Pair;", "", "", "Lcom/transsion/dbdata/beans/media/AudioItem;", "<anonymous>", "(Lnk1;)Lkotlin/Pair;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1", f = "AudioRepositoryDelegate.kt", l = {}, m = "invokeSuspend")
public final class AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1 extends SuspendLambda implements s74 {
    int label;

    public AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1(wh1<? super AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1> wh1Var) {
        super(2, wh1Var);
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1(wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Pair<Integer, ? extends List<? extends AudioItem>>> wh1Var) {
        return ((AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        return AudioFilterKtxKt.filterMVAudio$default(AudioRepositoryDelegate.INSTANCE.getMAudioMVRepository().queryAllMVList(true), false, false, 3, null);
    }
}
