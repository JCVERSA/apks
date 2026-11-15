.class public final Lcom/yandex/mobile/ads/impl/og2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fb2;

.field private final b:Lcom/yandex/mobile/ads/impl/rz1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/fb2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/rz1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rz1;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/og2;-><init>(Lcom/yandex/mobile/ads/impl/fb2;Lcom/yandex/mobile/ads/impl/rz1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fb2;Lcom/yandex/mobile/ads/impl/rz1;)V
    .locals 1

    .line 3
    const-string v0, "verificationVideoTrackerProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipInfoParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/og2;->a:Lcom/yandex/mobile/ads/impl/fb2;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/og2;->b:Lcom/yandex/mobile/ads/impl/rz1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ad2;)Lcom/yandex/mobile/ads/impl/ng2;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdPosition"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/kg2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/kg2;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/re2;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/re2;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/gr;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/gr;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/dv;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/yandex/mobile/ads/impl/dv;-><init>(Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/kg2;Lcom/yandex/mobile/ads/impl/re2;)V

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/gr;->a(Lcom/yandex/mobile/ads/impl/mg2;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/sd2;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/yandex/mobile/ads/impl/sd2;-><init>(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/kg2;)V

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/gr;->a(Lcom/yandex/mobile/ads/impl/mg2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/og2;->b:Lcom/yandex/mobile/ads/impl/rz1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/rz1;->a(Lcom/yandex/mobile/ads/impl/uu;)Lcom/yandex/mobile/ads/impl/od2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/mb2;->d()Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/og2;->a:Lcom/yandex/mobile/ads/impl/fb2;

    invoke-interface {p0, p1, p3, v0, p2}, Lcom/yandex/mobile/ads/impl/fb2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ad2;Lcom/yandex/mobile/ads/impl/od2;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/nn2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Lcom/yandex/mobile/ads/impl/gr;->a(Lcom/yandex/mobile/ads/impl/mg2;)V

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/ng2;

    invoke-direct {p0, v2}, Lcom/yandex/mobile/ads/impl/ng2;-><init>(Lcom/yandex/mobile/ads/impl/gr;)V

    return-object p0
.end method
