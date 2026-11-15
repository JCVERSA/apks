.class public final Lcom/transsion/transfer/impl/client/TransferClient$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/impl/client/TransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->f(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final h()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "&1000&"

    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "&"

    .line 28
    .line 29
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lau/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static synthetic m(Lcom/transsion/transfer/impl/client/TransferClient$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->M(Lcom/transsion/transfer/impl/e;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clientIp"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "transferId"

    .line 12
    .line 13
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/transsion/transfer/androidasync/http/h;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Lcom/transsion/transfer/androidasync/http/h;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1, p3}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    .line 25
    .line 26
    .line 27
    const-string p1, "transferProtocolVersion"

    .line 28
    .line 29
    const-string p2, "1"

    .line 30
    .line 31
    invoke-virtual {v2, p1, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    .line 32
    .line 33
    .line 34
    const/16 p1, 0xbb8

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/j;->y(I)Lcom/transsion/transfer/androidasync/http/j;

    .line 37
    .line 38
    .line 39
    return-object v2
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/i;
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clientIp"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "transferId"

    .line 12
    .line 13
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/transsion/transfer/androidasync/http/i;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Lcom/transsion/transfer/androidasync/http/i;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1, p3}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    .line 25
    .line 26
    .line 27
    const-string p1, "transferProtocolVersion"

    .line 28
    .line 29
    const-string p2, "1"

    .line 30
    .line 31
    invoke-virtual {v2, p1, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    .line 32
    .line 33
    .line 34
    const/16 p1, 0xbb8

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/j;->y(I)Lcom/transsion/transfer/androidasync/http/j;

    .line 37
    .line 38
    .line 39
    return-object v2
.end method

.method public final e(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->P(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->L(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->R(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Leu/a;->a:Leu/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Leu/a;->b()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v2, Lcom/transsion/transfer/impl/client/k;

    .line 35
    .line 36
    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Lcom/transsion/transfer/impl/e;->c(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->M(Lcom/transsion/transfer/impl/e;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    xor-int/2addr v0, v2

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->w()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v1

    .line 36
    :goto_1
    xor-int/2addr v0, v2

    .line 37
    if-ne v0, v2, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->H()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    move v0, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v0, v1

    .line 54
    :goto_2
    xor-int/2addr v0, v2

    .line 55
    if-ne v0, v2, :cond_3

    .line 56
    .line 57
    move v1, v2

    .line 58
    :cond_3
    return v1
.end method

.method public final i()Lcom/transsion/transfer/impl/e;
    .locals 5

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Lcom/transsion/transfer/impl/client/TransferClient;

    .line 9
    .line 10
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->E()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->w()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->H()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->M(Lcom/transsion/transfer/impl/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0

    .line 43
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->G()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->H()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "serverIpNew"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clientIpNew"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "transferIdNew"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->P(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/transsion/transfer/impl/client/TransferClient;->L(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Lcom/transsion/transfer/impl/client/TransferClient;->R(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    new-instance p2, Lcom/transsion/transfer/impl/client/l;

    .line 47
    .line 48
    invoke-direct {p2, p4}, Lcom/transsion/transfer/impl/client/l;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Lcom/transsion/transfer/impl/e;->c(Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method
