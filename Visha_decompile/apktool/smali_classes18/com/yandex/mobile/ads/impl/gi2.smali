.class public final Lcom/yandex/mobile/ads/impl/gi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wc2<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/td2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ua1;Lcom/yandex/mobile/ads/impl/cc1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/f31;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f31;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/f31;->a(Lcom/yandex/mobile/ads/impl/sg2;)Lcom/yandex/mobile/ads/impl/ug2;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/gi2;-><init>(Lcom/yandex/mobile/ads/impl/ua1;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/f31;Lcom/yandex/mobile/ads/impl/td2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ua1;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/f31;Lcom/yandex/mobile/ads/impl/td2;)V
    .locals 1

    .line 4
    const-string v0, "videoAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mrcVideoAdViewValidatorFactory"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoAdVisibilityValidator"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi2;->a:Lcom/yandex/mobile/ads/impl/wc2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gi2;->b:Lcom/yandex/mobile/ads/impl/td2;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gi2;->b:Lcom/yandex/mobile/ads/impl/td2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/td2;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gi2;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/wc2;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gi2;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->resumeAd()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gi2;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/wc2;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gi2;->a:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->pauseAd()V

    :cond_1
    :goto_0
    return-void
.end method
