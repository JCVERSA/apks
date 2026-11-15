.class public final Lcom/yandex/mobile/ads/impl/p9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r9;

.field private final b:Lcom/yandex/mobile/ads/impl/p5;

.field private final c:Lcom/yandex/mobile/ads/impl/a5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/a5;)V
    .locals 1

    const-string v0, "adStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackStateController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfoStorage"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p9;->a:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p9;->b:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p9;->c:Lcom/yandex/mobile/ads/impl/a5;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/a5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p9;->c:Lcom/yandex/mobile/ads/impl/a5;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/r9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p9;->a:Lcom/yandex/mobile/ads/impl/r9;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/p5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p9;->b:Lcom/yandex/mobile/ads/impl/p5;

    return-object p0
.end method
