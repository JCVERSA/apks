.class public final Lcom/yandex/mobile/ads/impl/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uu;

.field private final b:Lcom/yandex/mobile/ads/impl/kg2;

.field private final c:Lcom/yandex/mobile/ads/impl/re2;

.field private final d:Lcom/yandex/mobile/ads/impl/no0;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/kg2;Lcom/yandex/mobile/ads/impl/re2;)V
    .locals 1

    const-string v0, "creative"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEventUrlsTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dv;->c:Lcom/yandex/mobile/ads/impl/re2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/no0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/vu;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/vu;-><init>()V

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/no0;-><init>(Lcom/yandex/mobile/ads/impl/vu;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dv;->d:Lcom/yandex/mobile/ads/impl/no0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "unmute"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(FJ)V
    .locals 0

    .line 17
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    .line 19
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string p2, "start"

    invoke-virtual {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "friendlyOverlays"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mg2$a;)V
    .locals 1

    .line 11
    const-string v0, "quartile"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 13
    const-string p1, "thirdQuartile"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 14
    :cond_1
    const-string p1, "midpoint"

    goto :goto_0

    .line 15
    :cond_2
    const-string p1, "firstQuartile"

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 0

    .line 10
    const-string p0, "error"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 3
    const-string v0, "assetName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->d:Lcom/yandex/mobile/ads/impl/no0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/no0;->a(Lcom/yandex/mobile/ads/impl/uu;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/he2;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->c:Lcom/yandex/mobile/ads/impl/re2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/he2;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/re2;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "complete"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "resume"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "pause"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "skip"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "creativeView"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "creative"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/zu;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/zu;-><init>(Lcom/yandex/mobile/ads/impl/uu;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    const-string v0, "creativeRenderingStart"

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "mute"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dv;->e:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv;->a:Lcom/yandex/mobile/ads/impl/uu;

    const-string v1, "clickTracking"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method
