.class public final Lcom/yandex/mobile/ads/impl/jy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fj;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/hz0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/hz0;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jy0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jy0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/aj;)Lcom/yandex/mobile/ads/impl/ej;
    .locals 2

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/monetization/ads/mediation/banner/c;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jy0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jy0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-direct {v0, p1, v1, p0}, Lcom/monetization/ads/mediation/banner/c;-><init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V

    return-object v0
.end method
