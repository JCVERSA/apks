.class public final Lcom/yandex/mobile/ads/impl/ib1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nc2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ib1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sa1;

.field private final b:Lcom/yandex/mobile/ads/impl/ue2;

.field private final c:Lcom/yandex/mobile/ads/impl/qc2;

.field private final d:Lcom/yandex/mobile/ads/impl/v92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/v92<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yandex/mobile/ads/impl/tc2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/ue2;)V
    .locals 12

    .line 1
    new-instance v11, Lcom/yandex/mobile/ads/impl/qc2;

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v7, p7

    invoke-direct {v11, p1, p3, v7}, Lcom/yandex/mobile/ads/impl/qc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/uc2;)V

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/ib1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/qc2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/qc2;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v5, p6

    move-object/from16 v13, p7

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    .line 3
    const-string v4, "context"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adResponse"

    move-object/from16 v12, p2

    invoke-static {v12, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adConfiguration"

    move-object/from16 v7, p3

    invoke-static {v7, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "videoAdPlayer"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "videoAdInfo"

    move-object/from16 v8, p5

    invoke-static {v8, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "videoViewProvider"

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "playbackParametersProvider"

    invoke-static {v13, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "videoTracker"

    move-object/from16 v9, p8

    invoke-static {v9, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "progressEventsObservable"

    move-object/from16 v10, p9

    invoke-static {v10, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "videoImpressionTrackingListener"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "playbackEventsReporter"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ib1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    .line 6
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/ib1;->b:Lcom/yandex/mobile/ads/impl/ue2;

    .line 7
    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/ib1;->c:Lcom/yandex/mobile/ads/impl/qc2;

    .line 8
    new-instance v4, Lcom/yandex/mobile/ads/impl/ua1;

    invoke-direct {v4, v1}, Lcom/yandex/mobile/ads/impl/ua1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    .line 9
    new-instance v11, Lcom/yandex/mobile/ads/impl/ib1$a;

    invoke-direct {v11, v0}, Lcom/yandex/mobile/ads/impl/ib1$a;-><init>(Lcom/yandex/mobile/ads/impl/ib1;)V

    .line 10
    new-instance v14, Lcom/yandex/mobile/ads/impl/pb1;

    invoke-direct {v14, v5}, Lcom/yandex/mobile/ads/impl/pb1;-><init>(Lcom/yandex/mobile/ads/impl/cc1;)V

    .line 11
    new-instance v15, Lcom/yandex/mobile/ads/impl/qd2;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/qd2;-><init>()V

    .line 12
    new-instance v3, Lcom/yandex/mobile/ads/impl/v92;

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v6, v3

    move-object/from16 v3, p3

    move-object v7, v6

    move-object/from16 v6, p5

    move-object v8, v7

    move-object v7, v14

    move-object v14, v8

    move-object v8, v15

    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/v92;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/pc2;Lcom/yandex/mobile/ads/impl/o8;)V

    iput-object v14, v0, Lcom/yandex/mobile/ads/impl/ib1;->d:Lcom/yandex/mobile/ads/impl/v92;

    .line 13
    invoke-virtual {v14, v13}, Lcom/yandex/mobile/ads/impl/v92;->a(Lcom/yandex/mobile/ads/impl/ld2$b;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ib1;)Lcom/yandex/mobile/ads/impl/qc2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->c:Lcom/yandex/mobile/ads/impl/qc2;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ib1;)Lcom/yandex/mobile/ads/impl/tc2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->e:Lcom/yandex/mobile/ads/impl/tc2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/ib1;)Lcom/yandex/mobile/ads/impl/v92;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->d:Lcom/yandex/mobile/ads/impl/v92;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/ib1;)Lcom/yandex/mobile/ads/impl/sa1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/ib1;)Lcom/yandex/mobile/ads/impl/ue2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->b:Lcom/yandex/mobile/ads/impl/ue2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/tc2;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ib1;->e:Lcom/yandex/mobile/ads/impl/tc2;

    return-void
.end method

.method public final play()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->d:Lcom/yandex/mobile/ads/impl/v92;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v92;->d()V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ib1;->d:Lcom/yandex/mobile/ads/impl/v92;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/v92;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ib1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->a()V

    return-void
.end method
