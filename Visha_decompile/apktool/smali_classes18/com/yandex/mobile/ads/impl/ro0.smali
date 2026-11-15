.class public final Lcom/yandex/mobile/ads/impl/ro0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ro0$a;,
        Lcom/yandex/mobile/ads/impl/ro0$b;,
        Lcom/yandex/mobile/ads/impl/ro0$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jm0;

.field private final b:Lcom/yandex/mobile/ads/impl/gf2;

.field private final c:Lcom/yandex/mobile/ads/impl/nb2;

.field private final d:Lcom/yandex/mobile/ads/impl/ro0$c;

.field private final e:Lcom/yandex/mobile/ads/impl/ro0$a;

.field private final f:Lcom/yandex/mobile/ads/impl/ro0$b;

.field private final g:Lcom/yandex/mobile/ads/impl/cf2;

.field private final h:Lcom/yandex/mobile/ads/impl/w8;

.field private i:Lcom/yandex/mobile/ads/impl/u8;

.field private j:Lcom/yandex/mobile/ads/impl/so0;

.field private k:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 10

    .line 1
    new-instance v8, Lcom/yandex/mobile/ads/impl/df2;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/df2;-><init>()V

    .line 2
    new-instance v9, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/ro0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/df2;Lcom/yandex/mobile/ads/impl/nb2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/df2;Lcom/yandex/mobile/ads/impl/nb2;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p9

    .line 4
    const-string v1, "context"

    move-object v2, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sdkEnvironmentModule"

    move-object v3, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamVideoAd"

    move-object v4, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamAdPlayerController"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamAdViewsHolderManager"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoPlayerController"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customUiElementsHolder"

    move-object/from16 v10, p7

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoPlaybackControllerFactory"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdCreativePlaybackProxyListener"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/ro0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    .line 7
    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    .line 8
    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/ro0;->c:Lcom/yandex/mobile/ads/impl/nb2;

    .line 9
    new-instance v1, Lcom/yandex/mobile/ads/impl/ro0$c;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/ro0$c;-><init>(Lcom/yandex/mobile/ads/impl/ro0;)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ro0;->d:Lcom/yandex/mobile/ads/impl/ro0$c;

    .line 10
    new-instance v1, Lcom/yandex/mobile/ads/impl/ro0$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/ro0$a;-><init>(Lcom/yandex/mobile/ads/impl/ro0;)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ro0;->e:Lcom/yandex/mobile/ads/impl/ro0$a;

    .line 11
    new-instance v1, Lcom/yandex/mobile/ads/impl/ro0$b;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/ro0$b;-><init>(Lcom/yandex/mobile/ads/impl/ro0;)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ro0;->f:Lcom/yandex/mobile/ads/impl/ro0$b;

    .line 12
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p0}, Lcom/yandex/mobile/ads/impl/df2;->a(Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/ro0;)Lcom/yandex/mobile/ads/impl/cf2;

    move-result-object v8

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    .line 13
    new-instance v11, Lcom/yandex/mobile/ads/impl/w8;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/w8;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/am0;)V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/ro0;->h:Lcom/yandex/mobile/ads/impl/w8;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ro0;)Lcom/yandex/mobile/ads/impl/so0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ro0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->k:Z

    return p0
.end method

.method public static final c(Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/so0;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gf2;->h()V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jm0;->b()V

    return-void
.end method

.method public static final d(Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->h:Lcom/yandex/mobile/ads/impl/w8;

    .line 2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/w8;->a()Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro0;->e:Lcom/yandex/mobile/ads/impl/ro0$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u8;->a(Lcom/yandex/mobile/ads/impl/y8;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->f()V

    :cond_0
    return-void
.end method

.method public static final e(Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->h:Lcom/yandex/mobile/ads/impl/w8;

    .line 2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/w8;->b()Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro0;->f:Lcom/yandex/mobile/ads/impl/ro0$b;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u8;->a(Lcom/yandex/mobile/ads/impl/y8;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->f()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/so0;->a()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gf2;->h()V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jm0;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->k:Z

    return-void
.end method

.method public static final g(Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->h()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->c:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/so0;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u8;->g()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/so0;->a()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gf2;->h()V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jm0;->b()V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u8;->d()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jm0;->b()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->c()V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gf2;->h()V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/so0;->b()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gf2;->h()V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jm0;->b()V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cf2;->c()V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->h()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->h:Lcom/yandex/mobile/ads/impl/w8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/w8;->c()Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro0;->d:Lcom/yandex/mobile/ads/impl/ro0$c;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u8;->a(Lcom/yandex/mobile/ads/impl/y8;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cf2;->c()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->k:Z

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->f()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->h:Lcom/yandex/mobile/ads/impl/w8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/w8;->a()Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    .line 11
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro0;->e:Lcom/yandex/mobile/ads/impl/ro0$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u8;->a(Lcom/yandex/mobile/ads/impl/y8;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gf2;->a(Lcom/yandex/mobile/ads/impl/cf2;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->d()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->h:Lcom/yandex/mobile/ads/impl/w8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/w8;->c()Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro0;->d:Lcom/yandex/mobile/ads/impl/ro0$c;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u8;->a(Lcom/yandex/mobile/ads/impl/y8;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->k:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->f()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/so0;->onInstreamAdPrepared()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->j:Lcom/yandex/mobile/ads/impl/so0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/so0;->onInstreamAdPrepared()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->g()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro0;->g:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cf2;->f()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ro0;->i:Lcom/yandex/mobile/ads/impl/u8;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u8;->e()V

    :cond_0
    return-void
.end method
