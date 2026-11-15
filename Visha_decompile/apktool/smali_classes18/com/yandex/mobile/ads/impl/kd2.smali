.class public final Lcom/yandex/mobile/ads/impl/kd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ch1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bh1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/bh1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/bh1;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/kd2;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bh1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bh1;)V
    .locals 1

    .line 3
    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phasesParametersExtractor"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kd2;->a:Lcom/yandex/mobile/ads/impl/bh1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kd2;->a:Lcom/yandex/mobile/ads/impl/bh1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/f5;->w:Lcom/yandex/mobile/ads/impl/f5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->x:Lcom/yandex/mobile/ads/impl/f5;

    filled-new-array {v0, v1}, [Lcom/yandex/mobile/ads/impl/f5;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/bh1;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
