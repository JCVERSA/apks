.class public final Lcom/yandex/mobile/ads/impl/te1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b9;

.field private final b:Lcom/yandex/mobile/ads/impl/dw0;

.field private final c:Lcom/yandex/mobile/ads/impl/p3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vn2;Lcom/yandex/mobile/ads/impl/dw0;Lcom/yandex/mobile/ads/impl/p3;)V
    .locals 1

    const-string v0, "adSession"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaEvents"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEvents"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/te1;->a:Lcom/yandex/mobile/ads/impl/b9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/te1;->b:Lcom/yandex/mobile/ads/impl/dw0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/te1;->c:Lcom/yandex/mobile/ads/impl/p3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/p3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/te1;->c:Lcom/yandex/mobile/ads/impl/p3;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/b9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/te1;->a:Lcom/yandex/mobile/ads/impl/b9;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/dw0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/te1;->b:Lcom/yandex/mobile/ads/impl/dw0;

    return-object p0
.end method
