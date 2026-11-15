.class public abstract Lio/reactivex/rxjava3/core/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li00/b;


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "rx3.buffer-size"

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lio/reactivex/rxjava3/core/e;->a:I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lio/reactivex/rxjava3/core/e;->a:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final b()Lio/reactivex/rxjava3/core/e;
    .locals 3

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/core/e;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/e;->c(IZZ)Lio/reactivex/rxjava3/core/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final c(IZZ)Lio/reactivex/rxjava3/core/e;
    .locals 8

    .line 1
    const-string v0, "capacity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;

    .line 7
    .line 8
    sget-object v6, Lio/reactivex/rxjava3/internal/functions/Functions;->c:Lyx/a;

    .line 9
    .line 10
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->a()Lyx/f;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    move-object v1, v0

    .line 15
    move-object v2, p0

    .line 16
    move v3, p1

    .line 17
    move v4, p3

    .line 18
    move v5, p2

    .line 19
    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;-><init>(Lio/reactivex/rxjava3/core/e;IZZLyx/a;Lyx/f;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ldy/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final d()Lio/reactivex/rxjava3/core/e;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;-><init>(Lio/reactivex/rxjava3/core/e;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ldy/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final e()Lio/reactivex/rxjava3/core/e;
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;-><init>(Lio/reactivex/rxjava3/core/e;Lyx/f;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ldy/a;->m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final f(Lio/reactivex/rxjava3/core/f;)V
    .locals 2

    .line 1
    const-string v0, "subscriber is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0, p1}, Ldy/a;->v(Lio/reactivex/rxjava3/core/e;Li00/c;)Li00/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 11
    .line 12
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/e;->g(Li00/c;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :goto_1
    throw p1
.end method

.method protected abstract g(Li00/c;)V
.end method

.method public final subscribe(Li00/c;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lio/reactivex/rxjava3/core/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lio/reactivex/rxjava3/core/f;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/e;->f(Lio/reactivex/rxjava3/core/f;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "subscriber is null"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;-><init>(Li00/c;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/e;->f(Lio/reactivex/rxjava3/core/f;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
