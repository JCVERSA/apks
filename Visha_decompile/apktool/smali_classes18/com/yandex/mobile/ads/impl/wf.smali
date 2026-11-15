.class public final Lcom/yandex/mobile/ads/impl/wf;
.super Lcom/yandex/mobile/ads/impl/jd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/wf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/jd0<",
        "Lcom/yandex/mobile/ads/impl/uf;",
        ">;"
    }
.end annotation


# instance fields
.field private final F:Lcom/yandex/mobile/ads/impl/om1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/vf;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/om1;)V
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "adContentControllerFactory"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyAppOpenAdLoadListener"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v2, p8

    move-object/from16 v4, p9

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/jd0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/kd0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/td0;Lcom/yandex/mobile/ads/impl/sg0;)V

    iput-object v13, v8, Lcom/yandex/mobile/ads/impl/wf;->F:Lcom/yandex/mobile/ads/impl/om1;

    invoke-virtual {v12, v10}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/v7;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/wf$a;

    invoke-direct {v0, v9, p0}, Lcom/yandex/mobile/ads/impl/wf$a;-><init>(Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/wf;)V

    invoke-virtual {v13, v0}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/d5;)V

    invoke-virtual {v13, v11}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/sg0;)V

    invoke-virtual {v13, v12}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/o3;)V

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
            "Lcom/yandex/mobile/ads/impl/uf;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "controllerFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/dd0;->c(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ws;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf;->F:Lcom/yandex/mobile/ads/impl/om1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/om1;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    return-void
.end method
