.class public Lcom/doman/core/ig/manager/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/doman/core/ig/manager/c;


# instance fields
.field a:Lcom/doman/core/a/i;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/doman/core/d/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/doman/core/ig/manager/c;->c:I

    const-string v0, "WbS_MTMG"

    iput-object v0, p0, Lcom/doman/core/ig/manager/c;->d:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/manager/c;->e:Lcom/doman/core/d/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/doman/core/d/a/a;

    invoke-direct {v0}, Lcom/doman/core/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/doman/core/ig/manager/c;->e:Lcom/doman/core/d/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/doman/core/ig/manager/c;->a:Lcom/doman/core/a/i;

    return-object p0
.end method

.method public static a()Lcom/doman/core/ig/manager/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/doman/core/ig/manager/c;->b:Lcom/doman/core/ig/manager/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/doman/core/ig/manager/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doman/core/ig/manager/c;->b:Lcom/doman/core/ig/manager/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/doman/core/ig/manager/c;

    invoke-direct {v1}, Lcom/doman/core/ig/manager/c;-><init>()V

    sput-object v1, Lcom/doman/core/ig/manager/c;->b:Lcom/doman/core/ig/manager/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/doman/core/ig/manager/c;->b:Lcom/doman/core/ig/manager/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Lcom/doman/core/c/c;)V
    .locals 8

    .line 4
    :try_start_0
    iget v0, p1, Lcom/doman/core/a/a;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4059400000000000L    # 101.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iget-wide v2, p1, Lcom/doman/core/a/a;->g:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p1, Lcom/doman/core/a/a;->J:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    iget-boolean v0, p1, Lcom/doman/core/a/g;->Z:Z

    if-nez v0, :cond_1

    iput-boolean v1, p2, Lcom/doman/core/c/c;->h:Z

    :cond_1
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/CoreMain;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v7

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getResumeActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object p0, Lcom/doman/core/webview/c;->aq:Ljava/lang/String;

    const-string p1, "player page is null"

    invoke-static {p0, p1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/doman/core/webview/c;->aq:Ljava/lang/String;

    const-string p1, "player page is finished"

    invoke-static {p0, p1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v7, :cond_4

    sget-object p0, Lcom/doman/core/webview/c;->aq:Ljava/lang/String;

    const-string p1, "app is not on"

    invoke-static {p0, p1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v6, p1, Lcom/doman/core/a/a;->x:Ljava/lang/String;

    const-string v0, "2"

    iget-object v2, p1, Lcom/doman/core/a/g;->aa:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/doman/core/a/a;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_6
    iget-boolean v0, p1, Lcom/doman/core/a/g;->Z:Z

    if-nez v0, :cond_7

    iput-boolean v1, p2, Lcom/doman/core/c/c;->h:Z

    :cond_7
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Lcom/doman/core/c/b;

    new-instance v0, Lcom/doman/core/ig/manager/c$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/doman/core/ig/manager/c$3;-><init>(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Landroid/app/Activity;Ljava/lang/String;Z)V

    const-string p0, "req_id"

    const-string/jumbo v1, "task_id"

    invoke-direct {p2, p1, v0, p0, v1}, Lcom/doman/core/c/b;-><init>(Lcom/doman/core/a/g;Lcom/doman/core/c/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-wide p0, p2, Lcom/doman/core/c/b;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    :goto_0
    :try_start_4
    iget-object p0, p2, Lcom/doman/core/c/b;->a:[Ljava/lang/String;

    if-eqz p0, :cond_c

    array-length p1, p0

    if-nez p1, :cond_9

    goto/16 :goto_4

    :cond_9
    array-length p0, p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_c

    :try_start_5
    iget-object v0, p2, Lcom/doman/core/c/b;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string v1, "WebService_MqttTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "screen_width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/doman/core/c/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "screen_height= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/doman/core/c/b;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "material_width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/doman/core/c/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "material_height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/doman/core/c/b;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget v3, p2, Lcom/doman/core/c/b;->f:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p2, Lcom/doman/core/c/b;->g:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget v5, p2, Lcom/doman/core/c/b;->d:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p2, Lcom/doman/core/c/b;->e:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    const-string v5, "[CS_D_X]"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CS_D_Y]"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CS_A_X]"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CS_A_Y]"

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CE_D_X]"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "[CE_D_Y]"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CE_A_X]"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CE_A_Y]"

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    :goto_2
    const-string v1, ""

    :goto_3
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v2

    iget-object v3, p2, Lcom/doman/core/c/b;->k:Ljava/lang/String;

    iget-object v4, p2, Lcom/doman/core/c/b;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/doman/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/doman/core/webview/c;->k:Ljava/lang/String;

    iget-object v2, p2, Lcom/doman/core/c/b;->h:Lcom/doman/core/a/a;

    iget-object v2, v2, Lcom/doman/core/a/a;->r:Ljava/lang/String;

    iget-object v3, p2, Lcom/doman/core/c/b;->i:Ljava/lang/String;

    iget-object v4, p2, Lcom/doman/core/c/b;->j:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_4
    :try_start_6
    iget-object p0, p2, Lcom/doman/core/c/b;->c:Lcom/doman/core/c/a;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/doman/core/c/a;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_d
    :goto_5
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;II)V
    .locals 32

    .line 5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v0, p5

    move/from16 v3, p6

    :try_start_0
    iget v4, v2, Lcom/doman/core/a/a;->n:I

    int-to-long v6, v4

    const-wide/16 v8, 0x2

    div-long v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v5, :cond_13

    iget v4, v2, Lcom/doman/core/a/g;->T:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_12

    iget-wide v11, v2, Lcom/doman/core/a/g;->U:D

    int-to-double v13, v0

    mul-double/2addr v11, v13

    double-to-float v0, v11

    iget-wide v11, v2, Lcom/doman/core/a/g;->V:D

    int-to-double v3, v3

    mul-double/2addr v11, v3

    double-to-float v11, v11

    iget-wide v8, v2, Lcom/doman/core/a/g;->W:D

    mul-double/2addr v8, v13

    double-to-float v8, v8

    iget-wide v12, v2, Lcom/doman/core/a/g;->X:D

    mul-double/2addr v12, v3

    double-to-float v3, v12

    iget v4, v1, Lcom/doman/core/ig/manager/c;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    sub-float v9, v8, v0

    const/high16 v12, 0x42e80000    # 116.0f

    div-float/2addr v9, v12

    sub-float v13, v3, v11

    div-float v25, v13, v12

    const/4 v13, 0x0

    cmpg-float v14, v9, v13

    const/16 v26, 0x0

    if-ltz v14, :cond_2

    cmpg-float v13, v25, v13

    if-gez v13, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v27, v26

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v27, v10

    :goto_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v10, v26

    :goto_2
    iget v13, v1, Lcom/doman/core/ig/manager/c;->c:I

    if-ne v4, v13, :cond_5

    if-eqz v27, :cond_4

    const/16 v12, -0x14

    goto :goto_3

    :cond_4
    const/16 v12, 0x14

    :goto_3
    const/high16 v13, 0x41200000    # 10.0f

    move/from16 v28, v13

    goto :goto_4

    :cond_5
    move/from16 v28, v12

    move/from16 v12, v26

    :goto_4
    const/16 v19, 0x0

    const/16 v22, 0x0

    move-wide/from16 v15, v23

    move-wide/from16 v17, v23

    move/from16 v20, v0

    move/from16 v21, v11

    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v20, v6

    move-object/from16 p5, v14

    move-object/from16 p6, v15

    move-wide/from16 v14, v23

    move/from16 v13, v26

    move/from16 v16, v13

    :goto_5
    int-to-float v6, v13

    cmpg-float v6, v6, v28

    if-gez v6, :cond_f

    int-to-float v6, v12

    add-float v7, v9, v6

    add-float/2addr v0, v7

    add-float v6, v25, v6

    add-float/2addr v11, v6

    if-eqz v27, :cond_6

    cmpg-float v6, v0, v8

    if-ltz v6, :cond_7

    :cond_6
    if-nez v27, :cond_8

    cmpl-float v6, v0, v8

    if-lez v6, :cond_8

    :cond_7
    xor-int/lit8 v16, v10, 0x1

    move v0, v8

    :cond_8
    if-eqz v27, :cond_9

    cmpg-float v6, v11, v3

    if-ltz v6, :cond_a

    :cond_9
    if-nez v27, :cond_b

    cmpl-float v6, v11, v3

    if-lez v6, :cond_b

    :cond_a
    move v11, v3

    move v6, v10

    goto :goto_6

    :cond_b
    move/from16 v6, v16

    :goto_6
    long-to-float v7, v14

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v7, v14

    float-to-long v14, v7

    const/16 v16, 0x2

    const/16 v19, 0x0

    move/from16 v22, v12

    move v7, v13

    move-wide/from16 v12, v23

    move-object/from16 v31, p5

    move/from16 p5, v3

    move-wide/from16 v29, v14

    move-object/from16 v3, p6

    move/from16 v17, v0

    move/from16 v18, v11

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v12}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget v12, v1, Lcom/doman/core/ig/manager/c;->c:I

    if-ne v4, v12, :cond_d

    if-eqz v27, :cond_c

    const/16 v12, -0x46

    goto :goto_7

    :cond_c
    const/16 v12, 0x46

    :goto_7
    add-int v12, v22, v12

    goto :goto_8

    :cond_d
    move/from16 v12, v22

    :goto_8
    if-nez v6, :cond_e

    add-int/lit8 v13, v7, 0x1

    move-object/from16 p6, v3

    move/from16 v16, v6

    move-wide/from16 v14, v29

    move/from16 v3, p5

    move-object/from16 p5, v31

    goto :goto_5

    :cond_e
    move/from16 v17, v0

    move/from16 v18, v11

    move-wide/from16 v14, v29

    goto :goto_9

    :cond_f
    move-object/from16 v31, p5

    move-object/from16 v3, p6

    move/from16 v17, v0

    move/from16 v18, v11

    :goto_9
    const/16 v16, 0x1

    const/16 v19, 0x0

    move-wide/from16 v12, v23

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v4, v26

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_10

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_11
    const-wide/16 v3, 0x2

    goto :goto_c

    :cond_12
    move-wide/from16 v20, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_11

    iget-wide v6, v2, Lcom/doman/core/a/g;->U:D

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    iget-wide v6, v2, Lcom/doman/core/a/g;->V:D

    int-to-double v3, v3

    mul-double/2addr v6, v3

    double-to-float v3, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-wide v8, v6

    move-wide v10, v6

    move v13, v0

    move v14, v3

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-wide/16 v8, 0x5a

    add-long v10, v6, v8

    const/4 v12, 0x1

    const/4 v15, 0x0

    move-wide v8, v6

    move v13, v0

    move v14, v3

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_b

    :cond_13
    move-wide/from16 v20, v6

    move-wide v3, v8

    :goto_c
    div-long v6, v20, v3

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    sget-object v6, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v7, Lcom/doman/core/ig/manager/c$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/doman/core/ig/manager/c$4;-><init>(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Lcom/doman/core/webview/WsWebView;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/h;)V
    .locals 22

    .line 6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_16

    iget-object v1, v1, Lcom/doman/core/a/h;->Q:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_16

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/doman/core/a/g;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x407f400000000000L    # 500.0

    mul-double/2addr v6, v8

    double-to-long v8, v6

    new-instance v12, Lcom/doman/core/c/c;

    iget-object v10, v5, Lcom/doman/core/a/g;->Q:Ljava/lang/String;

    iget-object v11, v5, Lcom/doman/core/a/g;->R:Ljava/lang/String;

    move-object v6, v12

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lcom/doman/core/c/c;-><init>(Lcom/doman/core/a/g;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/doman/core/ig/manager/c;->e:Lcom/doman/core/d/a/a;

    :try_start_0
    iput-object v6, v12, Lcom/doman/core/c/c;->i:Lcom/doman/core/d/a/a;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v12}, Lcom/doman/core/d/a/a;->a(Lcom/doman/core/d/a/a$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v6, Lcom/doman/core/ig/manager/c$2;

    invoke-direct {v6, v0, v5, v12}, Lcom/doman/core/ig/manager/c$2;-><init>(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Lcom/doman/core/c/c;)V

    invoke-static {v6}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V

    :try_start_1
    iget-object v5, v12, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iget-object v5, v5, Lcom/doman/core/a/a;->w:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v12, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, v12, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    iget-object v7, v12, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/doman/core/a/e;

    iget v8, v7, Lcom/doman/core/a/e;->a:I

    iget-object v7, v7, Lcom/doman/core/a/e;->b:Ljava/lang/String;

    if-nez v8, :cond_2

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v8

    invoke-virtual {v8}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v8

    iget-object v9, v12, Lcom/doman/core/c/c;->f:Ljava/lang/String;

    iget-object v10, v12, Lcom/doman/core/c/c;->g:Ljava/lang/String;

    invoke-virtual {v8, v7, v9, v10}, Lcom/doman/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/doman/core/webview/c;->j:Ljava/lang/String;

    iget-object v9, v12, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iget-object v9, v9, Lcom/doman/core/a/a;->r:Ljava/lang/String;

    iget-object v10, v12, Lcom/doman/core/c/c;->c:Ljava/lang/String;

    iget-object v11, v12, Lcom/doman/core/c/c;->d:Ljava/lang/String;

    invoke-static {v8, v9, v10, v7, v11}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v5, v12, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    if-eqz v5, :cond_4

    iget v5, v5, Lcom/doman/core/a/a;->E:I

    if-lez v5, :cond_4

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :catch_1
    :cond_4
    :goto_3
    move-object/from16 v16, v1

    goto/16 :goto_7

    :cond_5
    iget-object v5, v12, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iget-object v5, v5, Lcom/doman/core/a/a;->w:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_4

    :try_start_2
    iget-object v5, v12, Lcom/doman/core/c/c;->i:Lcom/doman/core/d/a/a;

    if-eqz v5, :cond_6

    iget-object v5, v12, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    if-eqz v5, :cond_6

    iget v5, v5, Lcom/doman/core/a/a;->F:I

    if-lez v5, :cond_6

    iget-object v5, v12, Lcom/doman/core/c/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v12, Lcom/doman/core/c/c;->i:Lcom/doman/core/d/a/a;

    invoke-virtual {v5}, Lcom/doman/core/d/a/a;->a()Lcom/doman/core/d/a/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_6
    :try_start_3
    iget-object v5, v12, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v5, v12, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v12, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iget v6, v6, Lcom/doman/core/a/a;->E:I

    mul-int/lit16 v6, v6, 0x3e8

    const/4 v7, 0x4

    div-int/2addr v6, v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v5, :cond_f

    iget-object v7, v12, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/doman/core/a/e;

    iget v3, v7, Lcom/doman/core/a/e;->a:I

    if-nez v3, :cond_8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    if-ne v3, v0, :cond_9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const/4 v0, 0x3

    if-ne v3, v0, :cond_b

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    const/4 v0, 0x4

    if-ne v3, v0, :cond_c

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const/16 v0, 0xc9

    if-ne v3, v0, :cond_d

    iget-object v0, v12, Lcom/doman/core/c/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/16 v0, 0x12d

    if-ne v3, v0, :cond_e

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x4

    move-object/from16 v0, p0

    goto :goto_4

    :cond_f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v3, Lcom/doman/core/c/c$2;

    invoke-direct {v3, v12, v0, v14}, Lcom/doman/core/c/c$2;-><init>(Lcom/doman/core/c/c;ILjava/util/ArrayList;)V

    invoke-static {v3}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V

    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v0, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v16, v1

    :try_start_4
    const-string v1, "000000ImpressionTask trackingRequestWaitthread currentThread"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v12, v8, v0, v15, v1}, Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V

    goto :goto_6

    :cond_11
    move-object/from16 v16, v1

    const/4 v15, 0x0

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object/from16 p1, v13

    move v8, v14

    int-to-long v13, v6

    invoke-static {v13, v14}, Lcom/doman/core/c/c;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v0

    const-wide/16 v0, 0x7d0

    add-long/2addr v0, v13

    cmp-long v6, v17, v0

    if-gtz v6, :cond_15

    if-lez v3, :cond_12

    iget-boolean v6, v12, Lcom/doman/core/c/c;->h:Z

    if-nez v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "111111ImpressionTask trackingRequestWaitthread currentThread"

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x1

    invoke-virtual {v12, v9, v3, v15, v6}, Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {v13, v14}, Lcom/doman/core/c/c;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v18

    cmp-long v3, v20, v0

    if-gtz v3, :cond_15

    if-lez v5, :cond_13

    iget-boolean v3, v12, Lcom/doman/core/c/c;->h:Z

    if-nez v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "2222222ImpressionTask trackingRequestWaitthread currentThread"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v12, v10, v5, v6, v3}, Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v13, v14}, Lcom/doman/core/c/c;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    cmp-long v3, v9, v0

    if-gtz v3, :cond_15

    if-lez v7, :cond_14

    iget-boolean v3, v12, Lcom/doman/core/c/c;->h:Z

    if-nez v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "33333333ImpressionTask trackingRequestWait thread currentThread"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v12, v11, v7, v5, v3}, Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v13, v14}, Lcom/doman/core/c/c;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    cmp-long v0, v9, v0

    if-gtz v0, :cond_15

    if-lez v8, :cond_15

    iget-boolean v0, v12, Lcom/doman/core/c/c;->h:Z

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4444444444444ImpressionTask trackingRequestWaitthread currentThread"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p1

    const/4 v1, 0x4

    invoke-virtual {v12, v3, v8, v1, v0}, Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_15
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/webview/WsWebView;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/doman/core/ig/manager/c;->d:Ljava/lang/String;

    const-string v1, "distoryWebView distoryWebView 1"

    invoke-static {v0, v1}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/manager/c;->d:Ljava/lang/String;

    const-string p1, "distoryWebView distoryWebView 2"

    invoke-static {p0, p1}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/webview/WsWebView;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/doman/core/webview/WsWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/doman/core/a/i;)Z
    .locals 5

    .line 9
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/doman/core/ig/manager/b;->a()Lcom/doman/core/ig/manager/b;

    invoke-static {}, Lcom/doman/core/ig/manager/b;->b()Z

    move-result v1

    iget v2, p0, Lcom/doman/core/a/i;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/doman/core/d/m;->a()Z

    move-result v1

    iget p0, p0, Lcom/doman/core/a/i;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v3, :cond_3

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-ne p0, v4, :cond_4

    if-eqz v1, :cond_4

    return v0

    :cond_4
    return v3

    :catchall_0
    return v0
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/doman/core/a/i;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/doman/core/a/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/doman/core/ig/manager/b;->a()Lcom/doman/core/ig/manager/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/doman/core/ig/manager/b;->a(Lcom/doman/core/a/i;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/h;)V
    .locals 4

    .line 2
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/doman/core/a/h;->R:Lcom/doman/core/a/b;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/doman/core/a/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/manager/c;->a:Lcom/doman/core/a/i;

    if-eqz p0, :cond_0

    iput-wide v0, p0, Lcom/doman/core/a/i;->e:J

    invoke-static {}, Lcom/doman/core/ig/manager/b;->a()Lcom/doman/core/ig/manager/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/doman/core/ig/manager/b;->a(Lcom/doman/core/a/i;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static synthetic c(Lcom/doman/core/a/i;)Z
    .locals 0

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/a/i;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/doman/core/a/i;)V
    .locals 0

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->b(Lcom/doman/core/a/i;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    if-lez p3, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    :cond_1
    sget-object p3, Lcom/doman/core/webview/c;->am:Ljava/lang/String;

    invoke-static {p3}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    new-instance p3, Lcom/doman/core/ig/manager/c$1;

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/doman/core/ig/manager/c$1;-><init>(Lcom/doman/core/ig/manager/c;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
