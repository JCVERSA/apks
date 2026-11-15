.class public final Lcom/yandex/mobile/ads/impl/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/oi2;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/yandex/mobile/ads/impl/u5;

.field private final e:Lcom/yandex/mobile/ads/impl/hf2;

.field private final f:Lcom/yandex/mobile/ads/impl/x60;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/km2;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "getApplicationContext(...)"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/u5;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/u5;-><init>()V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/hf2;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/hf2;-><init>()V

    .line 4
    new-instance v7, Lcom/yandex/mobile/ads/impl/x60;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/x60;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/bb;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/km2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/u5;Lcom/yandex/mobile/ads/impl/hf2;Lcom/yandex/mobile/ads/impl/x60;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/km2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/u5;Lcom/yandex/mobile/ads/impl/hf2;Lcom/yandex/mobile/ads/impl/x60;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vmapRequestConfig"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationContext"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlayerCreator"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoPlayerCreator"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exoPlayerListenerCreator"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bb;->b:Lcom/yandex/mobile/ads/impl/oi2;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bb;->c:Landroid/content/Context;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bb;->d:Lcom/yandex/mobile/ads/impl/u5;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bb;->e:Lcom/yandex/mobile/ads/impl/hf2;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/bb;->f:Lcom/yandex/mobile/ads/impl/x60;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/en0;
    .locals 43

    move-object/from16 v0, p0

    new-instance v5, Lcom/yandex/mobile/ads/impl/ls0;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/bb;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/bb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/bb;->b:Lcom/yandex/mobile/ads/impl/oi2;

    new-instance v4, Lcom/yandex/mobile/ads/impl/fm0;

    invoke-direct {v4, v1, v2}, Lcom/yandex/mobile/ads/impl/fm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ls0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/fm0;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/o9;

    new-instance v2, Lcom/yandex/mobile/ads/impl/q9;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/q9;-><init>(Lcom/yandex/mobile/ads/impl/bj1;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/o5;

    invoke-direct {v4, v3}, Lcom/yandex/mobile/ads/impl/o5;-><init>(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/z4;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/z4;-><init>()V

    invoke-direct {v1, v2, v4, v6}, Lcom/yandex/mobile/ads/impl/o9;-><init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/z4;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/si1;

    new-instance v8, Lcom/yandex/mobile/ads/impl/ui1;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/ui1;-><init>()V

    new-instance v9, Lcom/yandex/mobile/ads/impl/oe2;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v9, v6, v7}, Lcom/yandex/mobile/ads/impl/oe2;-><init>(J)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/a70;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/a70;-><init>()V

    new-instance v11, Lcom/yandex/mobile/ads/impl/yi1;

    invoke-direct {v11, v10}, Lcom/yandex/mobile/ads/impl/yi1;-><init>(Lcom/yandex/mobile/ads/impl/a70;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/ii1;

    invoke-direct {v12, v10}, Lcom/yandex/mobile/ads/impl/ii1;-><init>(Lcom/yandex/mobile/ads/impl/a70;)V

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/si1;-><init>(Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/yi1;Lcom/yandex/mobile/ads/impl/ii1;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->a()Lcom/yandex/mobile/ads/impl/oe2;

    move-result-object v2

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v19

    new-instance v15, Lcom/yandex/mobile/ads/impl/tj1;

    invoke-direct {v15, v3, v3}, Lcom/yandex/mobile/ads/impl/tj1;-><init>(Lcom/yandex/mobile/ads/impl/rj1;Lcom/yandex/mobile/ads/impl/oi1;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/i80;

    invoke-direct {v6, v15, v2}, Lcom/yandex/mobile/ads/impl/i80;-><init>(Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/m9;

    invoke-direct {v7, v6}, Lcom/yandex/mobile/ads/impl/m9;-><init>(Lcom/yandex/mobile/ads/impl/i80;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/y5;

    invoke-direct {v14, v7}, Lcom/yandex/mobile/ads/impl/y5;-><init>(Lcom/yandex/mobile/ads/impl/m9;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/kf2;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/kf2;-><init>()V

    new-instance v12, Lcom/yandex/mobile/ads/impl/pl;

    invoke-direct {v12, v3}, Lcom/yandex/mobile/ads/impl/pl;-><init>(Lcom/yandex/mobile/ads/impl/ll;)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/bb;->f:Lcom/yandex/mobile/ads/impl/x60;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "bindingControllerHolder"

    invoke-static {v12, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adStateDataController"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "playerStateController"

    invoke-static {v4, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "adPlayerEventsController"

    invoke-static {v14, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "videoEventsController"

    invoke-static {v13, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "positionProviderHolder"

    invoke-static {v15, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v8

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v7

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v22

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->a()Lcom/yandex/mobile/ads/impl/oe2;

    move-result-object v6

    move-object/from16 v28, v5

    new-instance v5, Lcom/yandex/mobile/ads/impl/m3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v16

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v17

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v18

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->e()Lcom/yandex/mobile/ads/impl/yi1;

    move-result-object v20

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v21

    new-instance v23, Lcom/yandex/mobile/ads/impl/s5;

    invoke-direct/range {v23 .. v23}, Lcom/yandex/mobile/ads/impl/s5;-><init>()V

    move-object/from16 v29, v3

    move-object v3, v6

    move-object v6, v5

    move-object/from16 v24, v7

    move-object v7, v12

    move-object v0, v8

    move-object v8, v1

    move-object/from16 v30, v9

    move-object v9, v4

    move-object/from16 v31, v10

    move-object v10, v14

    move-object/from16 v32, v11

    move-object/from16 v11, v16

    move-object/from16 v33, v12

    move-object/from16 v12, v17

    move-object/from16 v34, v13

    move-object/from16 v13, v18

    move-object/from16 v35, v2

    move-object v2, v14

    move-object/from16 v14, v20

    move-object/from16 v36, v4

    move-object v4, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v23

    invoke-direct/range {v6 .. v16}, Lcom/yandex/mobile/ads/impl/m3;-><init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/y5;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/yi1;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/s5;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/le2;

    new-instance v11, Lcom/yandex/mobile/ads/impl/je2;

    invoke-direct {v11, v4, v3}, Lcom/yandex/mobile/ads/impl/je2;-><init>(Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;)V

    move-object v6, v12

    move-object/from16 v7, v24

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v10, v34

    invoke-direct/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/le2;-><init>(Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/kf2;Lcom/yandex/mobile/ads/impl/je2;)V

    new-instance v15, Lcom/yandex/mobile/ads/impl/qi1;

    invoke-direct {v15, v0, v5, v12, v2}, Lcom/yandex/mobile/ads/impl/qi1;-><init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/m3;Lcom/yandex/mobile/ads/impl/le2;Lcom/yandex/mobile/ads/impl/y5;)V

    new-instance v23, Lcom/yandex/mobile/ads/impl/fi1;

    new-instance v11, Lcom/yandex/mobile/ads/impl/is0;

    invoke-direct {v11, v4, v3}, Lcom/yandex/mobile/ads/impl/is0;-><init>(Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;)V

    move-object/from16 v6, v23

    move-object v8, v4

    move-object v9, v3

    move-object v10, v15

    invoke-direct/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/fi1;-><init>(Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/qi1;Lcom/yandex/mobile/ads/impl/is0;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/ki1;

    new-instance v6, Lcom/yandex/mobile/ads/impl/db;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/db;-><init>()V

    invoke-direct {v14, v0, v2, v6}, Lcom/yandex/mobile/ads/impl/ki1;-><init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/y5;Lcom/yandex/mobile/ads/impl/db;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/i80;

    invoke-direct {v0, v4, v3}, Lcom/yandex/mobile/ads/impl/i80;-><init>(Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;)V

    new-instance v27, Lcom/yandex/mobile/ads/impl/th1;

    new-instance v13, Lcom/yandex/mobile/ads/impl/l5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v10

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v11

    move-object v6, v13

    move-object v7, v1

    move-object v8, v0

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/l5;-><init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/i80;Lcom/yandex/mobile/ads/impl/le2;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v16

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->a()Lcom/yandex/mobile/ads/impl/z4;

    move-result-object v17

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v11

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v18

    new-instance v10, Lcom/yandex/mobile/ads/impl/dg2;

    invoke-direct {v10, v11, v12}, Lcom/yandex/mobile/ads/impl/dg2;-><init>(Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/le2;)V

    move-object/from16 v6, v27

    move-object/from16 v7, v33

    move-object/from16 v8, v36

    move-object v9, v1

    move-object/from16 v20, v10

    move-object v10, v12

    move-object/from16 v21, v11

    move-object v11, v0

    move-object v12, v5

    move-object v0, v14

    move-object/from16 v14, v16

    move-object v5, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v21

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    invoke-direct/range {v6 .. v18}, Lcom/yandex/mobile/ads/impl/th1;-><init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/le2;Lcom/yandex/mobile/ads/impl/i80;Lcom/yandex/mobile/ads/impl/m3;Lcom/yandex/mobile/ads/impl/l5;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/z4;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/dg2;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/fb;

    move-object/from16 v6, v24

    move-object/from16 v15, v33

    invoke-direct {v10, v15, v6, v3, v4}, Lcom/yandex/mobile/ads/impl/fb;-><init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/tj1;)V

    new-instance v26, Lcom/yandex/mobile/ads/impl/j52;

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v12

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/si1;->a()Lcom/yandex/mobile/ads/impl/oe2;

    move-result-object v13

    new-instance v14, Lcom/yandex/mobile/ads/impl/m82;

    invoke-direct {v14}, Lcom/yandex/mobile/ads/impl/m82;-><init>()V

    move-object/from16 v7, v26

    move-object v8, v6

    move-object/from16 v9, v36

    move-object/from16 v11, v27

    invoke-direct/range {v7 .. v14}, Lcom/yandex/mobile/ads/impl/j52;-><init>(Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/fb;Lcom/yandex/mobile/ads/impl/th1;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/m82;)V

    new-instance v17, Lcom/yandex/mobile/ads/impl/v60;

    move-object/from16 v20, v17

    move-object/from16 v21, v15

    move-object/from16 v24, v5

    move-object/from16 v25, v0

    invoke-direct/range {v20 .. v27}, Lcom/yandex/mobile/ads/impl/v60;-><init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/fi1;Lcom/yandex/mobile/ads/impl/qi1;Lcom/yandex/mobile/ads/impl/ki1;Lcom/yandex/mobile/ads/impl/j52;Lcom/yandex/mobile/ads/impl/th1;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/q5;

    new-instance v0, Lcom/yandex/mobile/ads/impl/b3;

    move-object/from16 v5, v35

    invoke-direct {v0, v5}, Lcom/yandex/mobile/ads/impl/b3;-><init>(Lcom/yandex/mobile/ads/impl/oe2;)V

    invoke-direct {v3, v5, v0}, Lcom/yandex/mobile/ads/impl/q5;-><init>(Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/b3;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/bb;->d:Lcom/yandex/mobile/ads/impl/u5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, v29

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v32

    move-object/from16 v14, v36

    invoke-static {v14, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, v31

    invoke-static {v2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v12

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v6

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/si1;->a()Lcom/yandex/mobile/ads/impl/oe2;

    move-result-object v7

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v8

    new-instance v9, Lcom/yandex/mobile/ads/impl/s6;

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v10

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v11

    invoke-direct {v9, v12, v14, v10, v11}, Lcom/yandex/mobile/ads/impl/s6;-><init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/a70;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/rl1;

    invoke-direct {v11, v9}, Lcom/yandex/mobile/ads/impl/rl1;-><init>(Lcom/yandex/mobile/ads/impl/am1;)V

    invoke-virtual {v8, v11}, Lcom/yandex/mobile/ads/impl/a70;->a(Lcom/yandex/mobile/ads/impl/rl1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/d4;

    new-instance v9, Lcom/yandex/mobile/ads/impl/b3;

    invoke-direct {v9, v7}, Lcom/yandex/mobile/ads/impl/b3;-><init>(Lcom/yandex/mobile/ads/impl/oe2;)V

    invoke-direct {v8, v7, v6, v9}, Lcom/yandex/mobile/ads/impl/d4;-><init>(Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/b3;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/c6;

    new-instance v6, Lcom/yandex/mobile/ads/impl/bo0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/bo0;-><init>()V

    invoke-direct {v10, v1, v8, v6}, Lcom/yandex/mobile/ads/impl/c6;-><init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/d4;Lcom/yandex/mobile/ads/impl/bo0;)V

    new-instance v16, Lcom/yandex/mobile/ads/impl/a6;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v18

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->a()Lcom/yandex/mobile/ads/impl/z4;

    move-result-object v20

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v21

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/si1;->b()Lcom/yandex/mobile/ads/impl/ii1;

    move-result-object v22

    new-instance v9, Lcom/yandex/mobile/ads/impl/x5;

    invoke-direct {v9, v1, v14}, Lcom/yandex/mobile/ads/impl/x5;-><init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/si1;)V

    sget v6, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v23

    move-object/from16 v6, v16

    move-object v7, v1

    move-object v8, v14

    move-object/from16 v24, v9

    move-object v9, v2

    move-object/from16 v25, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v3

    move-object v3, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    move-object/from16 v22, v15

    move-object/from16 v15, v23

    invoke-direct/range {v6 .. v15}, Lcom/yandex/mobile/ads/impl/a6;-><init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/y5;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/z4;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/ii1;Lcom/yandex/mobile/ads/impl/x5;Lcom/yandex/mobile/ads/impl/ao0;)V

    new-instance v40, Lcom/yandex/mobile/ads/impl/i60;

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v14

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/si1;->e()Lcom/yandex/mobile/ads/impl/yi1;

    move-result-object v15

    move-object/from16 v7, v40

    move-object/from16 v8, v20

    move-object/from16 v9, v36

    move-object/from16 v10, v18

    move-object/from16 v11, v25

    move-object/from16 v12, v16

    move-object v13, v2

    invoke-direct/range {v7 .. v15}, Lcom/yandex/mobile/ads/impl/i60;-><init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/rl1;Lcom/yandex/mobile/ads/impl/c6;Lcom/yandex/mobile/ads/impl/a6;Lcom/yandex/mobile/ads/impl/y5;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/yi1;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/bb;->e:Lcom/yandex/mobile/ads/impl/hf2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v36

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v30

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoPlayerEventsController"

    move-object/from16 v6, v34

    invoke-static {v6, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v8

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v3

    new-instance v13, Lcom/yandex/mobile/ads/impl/sf2;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/si1;->a()Lcom/yandex/mobile/ads/impl/oe2;

    move-result-object v11

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v12

    move-object v7, v13

    move-object v9, v5

    move-object v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/sf2;-><init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/ui1;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/rl1;

    invoke-direct {v7, v13}, Lcom/yandex/mobile/ads/impl/rl1;-><init>(Lcom/yandex/mobile/ads/impl/am1;)V

    invoke-virtual {v3, v7}, Lcom/yandex/mobile/ads/impl/a70;->a(Lcom/yandex/mobile/ads/impl/rl1;)V

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/si1;->e()Lcom/yandex/mobile/ads/impl/yi1;

    move-result-object v3

    new-instance v8, Lcom/yandex/mobile/ads/impl/zw1;

    invoke-direct {v8, v7, v3, v6}, Lcom/yandex/mobile/ads/impl/zw1;-><init>(Lcom/yandex/mobile/ads/impl/rl1;Lcom/yandex/mobile/ads/impl/yi1;Lcom/yandex/mobile/ads/impl/kf2;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/nl;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/bb;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/bb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "getApplicationContext(...)"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v37, v3

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    invoke-direct/range {v37 .. v42}, Lcom/yandex/mobile/ads/impl/nl;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/i60;Lcom/yandex/mobile/ads/impl/zw1;Landroid/content/Context;)V

    new-instance v18, Lcom/yandex/mobile/ads/impl/o60;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/bb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v11

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v12

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->a()Lcom/yandex/mobile/ads/impl/z4;

    move-result-object v13

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v14

    new-instance v15, Lcom/yandex/mobile/ads/impl/db;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/db;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v6, v18

    move-object/from16 v7, v22

    move-object v8, v1

    move-object v9, v2

    move-object/from16 v10, v19

    move-object/from16 v16, v0

    invoke-direct/range {v6 .. v16}, Lcom/yandex/mobile/ads/impl/o60;-><init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/y5;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/z4;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/db;Landroid/os/Handler;)V

    new-instance v15, Lcom/yandex/mobile/ads/impl/en0;

    new-instance v10, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->b()Lcom/yandex/mobile/ads/impl/q9;

    move-result-object v11

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object v12

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/si1;->c()Lcom/yandex/mobile/ads/impl/a70;

    move-result-object v13

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/si1;->d()Lcom/yandex/mobile/ads/impl/ui1;

    move-result-object v14

    move-object v0, v15

    move-object/from16 v2, v21

    move-object v8, v4

    move-object v6, v5

    move-object/from16 v4, v22

    move-object/from16 v5, v28

    move-object/from16 v7, v18

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v14}, Lcom/yandex/mobile/ads/impl/en0;-><init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/q5;Lcom/yandex/mobile/ads/impl/nl;Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/ls0;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/o60;Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/v60;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/ui1;)V

    return-object v15
.end method
