.class public final Lcom/yandex/mobile/ads/impl/wq1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/yandex/mobile/ads/impl/ar1;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/yandex/mobile/ads/impl/ar1;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yandex/mobile/ads/impl/ar1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/wq1;->a:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wq1;->b:Lcom/yandex/mobile/ads/impl/ar1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/wq1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ar1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wq1;->b:Lcom/yandex/mobile/ads/impl/ar1;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wq1;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/wq1;->a:I

    return p0
.end method
