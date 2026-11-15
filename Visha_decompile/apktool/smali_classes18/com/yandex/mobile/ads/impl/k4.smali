.class public final Lcom/yandex/mobile/ads/impl/k4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/do0;

.field private final c:Lcom/yandex/mobile/ads/impl/sj0;

.field private final d:Lcom/yandex/mobile/ads/impl/qd2;

.field private final e:Lcom/yandex/mobile/ads/impl/mg2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/do0;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;)V
    .locals 1

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k4;->a:Lcom/yandex/mobile/ads/impl/zb2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/k4;->b:Lcom/yandex/mobile/ads/impl/do0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/k4;->c:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/k4;->d:Lcom/yandex/mobile/ads/impl/qd2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/k4;->e:Lcom/yandex/mobile/ads/impl/mg2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/do0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k4;->b:Lcom/yandex/mobile/ads/impl/do0;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/qd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k4;->d:Lcom/yandex/mobile/ads/impl/qd2;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/zb2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k4;->a:Lcom/yandex/mobile/ads/impl/zb2;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/mg2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k4;->e:Lcom/yandex/mobile/ads/impl/mg2;

    return-object p0
.end method
