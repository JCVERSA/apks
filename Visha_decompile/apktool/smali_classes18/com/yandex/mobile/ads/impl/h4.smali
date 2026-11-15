.class public final Lcom/yandex/mobile/ads/impl/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/h4$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gt;

.field private final b:Lcom/yandex/mobile/ads/impl/ym0;

.field private final c:Lcom/yandex/mobile/ads/impl/j4;

.field private final d:Lcom/yandex/mobile/ads/impl/ao0;

.field private final e:Lcom/yandex/mobile/ads/impl/b4;

.field private final f:Lcom/yandex/mobile/ads/impl/nb2;

.field private final g:Lcom/yandex/mobile/ads/impl/g4;

.field private final h:Lcom/yandex/mobile/ads/impl/f4;

.field private final i:Lcom/yandex/mobile/ads/impl/yk1;

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/j4;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreInstreamAdBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiElementsManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adViewsHolderManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adGroupPlaybackEventsListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h4;->a:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/h4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/h4;->c:Lcom/yandex/mobile/ads/impl/j4;

    sget v0, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->d:Lcom/yandex/mobile/ads/impl/ao0;

    new-instance v5, Lcom/yandex/mobile/ads/impl/yk1;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/yk1;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/h4;->i:Lcom/yandex/mobile/ads/impl/yk1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->f:Lcom/yandex/mobile/ads/impl/nb2;

    new-instance v1, Lcom/yandex/mobile/ads/impl/h4$a;

    invoke-direct {v1, p0, p6}, Lcom/yandex/mobile/ads/impl/h4$a;-><init>(Lcom/yandex/mobile/ads/impl/h4;Lcom/yandex/mobile/ads/impl/j4;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/i4;

    invoke-direct {v8, v0, v1}, Lcom/yandex/mobile/ads/impl/i4;-><init>(Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/kv;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/c4;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/c4;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/i4;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/c4;->a()Lcom/yandex/mobile/ads/impl/b4;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v8, p1}, Lcom/yandex/mobile/ads/impl/i4;->a(Lcom/yandex/mobile/ads/impl/b4;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/g4;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/g4;-><init>(Lcom/yandex/mobile/ads/impl/b4;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h4;->g:Lcom/yandex/mobile/ads/impl/g4;

    new-instance p2, Lcom/yandex/mobile/ads/impl/f4;

    invoke-direct {p2, p1, p4, p6, p0}, Lcom/yandex/mobile/ads/impl/f4;-><init>(Lcom/yandex/mobile/ads/impl/b4;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/j4;Lcom/yandex/mobile/ads/impl/h4;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h4;->h:Lcom/yandex/mobile/ads/impl/f4;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/h4;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    .line 2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->d()Lcom/yandex/mobile/ads/impl/mg2;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/h4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/h4;->a:Lcom/yandex/mobile/ads/impl/gt;

    .line 6
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/h4;->f:Lcom/yandex/mobile/ads/impl/nb2;

    .line 7
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/h4;->i:Lcom/yandex/mobile/ads/impl/yk1;

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/ym0;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 9
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/h4;)Lcom/yandex/mobile/ads/impl/b4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/h4;)Lcom/yandex/mobile/ads/impl/f4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->h:Lcom/yandex/mobile/ads/impl/f4;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/h4;)Lcom/yandex/mobile/ads/impl/g4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->g:Lcom/yandex/mobile/ads/impl/g4;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/h4;)Lcom/yandex/mobile/ads/impl/j4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->c:Lcom/yandex/mobile/ads/impl/j4;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/h4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/h4;->l:Z

    return p0
.end method

.method public static final synthetic g(Lcom/yandex/mobile/ads/impl/h4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/h4;->k:Z

    return p0
.end method

.method public static final synthetic h(Lcom/yandex/mobile/ads/impl/h4;)Lcom/yandex/mobile/ads/impl/ao0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->d:Lcom/yandex/mobile/ads/impl/ao0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/yandex/mobile/ads/impl/h4;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/h4;->j:Z

    return p0
.end method

.method public static final synthetic j(Lcom/yandex/mobile/ads/impl/h4;)Lcom/yandex/mobile/ads/impl/ym0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    return-object p0
.end method

.method public static final synthetic k(Lcom/yandex/mobile/ads/impl/h4;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->l:Z

    return-void
.end method

.method public static final synthetic l(Lcom/yandex/mobile/ads/impl/h4;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->k:Z

    return-void
.end method

.method public static final synthetic m(Lcom/yandex/mobile/ads/impl/h4;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->j:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/do0;->a()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->g:Lcom/yandex/mobile/ads/impl/g4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g4;->a()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->j:Z

    .line 13
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->l:Z

    .line 14
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->k:Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->f:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/h4;->j:Z

    return-void
.end method

.method public final c()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/do0;->b()V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 3
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/h4;->j:Z

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/do0;->c()V

    .line 5
    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->g:Lcom/yandex/mobile/ads/impl/g4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g4;->b()V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/do0;->d()V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 3
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->d()Lcom/yandex/mobile/ads/impl/mg2;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/h4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/h4;->a:Lcom/yandex/mobile/ads/impl/gt;

    .line 6
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/h4;->f:Lcom/yandex/mobile/ads/impl/nb2;

    .line 7
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/h4;->i:Lcom/yandex/mobile/ads/impl/yk1;

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/ym0;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;)V

    goto :goto_0

    .line 9
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/do0;->f()V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    .line 11
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h4;->e:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/do0;->g()V

    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h4;->g:Lcom/yandex/mobile/ads/impl/g4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g4;->c()V

    return-void
.end method
