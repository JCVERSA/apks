.class public final Lcom/yandex/mobile/ads/impl/ey0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/w1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/dy0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qx0;Lcom/yandex/mobile/ads/impl/dy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/dy0;",
            ")V"
        }
    .end annotation

    const-string v0, "mediatedAdapterInfoReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ey0;->a:Lcom/yandex/mobile/ads/impl/qx0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ey0;->b:Lcom/yandex/mobile/ads/impl/dy0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ey0;->a:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ey0;->a:Lcom/yandex/mobile/ads/impl/qx0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adapter"

    invoke-virtual {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->i()Ljava/util/Map;

    move-result-object v1

    const-string v3, "adapter_parameters"

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ey0;->b:Lcom/yandex/mobile/ads/impl/dy0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/dy0;->a(Lcom/yandex/mobile/ads/impl/tx0;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
