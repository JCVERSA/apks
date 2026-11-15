.class public final Lcom/yandex/mobile/ads/impl/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Landroid/content/Intent;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/c1;)Lcom/yandex/mobile/ads/impl/m1;
    .locals 14

    move-object v1, p1

    move-object/from16 v6, p3

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootLayout"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventController"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    move-object/from16 v3, p5

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    move-object/from16 v4, p6

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p7, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/c1;->c()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/c1;->b()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v8

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/c1;->e()Lcom/yandex/mobile/ads/impl/q61;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/c1;->g()Lcom/yandex/mobile/ads/impl/gv1;

    move-result-object v3

    if-eqz v5, :cond_0

    move-object v10, v5

    goto :goto_0

    :cond_0
    move-object v10, v0

    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v10, v0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Lcom/yandex/mobile/ads/impl/fd0;

    invoke-direct {v7, v5, v10, v3}, Lcom/yandex/mobile/ads/impl/fd0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/gv1;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/g1;

    new-instance v8, Lcom/yandex/mobile/ads/impl/lf1;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/fd0;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-direct {v8, p1, v0, v6}, Lcom/yandex/mobile/ads/impl/lf1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/v1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/wc0;

    invoke-direct {v10, p1}, Lcom/yandex/mobile/ads/impl/wc0;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/id0;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/fd0;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->n()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/yandex/mobile/ads/impl/id0;-><init>(Lcom/yandex/mobile/ads/impl/ts;)V

    move-object v0, v9

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/g1;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/fd0;Lcom/yandex/mobile/ads/impl/lf1;Lcom/yandex/mobile/ads/impl/wc0;Lcom/yandex/mobile/ads/impl/id0;)V

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/c1;->f()I

    move-result v10

    new-instance v12, Lcom/yandex/mobile/ads/impl/k1;

    new-instance v11, Lcom/yandex/mobile/ads/impl/wc0;

    invoke-direct {v11, p1}, Lcom/yandex/mobile/ads/impl/wc0;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/id0;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/yandex/mobile/ads/impl/id0;-><init>(Lcom/yandex/mobile/ads/impl/ts;)V

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object v4, v9

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v9, v10

    move-object v10, v11

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/k1;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/o3;ILcom/yandex/mobile/ads/impl/wc0;Lcom/yandex/mobile/ads/impl/id0;)V

    :cond_4
    :goto_3
    return-object v0
.end method
