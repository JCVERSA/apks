.class public final Lcom/yandex/mobile/ads/impl/hs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp;)V
    .locals 1

    const-string v0, "closeButtonControllerProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hs;->a:Lcom/yandex/mobile/ads/impl/sp;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/dw;ZZ)Lcom/yandex/mobile/ads/impl/gs;
    .locals 9

    const-string v0, "closeButton"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "debugEventsReporter"

    invoke-static {p3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs;->a:Lcom/yandex/mobile/ads/impl/sp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->u()Ljava/lang/Long;

    move-result-object p0

    if-eqz p4, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/z82;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/z82;-><init>()V

    new-instance p2, Lcom/yandex/mobile/ads/impl/j21;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p1, p0, p3}, Lcom/yandex/mobile/ads/impl/j21;-><init>(Landroid/widget/FrameLayout;Lcom/yandex/mobile/ads/impl/z82;Landroid/os/Handler;)V

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v4, Lcom/yandex/mobile/ads/impl/di2;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/di2;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/aq;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/aq;-><init>()V

    new-instance p2, Lcom/yandex/mobile/ads/impl/lz;

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/lz;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/dw;JLcom/yandex/mobile/ads/impl/aq;)V

    :goto_2
    if-eqz p5, :cond_2

    new-instance p0, Lcom/yandex/mobile/ads/impl/bd0;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/bd0;-><init>(Lcom/yandex/mobile/ads/impl/rp;)V

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/qb0;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/qb0;-><init>(Lcom/yandex/mobile/ads/impl/rp;)V

    :goto_3
    return-object p0
.end method
