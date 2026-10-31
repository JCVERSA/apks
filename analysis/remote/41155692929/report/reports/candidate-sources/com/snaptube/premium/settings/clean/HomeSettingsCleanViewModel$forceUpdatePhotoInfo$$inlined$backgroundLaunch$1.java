package com.snaptube.premium.settings.clean;

import android.content.Context;
import com.dayuwuxian.clean.photo.dao.PhotoInfoRepository;
import com.dayuwuxian.clean.photo.dao.SCCleanDatabase;
import com.wandoujia.base.config.GlobalConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.SourceDebugExtension;
import o.mg8;
import o.or3;
import o.pq2;
import o.pr3;
import o.rx2;
import o.tq2;
import o.w61;
import o.xu0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lo/w61;", "Lo/mg8;", "<anonymous>", "(Lo/w61;)V", "com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$backgroundLaunch$1"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "com.snaptube.premium.settings.clean.HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1", f = "HomeSettingsCleanViewModel.kt", i = {}, l = {592, 592}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nHomeSettingsCleanViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeSettingsCleanViewModel.kt\ncom/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$backgroundLaunch$1\n+ 2 HomeSettingsCleanViewModel.kt\ncom/snaptube/premium/settings/clean/HomeSettingsCleanViewModel\n*L\n1#1,588:1\n407#2,5:589\n*E\n"})
public final class HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1 extends SuspendLambda implements rx2 {
    private Object L$0;
    int label;
    final HomeSettingsCleanViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1(Continuation continuation, HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        super(2, continuation);
        this.this$0 = homeSettingsCleanViewModel;
    }

    @Override
    @NotNull
    public final Continuation<mg8> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1 homeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1 = new HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1(continuation, this.this$0);
        homeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1.L$0 = obj;
        return homeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke((w61) obj, (Continuation<? super mg8>) obj2);
    }

    @Nullable
    public final Object invoke(@NotNull w61 w61Var, @Nullable Continuation<? super mg8> continuation) {
        return ((HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1) create(w61Var, continuation)).invokeSuspend(mg8.a);
    }

    @Override
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        HomeSettingsCleanViewModel homeSettingsCleanViewModel;
        Object objF = pr3.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                homeSettingsCleanViewModel = (HomeSettingsCleanViewModel) this.L$0;
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return mg8.a;
        }
        c.b(obj);
        SCCleanDatabase.Companion companion = SCCleanDatabase.INSTANCE;
        Context appContext = GlobalConfig.getAppContext();
        or3.e(appContext, "getAppContext(...)");
        PhotoInfoRepository photoInfoRepository = new PhotoInfoRepository(companion.b(appContext).k());
        homeSettingsCleanViewModel = this.this$0;
        pq2 pq2VarP = photoInfoRepository.p();
        this.L$0 = homeSettingsCleanViewModel;
        this.label = 1;
        obj = tq2.x(pq2VarP, this);
        if (obj == objF) {
            return objF;
        }
        List listH = (List) obj;
        if (listH == null) {
            listH = xu0.h();
        }
        this.L$0 = null;
        this.label = 2;
        if (HomeSettingsCleanViewModel.k0(homeSettingsCleanViewModel, listH, this) == objF) {
            return objF;
        }
        return mg8.a;
    }
}
