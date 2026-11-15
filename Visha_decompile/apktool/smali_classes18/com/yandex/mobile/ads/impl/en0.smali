.class public final Lcom/yandex/mobile/ads/impl/en0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/en0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q5;

.field private final b:Lcom/yandex/mobile/ads/impl/nl;

.field private final c:Lcom/yandex/mobile/ads/impl/pl;

.field private final d:Lcom/yandex/mobile/ads/impl/ls0;

.field private final e:Lcom/yandex/mobile/ads/impl/o60;

.field private final f:Lcom/yandex/mobile/ads/impl/tj1;

.field private final g:Landroidx/media3/common/Player$Listener;

.field private final h:Lcom/yandex/mobile/ads/impl/nb2;

.field private final i:Lcom/yandex/mobile/ads/impl/q9;

.field private final j:Lcom/yandex/mobile/ads/impl/o5;

.field private final k:Lcom/yandex/mobile/ads/impl/a70;

.field private final l:Lcom/yandex/mobile/ads/impl/ui1;

.field private m:Lcom/yandex/mobile/ads/impl/et;

.field private n:Landroidx/media3/common/Player;

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/q5;Lcom/yandex/mobile/ads/impl/nl;Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/ls0;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/o60;Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/v60;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/ui1;)V
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

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/en0;->a:Lcom/yandex/mobile/ads/impl/q5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->b:Lcom/yandex/mobile/ads/impl/nl;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/en0;->c:Lcom/yandex/mobile/ads/impl/pl;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/en0;->d:Lcom/yandex/mobile/ads/impl/ls0;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/en0;->e:Lcom/yandex/mobile/ads/impl/o60;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/en0;->f:Lcom/yandex/mobile/ads/impl/tj1;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/en0;->g:Landroidx/media3/common/Player$Listener;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/en0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/en0;->i:Lcom/yandex/mobile/ads/impl/q9;

    iput-object p12, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    iput-object p13, p0, Lcom/yandex/mobile/ads/impl/en0;->k:Lcom/yandex/mobile/ads/impl/a70;

    iput-object p14, p0, Lcom/yandex/mobile/ads/impl/en0;->l:Lcom/yandex/mobile/ads/impl/ui1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/en0;)Lcom/yandex/mobile/ads/impl/o5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/en0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/en0;->m:Lcom/yandex/mobile/ads/impl/et;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/en0;)Lcom/yandex/mobile/ads/impl/nl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->b:Lcom/yandex/mobile/ads/impl/nl;

    return-object p0
.end method

.method public static final b(Lcom/yandex/mobile/ads/impl/en0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->a:Lcom/yandex/mobile/ads/impl/q5;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->o:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/q5;->a(Lcom/yandex/mobile/ads/impl/et;Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/en0;)Lcom/yandex/mobile/ads/impl/pl;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->c:Lcom/yandex/mobile/ads/impl/pl;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/en0;)Lcom/yandex/mobile/ads/impl/a70;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->k:Lcom/yandex/mobile/ads/impl/a70;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/en0;)Lcom/yandex/mobile/ads/impl/et;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->m:Lcom/yandex/mobile/ads/impl/et;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/en0;)Lcom/yandex/mobile/ads/impl/nb2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/mobile/ads/impl/en0;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->q:Z

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/mobile/ads/impl/en0;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->p:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->q:Z

    .line 11
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->p:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->m:Lcom/yandex/mobile/ads/impl/et;

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->f:Lcom/yandex/mobile/ads/impl/tj1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/tj1;->a(Lcom/yandex/mobile/ads/impl/oi1;)V

    .line 14
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->i:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/q9;->a()V

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->i:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/bj1;)V

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->c:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pl;->c()V

    .line 17
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o5;->b()V

    .line 18
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->d:Lcom/yandex/mobile/ads/impl/ls0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ls0;->a()V

    .line 19
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->c:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pl;->a()Lcom/yandex/mobile/ads/impl/ll;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ll;->c()V

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->c:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pl;->a()Lcom/yandex/mobile/ads/impl/ll;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ll;->d()V

    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->e:Lcom/yandex/mobile/ads/impl/o60;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/o60;->a(II)V

    return-void
.end method

.method public final a(IILjava/io/IOException;)V
    .locals 1

    .line 4
    const-string v0, "exception"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->e:Lcom/yandex/mobile/ads/impl/o60;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/o60;->b(IILjava/io/IOException;)V

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
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->m:Lcom/yandex/mobile/ads/impl/et;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->q:Z

    if-nez p2, :cond_0

    .line 8
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->d:Lcom/yandex/mobile/ads/impl/ls0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/en0$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/en0$a;-><init>(Lcom/yandex/mobile/ads/impl/en0;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/ls0;->a(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ls0$b;)V

    :cond_1
    return-void
.end method

.method public final a(Landroidx/media3/common/Player;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/en0;->n:Landroidx/media3/common/Player;

    return-void
.end method

.method public final a(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;Landroidx/media3/common/AdViewProvider;Ljava/lang/Object;)V
    .locals 5

    .line 26
    const-string v0, "eventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->n:Landroidx/media3/common/Player;

    .line 28
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->k:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/a70;->a(Landroidx/media3/common/Player;)V

    .line 29
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->o:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 30
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->g:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, p3}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 31
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V

    .line 32
    new-instance p1, Lcom/yandex/mobile/ads/impl/oi1;

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->l:Lcom/yandex/mobile/ads/impl/ui1;

    invoke-direct {p1, v0, p3}, Lcom/yandex/mobile/ads/impl/oi1;-><init>(Landroidx/media3/common/Player;Lcom/yandex/mobile/ads/impl/ui1;)V

    .line 33
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->f:Lcom/yandex/mobile/ads/impl/tj1;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/tj1;->a(Lcom/yandex/mobile/ads/impl/oi1;)V

    .line 34
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/en0;->p:Z

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->c:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pl;->a()Lcom/yandex/mobile/ads/impl/ll;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 38
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ll;->a()V

    goto :goto_2

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/en0;->m:Lcom/yandex/mobile/ads/impl/et;

    if-eqz p1, :cond_1

    .line 40
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/en0;->a:Lcom/yandex/mobile/ads/impl/q5;

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/en0;->o:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/q5;->a(Lcom/yandex/mobile/ads/impl/et;Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_6

    .line 42
    invoke-interface {p2}, Landroidx/media3/common/AdViewProvider;->getAdViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    .line 43
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p2}, Landroidx/media3/common/AdViewProvider;->getAdOverlayInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdOverlayInfo;

    .line 45
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 46
    const-string v1, "adOverlayInfo"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/yandex/mobile/ads/impl/xb2;

    .line 48
    iget-object v2, v0, Landroidx/media3/common/AdOverlayInfo;->view:Landroid/view/View;

    const-string v3, "view"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget v3, v0, Landroidx/media3/common/AdOverlayInfo;->purpose:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 50
    sget-object v3, Lcom/yandex/mobile/ads/impl/xb2$a;->e:Lcom/yandex/mobile/ads/impl/xb2$a;

    goto :goto_1

    .line 51
    :cond_2
    sget-object v3, Lcom/yandex/mobile/ads/impl/xb2$a;->d:Lcom/yandex/mobile/ads/impl/xb2$a;

    goto :goto_1

    .line 52
    :cond_3
    sget-object v3, Lcom/yandex/mobile/ads/impl/xb2$a;->c:Lcom/yandex/mobile/ads/impl/xb2$a;

    goto :goto_1

    .line 53
    :cond_4
    sget-object v3, Lcom/yandex/mobile/ads/impl/xb2$a;->b:Lcom/yandex/mobile/ads/impl/xb2$a;

    .line 54
    :goto_1
    iget-object v0, v0, Landroidx/media3/common/AdOverlayInfo;->reasonDetail:Ljava/lang/String;

    .line 55
    invoke-direct {v1, v2, v3, v0}, Lcom/yandex/mobile/ads/impl/xb2;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/xb2$a;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/en0;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rn2;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/en0;->h:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->k:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->m:Lcom/yandex/mobile/ads/impl/et;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    .line 8
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/AdPlaybackState;->withAdResumePositionUs(J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    const-string v2, "withAdResumePositionUs(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/en0;->g:Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->j:Lcom/yandex/mobile/ads/impl/o5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/en0;->k:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/a70;->a(Landroidx/media3/common/Player;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/en0;->p:Z

    :cond_2
    return-void
.end method
