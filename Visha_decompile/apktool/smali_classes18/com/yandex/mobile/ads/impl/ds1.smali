.class public final Lcom/yandex/mobile/ads/impl/ds1;
.super Lcom/yandex/mobile/ads/impl/jd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ds1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/jd0<",
        "Lcom/yandex/mobile/ads/impl/bs1;",
        ">;"
    }
.end annotation


# instance fields
.field private final F:Lcom/yandex/mobile/ads/impl/sm1;

.field private final G:Lcom/yandex/mobile/ads/impl/xr1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/cs1;Lcom/yandex/mobile/ads/impl/is1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sm1;Lcom/yandex/mobile/ads/impl/xr1;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsLoadFinishListener"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestData"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlAdResponseReportManager"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentControllerFactory"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adApiControllerFactory"

    move-object/from16 v2, p8

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyRewardedAdLoadListener"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardDataValidator"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v2, p9

    move-object/from16 v4, p10

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/jd0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/kd0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/td0;Lcom/yandex/mobile/ads/impl/sg0;)V

    iput-object v13, v8, Lcom/yandex/mobile/ads/impl/ds1;->F:Lcom/yandex/mobile/ads/impl/sm1;

    iput-object v14, v8, Lcom/yandex/mobile/ads/impl/ds1;->G:Lcom/yandex/mobile/ads/impl/xr1;

    invoke-virtual {v12, v10}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/v7;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ds1$a;

    invoke-direct {v0, v9, p0}, Lcom/yandex/mobile/ads/impl/ds1$a;-><init>(Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/ds1;)V

    invoke-virtual {v13, v0}, Lcom/yandex/mobile/ads/impl/sm1;->a(Lcom/yandex/mobile/ads/impl/d5;)V

    invoke-virtual {v13, v12}, Lcom/yandex/mobile/ads/impl/sm1;->a(Lcom/yandex/mobile/ads/impl/o3;)V

    invoke-virtual {v13, v11}, Lcom/yandex/mobile/ads/impl/sm1;->a(Lcom/yandex/mobile/ads/impl/sg0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/dd0;",
            ")",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/bs1;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "controllerFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/dd0;->b(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/iu;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ds1;->F:Lcom/yandex/mobile/ads/impl/sm1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/sm1;->a(Lcom/yandex/mobile/ads/impl/iu;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->J()Lcom/yandex/mobile/ads/impl/ur1;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ds1;->G:Lcom/yandex/mobile/ads/impl/xr1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ur1;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ur1;->d()Lcom/yandex/mobile/ads/impl/rx1;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ur1;->c()Lcom/yandex/mobile/ads/impl/hp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    :goto_0
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/jd0;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->k()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_1
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ds1;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ds1;->F:Lcom/yandex/mobile/ads/impl/sm1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/sm1;->a(Ljava/lang/String;)V

    return-void
.end method
