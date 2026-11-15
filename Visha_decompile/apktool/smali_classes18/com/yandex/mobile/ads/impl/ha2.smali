.class public final Lcom/yandex/mobile/ads/impl/ha2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ha2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p2;

.field private final b:Ljava/util/Map;
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
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/ha2$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ha2$a;->a()Lcom/yandex/mobile/ads/impl/p2;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ha2;->a:Lcom/yandex/mobile/ads/impl/p2;

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ha2$a;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ha2;->b:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ha2$a;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ha2;-><init>(Lcom/yandex/mobile/ads/impl/ha2$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/p2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ha2;->a:Lcom/yandex/mobile/ads/impl/p2;

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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ha2;->b:Ljava/util/Map;

    return-object p0
.end method
