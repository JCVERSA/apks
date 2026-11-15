.class public final Lcom/yandex/mobile/ads/impl/kg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/hz0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 1

    const-string v0, "mediationData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kg1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kg1;->b:Lcom/yandex/mobile/ads/impl/hz0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kg1;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kg1;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hz0;->d()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg1;->a:Ljava/lang/String;

    const-string v1, "adf-resp_time"

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/collections/a;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg1;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hz0;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
