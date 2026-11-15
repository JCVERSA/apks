.class public final Lcom/yandex/mobile/ads/impl/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/oi2;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/yandex/mobile/ads/impl/v5;

.field private final e:Lcom/yandex/mobile/ads/impl/if2;

.field private final f:Lcom/yandex/mobile/ads/impl/y60;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/km2;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "getApplicationContext(...)"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/v5;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/v5;-><init>()V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/if2;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/if2;-><init>()V

    .line 4
    new-instance v7, Lcom/yandex/mobile/ads/impl/y60;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/y60;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/cb;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/km2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v5;Lcom/yandex/mobile/ads/impl/if2;Lcom/yandex/mobile/ads/impl/y60;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/km2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v5;Lcom/yandex/mobile/ads/impl/if2;Lcom/yandex/mobile/ads/impl/y60;)V
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
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cb;->b:Lcom/yandex/mobile/ads/impl/oi2;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/cb;->c:Landroid/content/Context;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/cb;->d:Lcom/yandex/mobile/ads/impl/v5;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/cb;->e:Lcom/yandex/mobile/ads/impl/if2;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/cb;->f:Lcom/yandex/mobile/ads/impl/y60;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/dn0;
    .locals 43

    move-object/from16 v0, p0

    new-instance v5, Lcom/yandex/mobile/ads/impl/ks0;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/cb;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/cb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/cb;->b:Lcom/yandex/mobile/ads/impl/oi2;

    new-instance v4, Lcom/yandex/mobile/ads/impl/fm0;

    invoke-direct {v4, v1, v2}, Lcom/yandex/mobile/ads/impl/fm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ks0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/fm0;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/p9;

    new-instance v2, Lcom/yandex/mobile/ads/impl/r9;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/r9;-><init>(Lcom/yandex/mobile/ads/impl/cj1;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/p5;

    invoke-direct {v4, v3}, Lcom/yandex/mobile/ads/impl/p5;-><init>(Lcom/google/android/exoplayer2/source/ads/b;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/a5;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/a5;-><init>()V

    invoke-direct {v1, v2, v4, v6}, Lcom/yandex/mobile/ads/impl/p9;-><init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/a5;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/ti1;

    new-instance v8, Lcom/yandex/mobile/ads/impl/vi1;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/vi1;-><init>()V

    new-instance v9, Lcom/yandex/mobile/ads/impl/pe2;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v9, v6, v7}, Lcom/yandex/mobile/ads/impl/pe2;-><init>(J)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/b70;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/b70;-><init>()V

    new-instance v11, Lcom/yandex/mobile/ads/impl/zi1;

    invoke-direct {v11, v10}, Lcom/yandex/mobile/ads/impl/zi1;-><init>(Lcom/yandex/mobile/ads/impl/b70;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/ji1;

    invoke-direct {v12, v10}, Lcom/yandex/mobile/ads/impl/ji1;-><init>(Lcom/yandex/mobile/ads/impl/b70;)V

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/ti1;-><init>(Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/zi1;Lcom/yandex/mobile/ads/impl/ji1;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->a()Lcom/yandex/mobile/ads/impl/pe2;

    move-result-object v2

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v19

    new-instance v15, Lcom/yandex/mobile/ads/impl/uj1;

    invoke-direct {v15, v3, v3}, Lcom/yandex/mobile/ads/impl/uj1;-><init>(Lcom/yandex/mobile/ads/impl/sj1;Lcom/yandex/mobile/ads/impl/pi1;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/j80;

    invoke-direct {v6, v15, v2}, Lcom/yandex/mobile/ads/impl/j80;-><init>(Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/n9;

    invoke-direct {v7, v6}, Lcom/yandex/mobile/ads/impl/n9;-><init>(Lcom/yandex/mobile/ads/impl/j80;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/z5;

    invoke-direct {v14, v7}, Lcom/yandex/mobile/ads/impl/z5;-><init>(Lcom/yandex/mobile/ads/impl/n9;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/jf2;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/jf2;-><init>()V

    new-instance v12, Lcom/yandex/mobile/ads/impl/ql;

    invoke-direct {v12, v3}, Lcom/yandex/mobile/ads/impl/ql;-><init>(Lcom/yandex/mobile/ads/impl/ml;)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/cb;->f:Lcom/yandex/mobile/ads/impl/y60;

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

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v8

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v7

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v22

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->a()Lcom/yandex/mobile/ads/impl/pe2;

    move-result-object v6

    move-object/from16 v28, v5

    new-instance v5, Lcom/yandex/mobile/ads/impl/n3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v16

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v17

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v18

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->e()Lcom/yandex/mobile/ads/impl/zi1;

    move-result-object v20

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v21

    new-instance v23, Lcom/yandex/mobile/ads/impl/t5;

    invoke-direct/range {v23 .. v23}, Lcom/yandex/mobile/ads/impl/t5;-><init>()V

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

    invoke-direct/range {v6 .. v16}, Lcom/yandex/mobile/ads/impl/n3;-><init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/zi1;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/t5;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/me2;

    new-instance v11, Lcom/yandex/mobile/ads/impl/ke2;

    invoke-direct {v11, v4, v3}, Lcom/yandex/mobile/ads/impl/ke2;-><init>(Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;)V

    move-object v6, v12

    move-object/from16 v7, v24

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v10, v34

    invoke-direct/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/me2;-><init>(Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/jf2;Lcom/yandex/mobile/ads/impl/ke2;)V

    new-instance v15, Lcom/yandex/mobile/ads/impl/ri1;

    invoke-direct {v15, v0, v5, v12, v2}, Lcom/yandex/mobile/ads/impl/ri1;-><init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/n3;Lcom/yandex/mobile/ads/impl/me2;Lcom/yandex/mobile/ads/impl/z5;)V

    new-instance v23, Lcom/yandex/mobile/ads/impl/gi1;

    new-instance v11, Lcom/yandex/mobile/ads/impl/js0;

    invoke-direct {v11, v4, v3}, Lcom/yandex/mobile/ads/impl/js0;-><init>(Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;)V

    move-object/from16 v6, v23

    move-object v8, v4

    move-object v9, v3

    move-object v10, v15

    invoke-direct/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/gi1;-><init>(Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/ri1;Lcom/yandex/mobile/ads/impl/js0;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/li1;

    new-instance v6, Lcom/yandex/mobile/ads/impl/eb;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/eb;-><init>()V

    invoke-direct {v14, v0, v2, v6}, Lcom/yandex/mobile/ads/impl/li1;-><init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/eb;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/j80;

    invoke-direct {v0, v4, v3}, Lcom/yandex/mobile/ads/impl/j80;-><init>(Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;)V

    new-instance v27, Lcom/yandex/mobile/ads/impl/uh1;

    new-instance v13, Lcom/yandex/mobile/ads/impl/m5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v10

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v11

    move-object v6, v13

    move-object v7, v1

    move-object v8, v0

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/m5;-><init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/j80;Lcom/yandex/mobile/ads/impl/me2;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v16

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->a()Lcom/yandex/mobile/ads/impl/a5;

    move-result-object v17

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v11

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v18

    new-instance v10, Lcom/yandex/mobile/ads/impl/eg2;

    invoke-direct {v10, v11, v12}, Lcom/yandex/mobile/ads/impl/eg2;-><init>(Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/me2;)V

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

    invoke-direct/range {v6 .. v18}, Lcom/yandex/mobile/ads/impl/uh1;-><init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/me2;Lcom/yandex/mobile/ads/impl/j80;Lcom/yandex/mobile/ads/impl/n3;Lcom/yandex/mobile/ads/impl/m5;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/a5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/eg2;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/gb;

    move-object/from16 v6, v24

    move-object/from16 v15, v33

    invoke-direct {v10, v15, v6, v3, v4}, Lcom/yandex/mobile/ads/impl/gb;-><init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/uj1;)V

    new-instance v26, Lcom/yandex/mobile/ads/impl/k52;

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v12

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/ti1;->a()Lcom/yandex/mobile/ads/impl/pe2;

    move-result-object v13

    new-instance v14, Lcom/yandex/mobile/ads/impl/n82;

    invoke-direct {v14}, Lcom/yandex/mobile/ads/impl/n82;-><init>()V

    move-object/from16 v7, v26

    move-object v8, v6

    move-object/from16 v9, v36

    move-object/from16 v11, v27

    invoke-direct/range {v7 .. v14}, Lcom/yandex/mobile/ads/impl/k52;-><init>(Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/gb;Lcom/yandex/mobile/ads/impl/uh1;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/n82;)V

    new-instance v17, Lcom/yandex/mobile/ads/impl/w60;

    move-object/from16 v20, v17

    move-object/from16 v21, v15

    move-object/from16 v24, v5

    move-object/from16 v25, v0

    invoke-direct/range {v20 .. v27}, Lcom/yandex/mobile/ads/impl/w60;-><init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/gi1;Lcom/yandex/mobile/ads/impl/ri1;Lcom/yandex/mobile/ads/impl/li1;Lcom/yandex/mobile/ads/impl/k52;Lcom/yandex/mobile/ads/impl/uh1;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/r5;

    new-instance v0, Lcom/yandex/mobile/ads/impl/c3;

    move-object/from16 v5, v35

    invoke-direct {v0, v5}, Lcom/yandex/mobile/ads/impl/c3;-><init>(Lcom/yandex/mobile/ads/impl/pe2;)V

    invoke-direct {v3, v5, v0}, Lcom/yandex/mobile/ads/impl/r5;-><init>(Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/c3;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/cb;->d:Lcom/yandex/mobile/ads/impl/v5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, v29

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v32

    move-object/from16 v14, v36

    invoke-static {v14, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, v31

    invoke-static {v2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v12

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v6

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ti1;->a()Lcom/yandex/mobile/ads/impl/pe2;

    move-result-object v7

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v8

    new-instance v9, Lcom/yandex/mobile/ads/impl/t6;

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v10

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v11

    invoke-direct {v9, v12, v14, v10, v11}, Lcom/yandex/mobile/ads/impl/t6;-><init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/b70;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/sl1;

    invoke-direct {v11, v9}, Lcom/yandex/mobile/ads/impl/sl1;-><init>(Lcom/yandex/mobile/ads/impl/bm1;)V

    invoke-virtual {v8, v11}, Lcom/yandex/mobile/ads/impl/b70;->a(Lcom/yandex/mobile/ads/impl/sl1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/e4;

    new-instance v9, Lcom/yandex/mobile/ads/impl/c3;

    invoke-direct {v9, v7}, Lcom/yandex/mobile/ads/impl/c3;-><init>(Lcom/yandex/mobile/ads/impl/pe2;)V

    invoke-direct {v8, v7, v6, v9}, Lcom/yandex/mobile/ads/impl/e4;-><init>(Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/c3;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/d6;

    new-instance v6, Lcom/yandex/mobile/ads/impl/bo0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/bo0;-><init>()V

    invoke-direct {v10, v1, v8, v6}, Lcom/yandex/mobile/ads/impl/d6;-><init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/e4;Lcom/yandex/mobile/ads/impl/bo0;)V

    new-instance v16, Lcom/yandex/mobile/ads/impl/b6;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v18

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->a()Lcom/yandex/mobile/ads/impl/a5;

    move-result-object v20

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v21

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ti1;->b()Lcom/yandex/mobile/ads/impl/ji1;

    move-result-object v22

    new-instance v9, Lcom/yandex/mobile/ads/impl/w5;

    invoke-direct {v9, v1, v14}, Lcom/yandex/mobile/ads/impl/w5;-><init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;)V

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

    invoke-direct/range {v6 .. v15}, Lcom/yandex/mobile/ads/impl/b6;-><init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/a5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/ji1;Lcom/yandex/mobile/ads/impl/w5;Lcom/yandex/mobile/ads/impl/ao0;)V

    new-instance v40, Lcom/yandex/mobile/ads/impl/j60;

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v14

    invoke-virtual/range {v36 .. v36}, Lcom/yandex/mobile/ads/impl/ti1;->e()Lcom/yandex/mobile/ads/impl/zi1;

    move-result-object v15

    move-object/from16 v7, v40

    move-object/from16 v8, v20

    move-object/from16 v9, v36

    move-object/from16 v10, v18

    move-object/from16 v11, v25

    move-object/from16 v12, v16

    move-object v13, v2

    invoke-direct/range {v7 .. v15}, Lcom/yandex/mobile/ads/impl/j60;-><init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/sl1;Lcom/yandex/mobile/ads/impl/d6;Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/zi1;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/cb;->e:Lcom/yandex/mobile/ads/impl/if2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v36

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v30

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoPlayerEventsController"

    move-object/from16 v6, v34

    invoke-static {v6, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v8

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v3

    new-instance v13, Lcom/yandex/mobile/ads/impl/tf2;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ti1;->a()Lcom/yandex/mobile/ads/impl/pe2;

    move-result-object v11

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v12

    move-object v7, v13

    move-object v9, v5

    move-object v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/tf2;-><init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/vi1;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/sl1;

    invoke-direct {v7, v13}, Lcom/yandex/mobile/ads/impl/sl1;-><init>(Lcom/yandex/mobile/ads/impl/bm1;)V

    invoke-virtual {v3, v7}, Lcom/yandex/mobile/ads/impl/b70;->a(Lcom/yandex/mobile/ads/impl/sl1;)V

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ti1;->e()Lcom/yandex/mobile/ads/impl/zi1;

    move-result-object v3

    new-instance v8, Lcom/yandex/mobile/ads/impl/ax1;

    invoke-direct {v8, v7, v3, v6}, Lcom/yandex/mobile/ads/impl/ax1;-><init>(Lcom/yandex/mobile/ads/impl/sl1;Lcom/yandex/mobile/ads/impl/zi1;Lcom/yandex/mobile/ads/impl/jf2;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/ol;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/cb;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/cb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "getApplicationContext(...)"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v37, v3

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    invoke-direct/range {v37 .. v42}, Lcom/yandex/mobile/ads/impl/ol;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/j60;Lcom/yandex/mobile/ads/impl/ax1;Landroid/content/Context;)V

    new-instance v18, Lcom/yandex/mobile/ads/impl/p60;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/cb;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v11

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v12

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->a()Lcom/yandex/mobile/ads/impl/a5;

    move-result-object v13

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v14

    new-instance v15, Lcom/yandex/mobile/ads/impl/eb;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/eb;-><init>()V

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

    invoke-direct/range {v6 .. v16}, Lcom/yandex/mobile/ads/impl/p60;-><init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/a5;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/eb;Landroid/os/Handler;)V

    new-instance v15, Lcom/yandex/mobile/ads/impl/dn0;

    new-instance v10, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v11

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v12

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ti1;->c()Lcom/yandex/mobile/ads/impl/b70;

    move-result-object v13

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v14

    move-object v0, v15

    move-object/from16 v2, v21

    move-object v8, v4

    move-object v6, v5

    move-object/from16 v4, v22

    move-object/from16 v5, v28

    move-object/from16 v7, v18

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v14}, Lcom/yandex/mobile/ads/impl/dn0;-><init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/r5;Lcom/yandex/mobile/ads/impl/ol;Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/ks0;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/p60;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/w60;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/vi1;)V

    return-object v15
.end method
