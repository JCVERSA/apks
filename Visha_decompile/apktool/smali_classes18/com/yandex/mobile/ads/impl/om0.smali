.class public final Lcom/yandex/mobile/ads/impl/om0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ej1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/gt;

.field private final c:Lcom/yandex/mobile/ads/impl/gt;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/gt;)V
    .locals 1

    const-string v0, "midrollItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/om0;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/om0;->b:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/om0;->c:Lcom/yandex/mobile/ads/impl/gt;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ej1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om0;->a:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/gt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om0;->c:Lcom/yandex/mobile/ads/impl/gt;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/gt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om0;->b:Lcom/yandex/mobile/ads/impl/gt;

    return-object p0
.end method
