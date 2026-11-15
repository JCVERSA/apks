.class public final Lcom/yandex/mobile/ads/impl/s51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/y4;

.field private final b:Lcom/yandex/mobile/ads/impl/q51;

.field private final c:Lcom/yandex/mobile/ads/impl/ec1;

.field private final d:Lcom/yandex/mobile/ads/impl/jx0;

.field private final e:Lcom/yandex/mobile/ads/impl/p62;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/q51;Lcom/yandex/mobile/ads/impl/ec1;Lcom/yandex/mobile/ads/impl/jx0;Lcom/yandex/mobile/ads/impl/p62;)V
    .locals 1

    const-string v0, "adInfoReportDataProviderFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventControllerFactory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeViewRendererFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewAdapterFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingManagerFactory"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s51;->a:Lcom/yandex/mobile/ads/impl/y4;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s51;->b:Lcom/yandex/mobile/ads/impl/q51;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s51;->c:Lcom/yandex/mobile/ads/impl/ec1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s51;->d:Lcom/yandex/mobile/ads/impl/jx0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/s51;->e:Lcom/yandex/mobile/ads/impl/p62;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/y4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s51;->a:Lcom/yandex/mobile/ads/impl/y4;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/q51;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s51;->b:Lcom/yandex/mobile/ads/impl/q51;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/jx0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s51;->d:Lcom/yandex/mobile/ads/impl/jx0;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/ec1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s51;->c:Lcom/yandex/mobile/ads/impl/ec1;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/p62;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s51;->e:Lcom/yandex/mobile/ads/impl/p62;

    return-object p0
.end method
