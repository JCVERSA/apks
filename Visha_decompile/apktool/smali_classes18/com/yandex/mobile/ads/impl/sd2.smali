.class public final Lcom/yandex/mobile/ads/impl/sd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mb2;

.field private final b:Lcom/yandex/mobile/ads/impl/kg2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/kg2;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sd2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sd2;->b:Lcom/yandex/mobile/ads/impl/kg2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(FJ)V
    .locals 0

    .line 3
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

    .line 4
    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "friendlyOverlays"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mg2$a;)V
    .locals 0

    .line 11
    const-string p0, "quartile"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 2

    .line 6
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xc2;->a()Lcom/yandex/mobile/ads/impl/xc2$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p1, 0x386

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x385

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x193

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x191

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x190

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x384

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x192

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x195

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[ERRORCODE]"

    invoke-static {v1, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sd2;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sd2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    invoke-virtual {v1, p0, v0, p1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 5
    const-string p0, "assetName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

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

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sd2;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sd2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    const-string v1, "render_impression"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sd2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    const-string v1, "videoAd"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/wb2;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/wb2;-><init>(Lcom/yandex/mobile/ads/impl/mb2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sd2;->b:Lcom/yandex/mobile/ads/impl/kg2;

    const-string v0, "renderingStart"

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sd2;->b:Lcom/yandex/mobile/ads/impl/kg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sd2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    const-string v1, "impression"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kg2;->a(Lcom/yandex/mobile/ads/impl/jg2;Ljava/lang/String;)V

    return-void
.end method
