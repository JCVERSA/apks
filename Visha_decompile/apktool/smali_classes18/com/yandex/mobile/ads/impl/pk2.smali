.class public final Lcom/yandex/mobile/ads/impl/pk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/ia2;

.field private final c:Lcom/yandex/mobile/ads/impl/nd2;

.field private final d:Lcom/yandex/mobile/ads/impl/ec2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/nd2;)V
    .locals 7

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ec2;->d:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ec2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ec2;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/pk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ec2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ec2;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestConfigurationParametersProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportParametersProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdLoadNetwork"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pk2;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pk2;->b:Lcom/yandex/mobile/ads/impl/ia2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pk2;->c:Lcom/yandex/mobile/ads/impl/nd2;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pk2;->d:Lcom/yandex/mobile/ads/impl/ec2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/qk2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/rk2;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/rk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/mb2;)V

    invoke-direct {v7, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/qk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/dq1;Lcom/yandex/mobile/ads/impl/rk2;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pk2;->d:Lcom/yandex/mobile/ads/impl/ec2;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pk2;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pk2;->b:Lcom/yandex/mobile/ads/impl/ia2;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pk2;->c:Lcom/yandex/mobile/ads/impl/nd2;

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/ec2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/qk2;)V

    return-void
.end method
