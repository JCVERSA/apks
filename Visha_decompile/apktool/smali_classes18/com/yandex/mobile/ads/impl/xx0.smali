.class public final Lcom/yandex/mobile/ads/impl/xx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/y4;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/qx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/qx0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xx0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xx0;->b:Lcom/yandex/mobile/ads/impl/qx0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/w1;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ey0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx0;->b:Lcom/yandex/mobile/ads/impl/qx0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/dy0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/dy0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/ey0;-><init>(Lcom/yandex/mobile/ads/impl/qx0;Lcom/yandex/mobile/ads/impl/dy0;)V

    return-object v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/s8;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/by0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx0;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/by0;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    return-object v0
.end method
