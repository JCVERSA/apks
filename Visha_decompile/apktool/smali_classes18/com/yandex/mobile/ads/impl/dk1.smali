.class public final Lcom/yandex/mobile/ads/impl/dk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j0;

.field private final b:Lcom/yandex/mobile/ads/impl/ak1;

.field private final c:Lcom/yandex/mobile/ads/impl/q1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/j0;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/j0;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/ak1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/ak1;-><init>()V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/q1;

    invoke-direct {v5, p1, p2}, Lcom/yandex/mobile/ads/impl/q1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/dk1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/j0;Lcom/yandex/mobile/ads/impl/ak1;Lcom/yandex/mobile/ads/impl/q1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/j0;Lcom/yandex/mobile/ads/impl/ak1;Lcom/yandex/mobile/ads/impl/q1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/j0;",
            "Lcom/yandex/mobile/ads/impl/ak1;",
            "Lcom/yandex/mobile/ads/impl/q1;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityContextProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "preferredPackageIntentCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adActivityResultLauncher"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dk1;->a:Lcom/yandex/mobile/ads/impl/j0;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dk1;->b:Lcom/yandex/mobile/ads/impl/ak1;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dk1;->c:Lcom/yandex/mobile/ads/impl/q1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zj1;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "preferredPackages"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/p0;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dk1;->a:Lcom/yandex/mobile/ads/impl/j0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    move v1, v2

    :goto_0
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0xa

    if-ge v1, v4, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zj1;

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dk1;->b:Lcom/yandex/mobile/ads/impl/ak1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/ak1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zj1;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zj1;->c()Lcom/yandex/mobile/ads/impl/xy;

    move-result-object v3

    sget-object v4, Lcom/yandex/mobile/ads/impl/xy;->d:Lcom/yandex/mobile/ads/impl/xy;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/dk1;->c:Lcom/yandex/mobile/ads/impl/q1;

    invoke-virtual {v3, p1, v1}, Lcom/yandex/mobile/ads/impl/q1;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/4 p0, 0x1

    return p0

    :catch_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zj1;->d()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    return v2
.end method
