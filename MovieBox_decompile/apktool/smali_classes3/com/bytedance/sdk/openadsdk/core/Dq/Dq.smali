.class public Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;
.super Lcom/bytedance/sdk/openadsdk/core/sP/Sj;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected Sj(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;JJ",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "FIFI",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/core/model/TEQ;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p10 .. p10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    array-length v5, v1

    if-ne v5, v2, :cond_1

    .line 3
    aget v5, v1, v4

    .line 4
    aget v6, v1, v3

    .line 5
    iget v7, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sU:I

    if-nez v7, :cond_0

    .line 6
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move/from16 v8, p1

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v7, v5

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    .line 7
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move/from16 v10, p2

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    sub-float/2addr v9, v8

    .line 8
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move/from16 v11, p3

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v10

    add-int/2addr v10, v5

    int-to-float v10, v10

    sub-float/2addr v10, v8

    .line 9
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move/from16 v12, p4

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v11

    add-int/2addr v11, v6

    int-to-float v11, v11

    sub-float v8, v11, v8

    move v12, v8

    move v11, v10

    move v8, v7

    move v10, v9

    goto :goto_0

    :cond_0
    move/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    goto :goto_0

    :cond_1
    move/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move v5, v4

    move v6, v5

    .line 10
    :goto_0
    new-array v7, v2, [I

    .line 11
    new-array v9, v2, [I

    .line 12
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    if-eqz v13, :cond_4

    .line 13
    iget-wide v14, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->HiB:J

    .line 14
    iget-wide v2, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->vS:J

    .line 15
    iget v4, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sU:I

    if-nez v4, :cond_2

    .line 16
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iget v13, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Jcg:I

    int-to-float v13, v13

    invoke-static {v4, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v7, v5

    .line 17
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Dq:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v4, v6

    const/4 v5, 0x1

    aput v4, v7, v5

    .line 18
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->uA:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    .line 19
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    iget v6, v6, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TEQ:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    move v13, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    .line 20
    :cond_2
    iget v4, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Jcg:I

    const/4 v5, 0x0

    aput v4, v7, v5

    .line 21
    iget v4, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Dq:I

    const/4 v6, 0x1

    aput v4, v7, v6

    .line 22
    iget v4, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->uA:I

    .line 23
    iget v13, v13, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TEQ:I

    .line 24
    :goto_1
    aput v4, v9, v5

    .line 25
    aput v13, v9, v6

    if-nez v4, :cond_3

    if-nez v13, :cond_3

    if-eqz p11, :cond_3

    .line 26
    invoke-static/range {p11 .. p11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v7

    .line 27
    invoke-static/range {p11 .. p11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v9

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move v6, v3

    move-wide/from16 v14, p6

    move-wide/from16 v2, p8

    .line 28
    :goto_2
    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sU:I

    .line 29
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;-><init>()V

    .line 30
    invoke-virtual {v4, v8}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->vS(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v4

    .line 31
    invoke-virtual {v4, v10}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->HiB(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v4

    .line 32
    invoke-virtual {v4, v11}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v4

    .line 33
    invoke-virtual {v4, v12}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v4

    .line 34
    invoke-virtual {v4, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v4

    .line 35
    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    .line 38
    invoke-static/range {p10 .. p10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    .line 40
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    .line 41
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    .line 42
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_3

    :cond_5
    const/4 v2, 0x2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p5

    .line 44
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p12

    .line 45
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p13

    .line 46
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p14

    .line 47
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p15

    .line 48
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p16

    .line 49
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p17

    .line 50
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p18

    .line 51
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object v1

    return-object v1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    return-void
.end method
