.class public final Lcom/yandex/mobile/ads/impl/v01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/x8;
.implements Lcom/yandex/mobile/ads/impl/hj1;
.implements Lcom/yandex/mobile/ads/impl/v2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/v01$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/z2;

.field private final b:Lcom/yandex/mobile/ads/impl/cf2;

.field private final c:Lcom/yandex/mobile/ads/impl/nb2;

.field private final d:Lcom/yandex/mobile/ads/impl/u01;

.field private final e:Lcom/yandex/mobile/ads/impl/v01$a;

.field private final f:Lcom/yandex/mobile/ads/impl/fj1;

.field private g:Lcom/yandex/mobile/ads/impl/y8;

.field private h:Lcom/yandex/mobile/ads/impl/u2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/om0;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/gj1;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object/from16 v2, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    const-string v3, "context"

    move-object v5, p1

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "instreamAdPlaylist"

    invoke-static {p2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adBreakStatusController"

    invoke-static {p3, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "instreamAdPlayerController"

    move-object/from16 v6, p4

    invoke-static {v6, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "interfaceElementsManager"

    move-object/from16 v7, p5

    invoke-static {v7, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "instreamAdViewsHolderManager"

    move-object/from16 v10, p6

    invoke-static {v10, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoPlayerController"

    move-object/from16 v11, p7

    invoke-static {v11, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoPlaybackController"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoAdCreativePlaybackProxyListener"

    invoke-static {v8, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "schedulerCreator"

    invoke-static {v9, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/v01;->a:Lcom/yandex/mobile/ads/impl/z2;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/v01;->c:Lcom/yandex/mobile/ads/impl/nb2;

    new-instance v11, Lcom/yandex/mobile/ads/impl/u01;

    move-object v2, v11

    move-object v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/u01;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/lo0;)V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/v01;->d:Lcom/yandex/mobile/ads/impl/u01;

    new-instance v2, Lcom/yandex/mobile/ads/impl/v01$a;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/v01$a;-><init>(Lcom/yandex/mobile/ads/impl/v01;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/v01;->e:Lcom/yandex/mobile/ads/impl/v01$a;

    invoke-virtual {v9, p2, p0}, Lcom/yandex/mobile/ads/impl/gj1;->a(Lcom/yandex/mobile/ads/impl/om0;Lcom/yandex/mobile/ads/impl/hj1;)Lcom/yandex/mobile/ads/impl/fj1;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/v01;->f:Lcom/yandex/mobile/ads/impl/fj1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/v01;)Lcom/yandex/mobile/ads/impl/y8;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->g:Lcom/yandex/mobile/ads/impl/y8;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/v01;)Lcom/yandex/mobile/ads/impl/u2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/v01;)Lcom/yandex/mobile/ads/impl/fj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->f:Lcom/yandex/mobile/ads/impl/fj1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/v01;)Lcom/yandex/mobile/ads/impl/cf2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    return-object p0
.end method

.method public static final e(Lcom/yandex/mobile/ads/impl/v01;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/v2;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->e()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gt;)V
    .locals 2

    .line 3
    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->d:Lcom/yandex/mobile/ads/impl/u01;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/u01;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/u2;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/v2;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u2;->e()V

    .line 8
    :cond_1
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/v2;)V

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u2;->g()V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->c:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/y8;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v01;->g:Lcom/yandex/mobile/ads/impl/y8;

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/gt;)V
    .locals 2

    .line 3
    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->d:Lcom/yandex/mobile/ads/impl/u01;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/u01;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/u2;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/v2;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u2;->e()V

    .line 8
    :cond_1
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/v2;)V

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u2;->d()V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->f:Lcom/yandex/mobile/ads/impl/fj1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fj1;->b()V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->b()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->c()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->f:Lcom/yandex/mobile/ads/impl/fj1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fj1;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->c()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->e()V

    return-void
.end method

.method public final prepare()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->g:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->b()V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->h:Lcom/yandex/mobile/ads/impl/u2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v01;->a:Lcom/yandex/mobile/ads/impl/z2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/z2;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cf2;->c()V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u2;->f()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cf2;->e()V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u2;->d()V

    :goto_0
    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->e()V

    :cond_2
    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v01;->e:Lcom/yandex/mobile/ads/impl/v01$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/cf2;->a(Lcom/yandex/mobile/ads/impl/ef2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v01;->b:Lcom/yandex/mobile/ads/impl/cf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cf2;->e()V

    return-void
.end method
