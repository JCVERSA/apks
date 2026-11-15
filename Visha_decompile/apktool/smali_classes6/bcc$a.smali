.class public Lbcc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl4$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcc;->b(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 27

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lr16;->a:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    sget v2, Lr16;->b:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x270f

    const/16 v15, 0x433

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v16, 0x0

    const-string v17, ""

    if-ne v2, v3, :cond_9

    sget v2, Lcom/transsion/dbdata/R$id;->video_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object v11, v9

    :goto_2
    sget-object v2, Lbcc;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lbcc;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Lr16;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto :goto_3

    :cond_3
    move v10, v8

    :goto_3
    sget v2, Lr16;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_4
    move-wide v8, v4

    sget v2, Lcom/transsion/dbdata/R$id;->biz_group_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto :goto_4

    :cond_5
    move-object/from16 v13, v17

    :goto_4
    sget v2, Lcom/transsion/dbdata/R$id;->is_more:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto :goto_5

    :cond_6
    move/from16 v12, v16

    :goto_5
    sget v2, Lcom/transsion/dbdata/R$id;->recommend_part:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v14, v2

    goto :goto_6

    :cond_7
    move/from16 v14, v16

    :goto_6
    sget v2, Lcom/transsion/dbdata/R$id;->request_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 v1, v17

    :goto_7
    move v3, v15

    move-object v15, v1

    invoke-static/range {v6 .. v15}, Ld06;->d(JJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v3, v15

    const/16 v10, 0x2713

    if-ne v2, v10, :cond_17

    sget v2, Lcom/transsion/dbdata/R$id;->video_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    goto :goto_8

    :cond_a
    move-object v11, v9

    :goto_8
    sget-object v2, Lbcc;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lbcc;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Lr16;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto :goto_9

    :cond_b
    move v10, v8

    :goto_9
    sget v2, Lr16;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v14, v8

    goto :goto_a

    :cond_c
    move-wide v14, v4

    :goto_a
    sget v2, Lcom/transsion/dbdata/R$id;->biz_group_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto :goto_b

    :cond_d
    move-object/from16 v13, v17

    :goto_b
    sget v2, Lcom/transsion/dbdata/R$id;->is_more:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto :goto_c

    :cond_e
    move/from16 v12, v16

    :goto_c
    sget v2, Lcom/transsion/dbdata/R$id;->recommend_part:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_d

    :cond_f
    move/from16 v2, v16

    :goto_d
    sget v8, Lcom/transsion/dbdata/R$id;->request_id:I

    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_e

    :cond_10
    move-object/from16 v8, v17

    :goto_e
    move-object/from16 p0, v8

    move-wide v8, v14

    move-wide/from16 v21, v14

    move v14, v2

    move-object/from16 v15, p0

    invoke-static/range {v6 .. v15}, Ld06;->d(JJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v6

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    sget v2, Lr16;->e:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_11
    move-object/from16 v2, v17

    :goto_f
    sget v3, Lcom/transsion/dbdata/R$id;->vk_id:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :cond_12
    move-object/from16 v3, v17

    sget v6, Lcom/transsion/dbdata/R$id;->video_id:I

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_10

    :cond_13
    move/from16 v6, v16

    :goto_10
    sget v7, Lcom/transsion/dbdata/R$id;->pay_type:I

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_14

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    :cond_14
    move/from16 v26, v16

    sget v7, Lcom/transsion/dbdata/R$id;->topic_id:I

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_15
    move-wide/from16 v24, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    int-to-long v3, v6

    move-wide/from16 v18, v3

    move-object/from16 v20, v2

    move-object/from16 v23, p0

    invoke-static/range {v18 .. v26}, Lc06;->k(JLjava/lang/String;JLjava/lang/String;JI)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v8, p0

    move-wide/from16 v4, v21

    invoke-static {v3, v2, v4, v5, v8}, Lc06;->m(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x2710

    if-ne v2, v3, :cond_18

    const-string v1, "vd_ott_detail_related_show"

    invoke-static {v1}, Lp06;->d0(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x2711

    if-ne v2, v3, :cond_1a

    sget v2, Lr16;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :cond_19
    move-object/from16 v1, v17

    invoke-static {v6, v7, v1}, Let7;->d(JLjava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x43c

    invoke-virtual {v1, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x2712

    if-ne v2, v3, :cond_0

    sget v2, Lr16;->e:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_11

    :cond_1b
    move-object/from16 v8, v17

    :goto_11
    sget-object v2, Lbcc;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lbcc;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Lr16;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_12

    :cond_1c
    move-wide v9, v4

    :goto_12
    sget v2, Lcom/transsion/dbdata/R$id;->vk_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_1d
    move-object/from16 v2, v17

    :goto_13
    sget v3, Lcom/transsion/dbdata/R$id;->request_id:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1e

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v11, v3

    goto :goto_14

    :cond_1e
    move-object/from16 v11, v17

    :goto_14
    sget v3, Lcom/transsion/dbdata/R$id;->topic_id:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1f

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_1f
    move-wide v12, v4

    sget v3, Lcom/transsion/dbdata/R$id;->pay_type:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_15

    :cond_20
    move/from16 v14, v16

    :goto_15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static/range {v6 .. v14}, Lc06;->k(JLjava/lang/String;JLjava/lang/String;JI)V

    goto/16 :goto_0

    :cond_21
    invoke-static {v2, v8, v9, v10, v11}, Lc06;->m(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    return-void
.end method
