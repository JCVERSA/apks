.class public final Lcom/yandex/mobile/ads/impl/hw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ej;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hw1$a;,
        Lcom/yandex/mobile/ads/impl/hw1$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj;

.field private final b:Lcom/yandex/mobile/ads/impl/z91;

.field private final c:Lcom/yandex/mobile/ads/impl/nj;

.field private final d:Lcom/yandex/mobile/ads/impl/t71;

.field private final e:Lcom/yandex/mobile/ads/impl/xt1;

.field private final f:Lcom/yandex/mobile/ads/impl/b81;

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/yandex/mobile/ads/impl/pw1;

.field private final i:Lcom/yandex/mobile/ads/impl/cj;

.field private final j:Lcom/yandex/mobile/ads/impl/d61;

.field private final k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private l:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/yandex/mobile/ads/impl/q61;

.field private n:Z

.field private o:Lcom/yandex/mobile/ads/impl/mj;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/z91;Lcom/yandex/mobile/ads/impl/nj;Lcom/yandex/mobile/ads/impl/t71;Lcom/yandex/mobile/ads/impl/xt1;Lcom/yandex/mobile/ads/impl/b81;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/cj;Lcom/yandex/mobile/ads/impl/d61;)V
    .locals 1

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeResponseCreator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "contentControllerCreator"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "requestParameterManager"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkAdapterReporter"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adEventListener"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "handler"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkSettings"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sizeValidator"

    invoke-static {p10, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "infoProvider"

    invoke-static {p11, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hw1;->b:Lcom/yandex/mobile/ads/impl/z91;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hw1;->c:Lcom/yandex/mobile/ads/impl/nj;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hw1;->d:Lcom/yandex/mobile/ads/impl/t71;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/hw1;->e:Lcom/yandex/mobile/ads/impl/xt1;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/hw1;->f:Lcom/yandex/mobile/ads/impl/b81;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/hw1;->g:Landroid/os/Handler;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/hw1;->h:Lcom/yandex/mobile/ads/impl/pw1;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/hw1;->i:Lcom/yandex/mobile/ads/impl/cj;

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/hw1;->j:Lcom/yandex/mobile/ads/impl/d61;

    new-instance p1, Lfid;

    invoke-direct {p1, p0}, Lfid;-><init>(Lcom/yandex/mobile/ads/impl/hw1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hw1;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hw1;Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->m:Lcom/yandex/mobile/ads/impl/q61;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/hw1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->n:Z

    return p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/hw1;)Lcom/yandex/mobile/ads/impl/aj;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/hw1;)Lcom/yandex/mobile/ads/impl/t71;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->d:Lcom/yandex/mobile/ads/impl/t71;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/hw1;)Lcom/yandex/mobile/ads/impl/xt1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->e:Lcom/yandex/mobile/ads/impl/xt1;

    return-object p0
.end method

.method public static final f(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->l:Lcom/yandex/mobile/ads/impl/o8;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->m:Lcom/yandex/mobile/ads/impl/q61;

    return-void
.end method

.method private static final g(Lcom/yandex/mobile/ads/impl/hw1;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->g:Landroid/os/Handler;

    new-instance v1, Lgid;

    invoke-direct {v1, p0}, Lgid;-><init>(Lcom/yandex/mobile/ads/impl/hw1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method private static final h(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/aj;->C()Lcom/yandex/mobile/ads/impl/np0;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/zg2;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hw1;->h(Lcom/yandex/mobile/ads/impl/hw1;)V

    return-void
.end method

.method public static synthetic j(Lcom/yandex/mobile/ads/impl/hw1;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hw1;->g(Lcom/yandex/mobile/ads/impl/hw1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 33
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->n:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->l:Lcom/yandex/mobile/ads/impl/o8;

    .line 35
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/aj;->C()Lcom/yandex/mobile/ads/impl/np0;

    move-result-object v5

    if-eqz v0, :cond_1

    .line 36
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/hw1;->m:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz v4, :cond_1

    .line 37
    const-string v1, "null cannot be cast to non-null type com.monetization.ads.nativeads.NativeAdPrivate"

    invoke-static {v4, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hw1;->c:Lcom/yandex/mobile/ads/impl/nj;

    .line 39
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v2

    .line 40
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/hw1;->f:Lcom/yandex/mobile/ads/impl/b81;

    .line 41
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/hw1;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 42
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/aj;->D()Lcom/yandex/mobile/ads/impl/qe2;

    move-result-object v8

    move-object v3, v0

    .line 43
    invoke-virtual/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/nj;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/b81;Landroid/view/ViewTreeObserver$OnPreDrawListener;Lcom/yandex/mobile/ads/impl/qe2;)Lcom/yandex/mobile/ads/impl/mj;

    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/hw1;->o:Lcom/yandex/mobile/ads/impl/mj;

    .line 45
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    .line 46
    new-instance v2, Lcom/yandex/mobile/ads/impl/hw1$c;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/hw1$c;-><init>(Lcom/yandex/mobile/ads/impl/hw1;)V

    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/mj;->a(Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/dj;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->i()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ko1;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->o:Lcom/yandex/mobile/ads/impl/mj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/mj;->a()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->b:Lcom/yandex/mobile/ads/impl/z91;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z91;->a()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->l:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->m:Lcom/yandex/mobile/ads/impl/q61;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/hw1;->n:Z

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    .line 12
    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->h:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->q0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->n:Z

    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->q()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    .line 17
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hw1;->l:Lcom/yandex/mobile/ads/impl/o8;

    if-eqz v0, :cond_1

    .line 18
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hw1;->i:Lcom/yandex/mobile/ads/impl/cj;

    .line 19
    invoke-static {p1, p2, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/iz1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/j9;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    new-instance v0, Lcom/yandex/mobile/ads/impl/hw1$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/hw1$b;-><init>(Lcom/yandex/mobile/ads/impl/hw1;)V

    .line 21
    new-instance v1, Lcom/yandex/mobile/ads/impl/hw1$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hw1$a;-><init>(Lcom/yandex/mobile/ads/impl/hw1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->b:Lcom/yandex/mobile/ads/impl/z91;

    invoke-virtual {p0, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/z91;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/z91$b;Lcom/yandex/mobile/ads/impl/dr1;)V

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    if-eqz v0, :cond_2

    .line 23
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, p2

    :goto_0
    if-eqz v0, :cond_3

    .line 24
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p2

    .line 25
    :goto_1
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v5

    .line 26
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v6

    .line 27
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result v7

    .line 28
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result v8

    .line 29
    invoke-static/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/w7;->a(IIIIII)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->d()Ljava/lang/String;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p2}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ko1;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_3

    .line 32
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->x()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ko1;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hw1;->j:Lcom/yandex/mobile/ads/impl/d61;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hw1;->m:Lcom/yandex/mobile/ads/impl/q61;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/d61;->a(Lcom/yandex/mobile/ads/impl/q61;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
