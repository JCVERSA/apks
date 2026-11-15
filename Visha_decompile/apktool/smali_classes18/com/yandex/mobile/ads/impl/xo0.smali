.class public final Lcom/yandex/mobile/ads/impl/xo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wc2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/qd2;

.field private final c:Lcom/yandex/mobile/ads/impl/ug2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/qd2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/f31;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f31;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/xo0;-><init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/f31;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/f31;)V
    .locals 1

    .line 3
    const-string v0, "videoAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdStatusController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mrcVideoAdViewValidatorFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xo0;->a:Lcom/yandex/mobile/ads/impl/wc2;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xo0;->b:Lcom/yandex/mobile/ads/impl/qd2;

    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/f31;->a(Lcom/yandex/mobile/ads/impl/sg2;)Lcom/yandex/mobile/ads/impl/ug2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xo0;->c:Lcom/yandex/mobile/ads/impl/ug2;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/xo0;->c:Lcom/yandex/mobile/ads/impl/ug2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ug2;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/xo0;->b:Lcom/yandex/mobile/ads/impl/qd2;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/qd2;->a()Lcom/yandex/mobile/ads/impl/pd2;

    move-result-object p2

    sget-object p3, Lcom/yandex/mobile/ads/impl/pd2;->i:Lcom/yandex/mobile/ads/impl/pd2;

    if-eq p2, p3, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/xo0;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/wc2;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xo0;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->resumeAd()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/xo0;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/wc2;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xo0;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->pauseAd()V

    :cond_1
    :goto_0
    return-void
.end method
