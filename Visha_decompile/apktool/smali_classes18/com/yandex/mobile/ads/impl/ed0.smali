.class public final Lcom/yandex/mobile/ads/impl/ed0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ed0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/dd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/dd0;"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->D()Lcom/yandex/mobile/ads/impl/hz0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/my0;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/my0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/is;->c:Lcom/yandex/mobile/ads/impl/is;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->v()Lcom/yandex/mobile/ads/impl/is;

    move-result-object p1

    if-ne v0, p1, :cond_1

    new-instance p1, Lcom/yandex/mobile/ads/impl/lw1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ed0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/lw1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/lv1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ed0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/lv1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method
