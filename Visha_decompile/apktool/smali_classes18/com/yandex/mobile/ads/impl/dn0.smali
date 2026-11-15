.class public final Lcom/yandex/mobile/ads/impl/dn0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/dn0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r5;

.field private final b:Lcom/yandex/mobile/ads/impl/ol;

.field private final c:Lcom/yandex/mobile/ads/impl/ql;

.field private final d:Lcom/yandex/mobile/ads/impl/ks0;

.field private final e:Lcom/yandex/mobile/ads/impl/p60;

.field private final f:Lcom/yandex/mobile/ads/impl/uj1;

.field private final g:Lcom/google/android/exoplayer2/t$d;

.field private final h:Lcom/yandex/mobile/ads/impl/nb2;

.field private final i:Lcom/yandex/mobile/ads/impl/r9;

.field private final j:Lcom/yandex/mobile/ads/impl/p5;

.field private final k:Lcom/yandex/mobile/ads/impl/b70;

.field private final l:Lcom/yandex/mobile/ads/impl/vi1;

.field private m:Lcom/yandex/mobile/ads/impl/et;

.field private n:Lcom/google/android/exoplayer2/t;

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/r5;Lcom/yandex/mobile/ads/impl/ol;Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/ks0;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/p60;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/w60;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/vi1;)V
    .locals 1

    const-string v0, "adStateDataController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlaybackStateCreator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bindingControllerCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bindingControllerHolder"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "loadingController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerStateController"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exoPlayerAdPrepareHandler"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "positionProviderHolder"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerListener"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdCreativePlaybackProxyListener"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStateHolder"

    invoke-static {p11, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlaybackStateController"

    invoke-static {p12, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentExoPlayerProvider"

    invoke-static {p13, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerStateHolder"

    invoke-static {p14, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dn0;->a:Lcom/yandex/mobile/ads/impl/r5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->b:Lcom/yandex/mobile/ads/impl/ol;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dn0;->c:Lcom/yandex/mobile/ads/impl/ql;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dn0;->d:Lcom/yandex/mobile/ads/impl/ks0;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/dn0;->e:Lcom/yandex/mobile/ads/impl/p60;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/dn0;->f:Lcom/yandex/mobile/ads/impl/uj1;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/dn0;->g:Lcom/google/android/exoplayer2/t$d;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/dn0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/dn0;->i:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p12, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p13, p0, Lcom/yandex/mobile/ads/impl/dn0;->k:Lcom/yandex/mobile/ads/impl/b70;

    iput-object p14, p0, Lcom/yandex/mobile/ads/impl/dn0;->l:Lcom/yandex/mobile/ads/impl/vi1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/p5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/dn0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0;->m:Lcom/yandex/mobile/ads/impl/et;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/ol;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->b:Lcom/yandex/mobile/ads/impl/ol;

    return-object p0
.end method

.method public static final b(Lcom/yandex/mobile/ads/impl/dn0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->a:Lcom/yandex/mobile/ads/impl/r5;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->o:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/r5;->a(Lcom/yandex/mobile/ads/impl/et;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/ql;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->c:Lcom/yandex/mobile/ads/impl/ql;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/b70;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->k:Lcom/yandex/mobile/ads/impl/b70;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/et;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->m:Lcom/yandex/mobile/ads/impl/et;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/dn0;)Lcom/yandex/mobile/ads/impl/nb2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/mobile/ads/impl/dn0;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->q:Z

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/mobile/ads/impl/dn0;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->p:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->q:Z

    .line 11
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->p:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->m:Lcom/yandex/mobile/ads/impl/et;

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->f:Lcom/yandex/mobile/ads/impl/uj1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/uj1;->a(Lcom/yandex/mobile/ads/impl/pi1;)V

    .line 14
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->i:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/r9;->a()V

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->i:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/cj1;)V

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->c:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ql;->c()V

    .line 17
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p5;->b()V

    .line 18
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->d:Lcom/yandex/mobile/ads/impl/ks0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ks0;->a()V

    .line 19
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->c:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ql;->a()Lcom/yandex/mobile/ads/impl/ml;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ml;->c()V

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->c:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ql;->a()Lcom/yandex/mobile/ads/impl/ml;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ml;->d()V

    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->e:Lcom/yandex/mobile/ads/impl/p60;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/p60;->a(II)V

    return-void
.end method

.method public final a(IILjava/io/IOException;)V
    .locals 1

    .line 4
    const-string v0, "exception"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->e:Lcom/yandex/mobile/ads/impl/p60;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/p60;->b(IILjava/io/IOException;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->m:Lcom/yandex/mobile/ads/impl/et;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->q:Z

    if-nez p2, :cond_0

    .line 8
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->d:Lcom/yandex/mobile/ads/impl/ks0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/dn0$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/dn0$a;-><init>(Lcom/yandex/mobile/ads/impl/dn0;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/ks0;->a(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ks0$b;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/ads/b;La8;Ljava/lang/Object;)V
    .locals 2

    .line 26
    const-string v0, "eventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->n:Lcom/google/android/exoplayer2/t;

    .line 28
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->k:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/b70;->a(Lcom/google/android/exoplayer2/t;)V

    .line 29
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 30
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->g:Lcom/google/android/exoplayer2/t$d;

    invoke-interface {v0, p3}, Lcom/google/android/exoplayer2/t;->d(Lcom/google/android/exoplayer2/t$d;)V

    .line 31
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/b;)V

    .line 32
    new-instance p1, Lcom/yandex/mobile/ads/impl/pi1;

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->l:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-direct {p1, v0, p3}, Lcom/yandex/mobile/ads/impl/pi1;-><init>(Lcom/google/android/exoplayer2/t;Lcom/yandex/mobile/ads/impl/vi1;)V

    .line 33
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->f:Lcom/yandex/mobile/ads/impl/uj1;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/uj1;->a(Lcom/yandex/mobile/ads/impl/pi1;)V

    .line 34
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/dn0;->p:Z

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->c:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ql;->a()Lcom/yandex/mobile/ads/impl/ml;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ml;->a()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0;->m:Lcom/yandex/mobile/ads/impl/et;

    if-eqz p1, :cond_1

    .line 40
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/dn0;->a:Lcom/yandex/mobile/ads/impl/r5;

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dn0;->o:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/r5;->a(Lcom/yandex/mobile/ads/impl/et;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 42
    invoke-interface {p2}, La8;->getAdViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    .line 43
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p2}, La8;->getAdOverlayInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/dn0;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 47
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    .line 48
    const-string p1, "adOverlayInfo"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/yandex/mobile/ads/impl/xb2;

    .line 50
    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/t;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dn0;->n:Lcom/google/android/exoplayer2/t;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rn2;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->k:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->m:Lcom/yandex/mobile/ads/impl/et;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Lblb;->t0(J)J

    move-result-wide v1

    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->isPlayingAd()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/source/ads/a;->l(J)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v1

    const-string v2, "withAdResumePositionUs(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn0;->g:Lcom/google/android/exoplayer2/t$d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/t;->b(Lcom/google/android/exoplayer2/t$d;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->j:Lcom/yandex/mobile/ads/impl/p5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/b;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->k:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b70;->a(Lcom/google/android/exoplayer2/t;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dn0;->p:Z

    :cond_2
    return-void
.end method
