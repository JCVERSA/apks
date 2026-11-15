.class public abstract Lr14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk8;


# static fields
.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lr14;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lr14;->b:I

    return v0
.end method

.method public static b(Lw14;Lio/reactivex/BackpressureStrategy;)Lr14;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate;-><init>(Lw14;Lio/reactivex/BackpressureStrategy;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lr14;
    .locals 1

    sget-object v0, Lu14;->c:Lr14;

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(J)Lb96;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ls14;

    invoke-direct {v0, p0, p1, p2}, Ls14;-><init>(Lr14;J)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()Lb96;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lr14;->c(J)Lb96;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lt74;)Lr14;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lr14;->g(Lt74;ZI)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lt74;ZI)Lr14;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lac7;->e(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;-><init>(Lr14;Lt74;ZI)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lio/reactivex/Scheduler;)Lr14;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lr14;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lr14;->i(Lio/reactivex/Scheduler;ZI)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lio/reactivex/Scheduler;ZI)Lr14;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, Lac7;->e(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;-><init>(Lr14;Lio/reactivex/Scheduler;ZI)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lr14;
    .locals 3

    invoke-static {}, Lr14;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lr14;->k(IZZ)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final k(IZZ)Lr14;
    .locals 7

    const-string v0, "capacity"

    invoke-static {p1, v0}, Lac7;->e(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;-><init>(Lr14;IZZLd5;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lr14;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;-><init>(Lr14;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lr14;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest;-><init>(Lr14;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lzf1;)Lrc2;
    .locals 3

    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lzf1;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    invoke-virtual {p0, p1, v0, v1, v2}, Lr14;->o(Lzf1;Lzf1;Ld5;Lzf1;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lzf1;Lzf1;Ld5;Lzf1;)Lrc2;
    .locals 1

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/subscribers/LambdaSubscriber;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/subscribers/LambdaSubscriber;-><init>(Lzf1;Lzf1;Ld5;Lzf1;)V

    invoke-virtual {p0, v0}, Lr14;->p(Ly14;)V

    return-object v0
.end method

.method public final p(Ly14;)V
    .locals 1

    const-string v0, "s is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lyw8;->B(Lr14;Ld2a;)Ld2a;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lr14;->q(Ld2a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :goto_1
    throw p0
.end method

.method public abstract q(Ld2a;)V
.end method

.method public final r(Lio/reactivex/Scheduler;)Lr14;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr14;->s(Lio/reactivex/Scheduler;Z)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lio/reactivex/Scheduler;Z)Lr14;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;-><init>(Lr14;Lio/reactivex/Scheduler;Z)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Ld2a;)V
    .locals 1

    instance-of v0, p1, Ly14;

    if-eqz v0, :cond_0

    check-cast p1, Ly14;

    invoke-virtual {p0, p1}, Lr14;->p(Ly14;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/subscribers/StrictSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/subscribers/StrictSubscriber;-><init>(Ld2a;)V

    invoke-virtual {p0, v0}, Lr14;->p(Ly14;)V

    :goto_0
    return-void
.end method

.method public final t(Lio/reactivex/Scheduler;)Lr14;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;-><init>(Lr14;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method
