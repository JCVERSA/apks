.class public final Lcom/yandex/mobile/ads/impl/sk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/ia2;

.field private final c:Lcom/yandex/mobile/ads/impl/nd2;

.field private final d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/nd2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationParametersProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportParametersProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sk2;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sk2;->b:Lcom/yandex/mobile/ads/impl/ia2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sk2;->c:Lcom/yandex/mobile/ads/impl/nd2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sk2;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperAds"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sk2;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/sk2;->e:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/tk2;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/sk2;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/sk2;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/sk2;->c:Lcom/yandex/mobile/ads/impl/nd2;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/sk2;->b:Lcom/yandex/mobile/ads/impl/ia2;

    new-instance v8, Lcom/yandex/mobile/ads/impl/pk2;

    invoke-direct {v8, v4, v5, v7, v6}, Lcom/yandex/mobile/ads/impl/pk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/nd2;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/tk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/pk2;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/tk2;->a(Landroid/content/Context;Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V

    goto :goto_0

    :cond_0
    const-string p0, "description"

    const-string p1, "Maximum count of VAST wrapper requests exceeded."

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/sb2;

    invoke-direct {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/sb2;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    :goto_0
    return-void
.end method
