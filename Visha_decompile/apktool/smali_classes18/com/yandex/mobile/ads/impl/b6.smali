.class public final Lcom/yandex/mobile/ads/impl/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/z5;

.field private final b:Lcom/yandex/mobile/ads/impl/r9;

.field private final c:Lcom/yandex/mobile/ads/impl/a5;

.field private final d:Lcom/yandex/mobile/ads/impl/vi1;

.field private final e:Lcom/yandex/mobile/ads/impl/ji1;

.field private final f:Lcom/yandex/mobile/ads/impl/w5;

.field private final g:Lcom/yandex/mobile/ads/impl/ao0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/a5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/ji1;Lcom/yandex/mobile/ads/impl/w5;Lcom/yandex/mobile/ads/impl/ao0;)V
    .locals 1

    const-string v0, "adStateDataController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerStateController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlayerEventsController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStateHolder"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfoStorage"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerStateHolder"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerAdPlaybackController"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlayerDiscardController"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamSettings"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/b6;->c:Lcom/yandex/mobile/ads/impl/a5;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/b6;->d:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/b6;->e:Lcom/yandex/mobile/ads/impl/ji1;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/b6;->f:Lcom/yandex/mobile/ads/impl/w5;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/b6;->g:Lcom/yandex/mobile/ads/impl/ao0;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 11
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->a(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 15
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->f(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->b(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->a(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->d:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->e:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cj1;->d()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->d:Lcom/yandex/mobile/ads/impl/vi1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/vi1;->a(Z)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->e:Lcom/yandex/mobile/ads/impl/ji1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ji1;->a()V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->c(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 3

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-eq v1, v0, :cond_2

    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->c:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->e:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v1, v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cj1;->d()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->d:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->d:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->c:Lcom/yandex/mobile/ads/impl/a5;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/a5;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/v4;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/yandex/mobile/ads/impl/cj1;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "checkNotNull(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/mobile/ads/impl/v4;

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/cj1;-><init>(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/go0;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/cj1;)V

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->d(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 2
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->e:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/wm0;->d:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cj1;->d()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->d:Lcom/yandex/mobile/ads/impl/vi1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/vi1;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->e:Lcom/yandex/mobile/ads/impl/ji1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ji1;->b()V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->a:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_1
    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 4

    .line 2
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b6;->g:Lcom/yandex/mobile/ads/impl/ao0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/w5$b;->c:Lcom/yandex/mobile/ads/impl/w5$b;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/w5$b;->b:Lcom/yandex/mobile/ads/impl/w5$b;

    .line 6
    :goto_0
    new-instance v1, Lx6d;

    invoke-direct {v1, p0, p1}, Lx6d;-><init>(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v2

    .line 8
    sget-object v3, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v3, v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b6;->c:Lcom/yandex/mobile/ads/impl/a5;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/a5;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/v4;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->f:Lcom/yandex/mobile/ads/impl/w5;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/w5;->a(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/w5$b;Lcom/yandex/mobile/ads/impl/w5$a;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v2, p1, v3}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 12
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/cj1;->c()Lcom/yandex/mobile/ads/impl/v4;

    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->f:Lcom/yandex/mobile/ads/impl/w5;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/w5;->a(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/w5$b;Lcom/yandex/mobile/ads/impl/w5$a;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 15
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 4

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/w5$b;->b:Lcom/yandex/mobile/ads/impl/w5$b;

    new-instance v1, Lw6d;

    invoke-direct {v1, p0, p1}, Lw6d;-><init>(Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/go0;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b6;->c:Lcom/yandex/mobile/ads/impl/a5;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/a5;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/v4;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->f:Lcom/yandex/mobile/ads/impl/w5;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/w5;->a(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/w5$b;Lcom/yandex/mobile/ads/impl/w5$a;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v2, p1, v3}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/b6;->b:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/cj1;->c()Lcom/yandex/mobile/ads/impl/v4;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b6;->f:Lcom/yandex/mobile/ads/impl/w5;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/w5;->a(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/w5$b;Lcom/yandex/mobile/ads/impl/w5$a;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
