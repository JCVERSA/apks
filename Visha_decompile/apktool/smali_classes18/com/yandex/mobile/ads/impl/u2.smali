.class public final Lcom/yandex/mobile/ads/impl/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/u2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gt;

.field private final b:Lcom/yandex/mobile/ads/impl/ym0;

.field private final c:Lcom/yandex/mobile/ads/impl/z2;

.field private final d:Lcom/yandex/mobile/ads/impl/h4;

.field private final e:Lcom/yandex/mobile/ads/impl/d3;

.field private f:Lcom/yandex/mobile/ads/impl/v2;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/z2;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdUiElementsManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdViewsHolderManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakStatusController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/u2;->b:Lcom/yandex/mobile/ads/impl/ym0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    new-instance v7, Lcom/yandex/mobile/ads/impl/u2$a;

    invoke-direct {v7, p0}, Lcom/yandex/mobile/ads/impl/u2$a;-><init>(Lcom/yandex/mobile/ads/impl/u2;)V

    new-instance p6, Lcom/yandex/mobile/ads/impl/h4;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/h4;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/j4;)V

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    new-instance p3, Lcom/yandex/mobile/ads/impl/d3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gt;->a()Lcom/yandex/mobile/ads/impl/p2;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/d3;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/p2;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u2;->e:Lcom/yandex/mobile/ads/impl/d3;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/u2;)Lcom/yandex/mobile/ads/impl/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->f:Lcom/yandex/mobile/ads/impl/v2;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/u2;)Lcom/yandex/mobile/ads/impl/z2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/u2;)Lcom/yandex/mobile/ads/impl/d3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->e:Lcom/yandex/mobile/ads/impl/d3;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/u2;)Lcom/yandex/mobile/ads/impl/gt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/u2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/u2;->g:Z

    return p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/u2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/u2;->g:Z

    return-void
.end method

.method public static final g(Lcom/yandex/mobile/ads/impl/u2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/y2;->d:Lcom/yandex/mobile/ads/impl/y2;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->f:Lcom/yandex/mobile/ads/impl/v2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/v2;->d()V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->d()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->h:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->c()V

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/h4;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v2;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u2;->f:Lcom/yandex/mobile/ads/impl/v2;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/u2;->g:Z

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->g()V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/u2;->g:Z

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->g()V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->a()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->g()V

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->a()V

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->h:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->c()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->g()V

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->c:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->e()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->a()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->g()V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->a()V

    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/u2;->g:Z

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->f()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/yandex/mobile/ads/impl/y2;->d:Lcom/yandex/mobile/ads/impl/y2;

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->f:Lcom/yandex/mobile/ads/impl/v2;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/v2;->d()V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->d()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/yandex/mobile/ads/impl/y2;->b:Lcom/yandex/mobile/ads/impl/y2;

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    sget-object v2, Lcom/yandex/mobile/ads/impl/y2;->c:Lcom/yandex/mobile/ads/impl/y2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/y2;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->e()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/z2;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/y2;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/yandex/mobile/ads/impl/y2;->d:Lcom/yandex/mobile/ads/impl/y2;

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u2;->f:Lcom/yandex/mobile/ads/impl/v2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/v2;->d()V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u2;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->d()V

    :cond_1
    return-void
.end method
