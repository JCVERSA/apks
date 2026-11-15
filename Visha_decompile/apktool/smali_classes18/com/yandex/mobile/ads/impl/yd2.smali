.class public final Lcom/yandex/mobile/ads/impl/yd2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/yd2$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/sk2;

.field private final c:Lcom/yandex/mobile/ads/impl/xd2;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ia2;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v0, "getApplicationContext(...)"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/sk2;

    invoke-direct {v6, v5, p2, p4, p3}, Lcom/yandex/mobile/ads/impl/sk2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/nd2;)V

    .line 3
    new-instance v7, Lcom/yandex/mobile/ads/impl/xd2;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/xd2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/yd2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ia2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sk2;Lcom/yandex/mobile/ads/impl/xd2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ia2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sk2;Lcom/yandex/mobile/ads/impl/xd2;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportParametersProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestConfigurationParametersProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationContext"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "wrapperAdsLoadManager"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdsResponseFactory"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/yd2;->a:Landroid/content/Context;

    .line 8
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/yd2;->b:Lcom/yandex/mobile/ads/impl/sk2;

    .line 9
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/yd2;->c:Lcom/yandex/mobile/ads/impl/xd2;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yd2;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/yd2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/yd2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/yd2;)Lcom/yandex/mobile/ads/impl/xd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2;->c:Lcom/yandex/mobile/ads/impl/xd2;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/yd2;)Lcom/yandex/mobile/ads/impl/sk2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2;->b:Lcom/yandex/mobile/ads/impl/sk2;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    const-string v0, "videoAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yd2;->c:Lcom/yandex/mobile/ads/impl/xd2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xd2;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/wd2;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wd2;->a()Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yd2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wd2;->b()Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/yandex/mobile/ads/impl/yd2$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/yd2$a;-><init>(Lcom/yandex/mobile/ads/impl/yd2;Lcom/yandex/mobile/ads/impl/dq1;)V

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/yd2;->b:Lcom/yandex/mobile/ads/impl/sk2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2;->a:Landroid/content/Context;

    invoke-virtual {p2, p0, p1, v0}, Lcom/yandex/mobile/ads/impl/sk2;->a(Landroid/content/Context;Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V

    return-void
.end method
