.class public final synthetic Lvpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnqj;


# instance fields
.field public final synthetic a:Lhqj;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lhqj;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvpj;->a:Lhqj;

    iput-object p2, p0, Lvpj;->b:Ljava/lang/String;

    iput-object p3, p0, Lvpj;->c:[I

    iput-object p4, p0, Lvpj;->d:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final a(ILn5f;[I)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    sget-object v1, Lrqj;->i:Lcom/google/android/gms/internal/ads/zzfyh;

    iget-object v12, v0, Lvpj;->a:Lhqj;

    iget-object v1, v0, Lvpj;->c:[I

    aget v13, v1, p1

    iget-object v1, v0, Lvpj;->d:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget v2, v12, Lz8f;->i:I

    :goto_0
    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    iget v1, v12, Lz8f;->j:I

    :goto_1
    iget-boolean v3, v12, Lz8f;->l:Z

    const/4 v14, -0x1

    const v9, 0x7fffffff

    if-eq v2, v9, :cond_9

    if-ne v1, v9, :cond_2

    move v11, v9

    goto/16 :goto_7

    :cond_2
    move v5, v9

    const/4 v4, 0x0

    :goto_2
    iget v6, v10, Ln5f;->a:I

    if-ge v4, v6, :cond_8

    invoke-virtual {v10, v4}, Ln5f;->b(I)Lerj;

    move-result-object v6

    iget v7, v6, Lerj;->v:I

    if-lez v7, :cond_7

    iget v6, v6, Lerj;->w:I

    if-lez v6, :cond_7

    if-eqz v3, :cond_5

    if-gt v7, v6, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/4 v8, 0x1

    :goto_3
    if-gt v2, v1, :cond_4

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    const/4 v15, 0x1

    :goto_4
    if-eq v8, v15, :cond_5

    move v15, v1

    move v8, v2

    goto :goto_5

    :cond_5
    move v8, v1

    move v15, v2

    :goto_5
    mul-int v9, v7, v8

    mul-int v11, v6, v15

    if-lt v9, v11, :cond_6

    new-instance v8, Landroid/graphics/Point;

    sget v9, Lkfh;->a:I

    add-int/2addr v11, v7

    add-int/2addr v11, v14

    div-int/2addr v11, v7

    invoke-direct {v8, v15, v11}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    :cond_6
    new-instance v11, Landroid/graphics/Point;

    sget v15, Lkfh;->a:I

    add-int/2addr v9, v6

    add-int/2addr v9, v14

    div-int/2addr v9, v6

    invoke-direct {v11, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    move-object v8, v11

    :goto_6
    mul-int v9, v7, v6

    iget v11, v8, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    const v15, 0x3f7ae148    # 0.98f

    mul-float/2addr v11, v15

    float-to-int v11, v11

    if-lt v7, v11, :cond_7

    iget v7, v8, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v15

    float-to-int v7, v7

    if-lt v6, v7, :cond_7

    if-ge v9, v5, :cond_7

    move v5, v9

    :cond_7
    const/4 v6, 0x1

    add-int/2addr v4, v6

    const v9, 0x7fffffff

    goto :goto_2

    :cond_8
    move v11, v5

    goto :goto_7

    :cond_9
    const v11, 0x7fffffff

    :goto_7
    sget v1, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v15, Ll4i;

    invoke-direct {v15}, Ll4i;-><init>()V

    const/4 v9, 0x0

    :goto_8
    iget v1, v10, Ln5f;->a:I

    if-ge v9, v1, :cond_c

    invoke-virtual {v10, v9}, Ln5f;->b(I)Lerj;

    move-result-object v1

    invoke-virtual {v1}, Lerj;->a()I

    move-result v1

    const v8, 0x7fffffff

    if-eq v11, v8, :cond_a

    if-eq v1, v14, :cond_b

    if-gt v1, v11, :cond_b

    :cond_a
    const/16 v16, 0x1

    goto :goto_9

    :cond_b
    const/16 v16, 0x0

    :goto_9
    iget-object v7, v0, Lvpj;->b:Ljava/lang/String;

    new-instance v6, Lpqj;

    aget v17, p3, v9

    move-object v1, v6

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v9

    move-object v5, v12

    move-object v14, v6

    move/from16 v6, v17

    move/from16 v17, v8

    move v8, v13

    move/from16 v18, v9

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lpqj;-><init>(ILn5f;ILhqj;ILjava/lang/String;IZ)V

    invoke-virtual {v15, v14}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    const/4 v1, 0x1

    add-int/lit8 v9, v18, 0x1

    const/4 v14, -0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v15}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    return-object v0
.end method
