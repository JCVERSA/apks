.class public final Lcom/yandex/mobile/ads/impl/wj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xj;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/vh0;->e0:Lcom/yandex/mobile/ads/impl/vh0;

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Z)Z

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/vh0;->f0:Lcom/yandex/mobile/ads/impl/vh0;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Z)Z

    move-result v0

    .line 5
    sget-object v2, Lcom/yandex/mobile/ads/impl/vh0;->g0:Lcom/yandex/mobile/ads/impl/vh0;

    .line 6
    invoke-static {p1, v2, v1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Z)Z

    move-result v1

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/wj;-><init>(Ljava/util/Map;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZZ)V
    .locals 1

    .line 8
    const-string v0, "headers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/wj;->a:Z

    .line 11
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/wj;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/wj;->b:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/wj;->a:Z

    return p0
.end method
