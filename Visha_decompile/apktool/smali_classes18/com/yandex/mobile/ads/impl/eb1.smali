.class public final Lcom/yandex/mobile/ads/impl/eb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i00;

.field private final b:Lcom/yandex/mobile/ads/impl/jb0;

.field private final c:Lcom/yandex/mobile/ads/impl/w41;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/i00;

    invoke-direct {v4, p2, p3}, Lcom/yandex/mobile/ads/impl/i00;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/jb0;

    invoke-direct {v5, p2, p3}, Lcom/yandex/mobile/ads/impl/jb0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/w41;

    invoke-direct {v6, p2, p1}, Lcom/yandex/mobile/ads/impl/w41;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/eb1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/i00;Lcom/yandex/mobile/ads/impl/jb0;Lcom/yandex/mobile/ads/impl/w41;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/i00;Lcom/yandex/mobile/ads/impl/jb0;Lcom/yandex/mobile/ads/impl/w41;)V
    .locals 1

    .line 5
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "defaultNativeVideoLoader"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "firstNativeVideoLoader"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdBlockVideoWrapperLoader"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/eb1;->a:Lcom/yandex/mobile/ads/impl/i00;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/eb1;->b:Lcom/yandex/mobile/ads/impl/jb0;

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/eb1;->c:Lcom/yandex/mobile/ads/impl/w41;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/s41;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    instance-of v0, p5, Lcom/yandex/mobile/ads/impl/eb1$a;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/yandex/mobile/ads/impl/eb1$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/eb1$a;

    invoke-direct {v0, p0, p5}, Lcom/yandex/mobile/ads/impl/eb1$a;-><init>(Lcom/yandex/mobile/ads/impl/eb1;Lwh1;)V

    :goto_0
    iget-object p5, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->f:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/yandex/mobile/ads/impl/s41;

    invoke-static {p5}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p1, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->e:Z

    iget-object p4, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->d:Lcom/yandex/mobile/ads/impl/dw;

    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->c:Landroid/content/Context;

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/yandex/mobile/ads/impl/eb1;

    invoke-static {p5}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p5, p0, Lcom/yandex/mobile/ads/impl/eb1;->c:Lcom/yandex/mobile/ads/impl/w41;

    .line 6
    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->c:Landroid/content/Context;

    iput-object p4, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->d:Lcom/yandex/mobile/ads/impl/dw;

    iput-boolean p1, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->e:Z

    iput v4, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    invoke-virtual {p5, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/w41;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lwh1;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    .line 7
    :cond_4
    :goto_1
    move-object p3, p5

    check-cast p3, Lcom/yandex/mobile/ads/impl/s41;

    const/4 p5, 0x0

    if-nez p3, :cond_5

    return-object p5

    :cond_5
    if-nez p1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/s41;->b()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->R()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 10
    iput-object p3, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->b:Ljava/lang/Object;

    iput-object p5, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->c:Landroid/content/Context;

    iput-object p5, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->d:Lcom/yandex/mobile/ads/impl/dw;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance p5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v2

    invoke-direct {p5, v2, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    .line 12
    invoke-virtual {p5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 13
    new-instance v2, Lcom/yandex/mobile/ads/impl/fb1;

    invoke-direct {v2, p5}, Lcom/yandex/mobile/ads/impl/fb1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 14
    sget-object v3, Lcom/yandex/mobile/ads/impl/w80;->c:Lcom/yandex/mobile/ads/impl/w80;

    .line 15
    invoke-static {p2, v3}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result p2

    .line 16
    sget-object v3, Lcom/yandex/mobile/ads/impl/mb1;->c:Lcom/yandex/mobile/ads/impl/mb1;

    .line 17
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/mb1;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->F()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eb1;->b:Lcom/yandex/mobile/ads/impl/jb0;

    .line 19
    invoke-virtual {p0, p3, v2, p4}, Lcom/yandex/mobile/ads/impl/jb0;->a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/fb1;Lcom/yandex/mobile/ads/impl/dw;)V

    goto :goto_2

    .line 20
    :cond_7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eb1;->a:Lcom/yandex/mobile/ads/impl/i00;

    .line 21
    invoke-virtual {p0, p3, v2, p4}, Lcom/yandex/mobile/ads/impl/i00;->a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/fb1;Lcom/yandex/mobile/ads/impl/dw;)V

    .line 22
    :goto_2
    invoke-virtual {p5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 23
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_8

    invoke-static {v0}, Lpt1;->c(Lwh1;)V

    :cond_8
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    sget-object p0, Lzfb;->a:Lzfb;

    :goto_3
    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    move-object p0, p3

    :goto_5
    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/eb1;->a:Lcom/yandex/mobile/ads/impl/i00;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i00;->a()V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eb1;->b:Lcom/yandex/mobile/ads/impl/jb0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jb0;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    .line 25
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/yandex/mobile/ads/impl/w80;->c:Lcom/yandex/mobile/ads/impl/w80;

    .line 27
    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result p1

    .line 28
    sget-object v0, Lcom/yandex/mobile/ads/impl/mb1;->c:Lcom/yandex/mobile/ads/impl/mb1;

    .line 29
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/mb1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o8;->F()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eb1;->b:Lcom/yandex/mobile/ads/impl/jb0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jb0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
