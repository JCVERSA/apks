.class final Lcom/yandex/mobile/ads/impl/w31;
.super Lcom/yandex/mobile/ads/impl/v31$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/v31$b<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yandex/mobile/ads/impl/v31$c;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v31$c;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w31;->b:Lcom/yandex/mobile/ads/impl/v31$c;

    const/4 p1, 0x2

    iput p1, p0, Lcom/yandex/mobile/ads/impl/w31;->a:I

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v31$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/yandex/mobile/ads/impl/zr0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yandex/mobile/ads/impl/zr0<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w31;->b:Lcom/yandex/mobile/ads/impl/v31$c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/v31$c;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/v31$a;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/w31;->a:I

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/v31$a;-><init>(I)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/x31;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/x31;-><init>(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/t32;)V

    return-object p0
.end method
