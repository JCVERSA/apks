.class public Lo2d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:F

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lo2d;
    .locals 19

    move/from16 v0, p0

    new-instance v1, Lo2d;

    invoke-direct {v1}, Lo2d;-><init>()V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, 0x438c0000    # 280.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    const/high16 v0, 0x43f90000    # 498.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    const/high16 v3, 0x435c0000    # 220.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x41d00000    # 26.0f

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x41400000    # 12.0f

    if-ne v0, v2, :cond_1

    const/high16 v0, 0x43dc0000    # 440.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    invoke-static {v3}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    invoke-static {v6}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->c:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->d:I

    invoke-static {v5}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->e:I

    iput v9, v1, Lo2d;->f:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->g:I

    invoke-static {v10}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->h:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->i:I

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->j:I

    const/high16 v0, 0x42240000    # 41.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->k:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->l:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->m:I

    iput v12, v1, Lo2d;->n:F

    iput v8, v1, Lo2d;->o:F

    invoke-static {v7}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->p:I

    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->q:I

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->r:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->s:I

    invoke-static {v4}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->t:I

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x3

    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v14, 0x437a0000    # 250.0f

    const/high16 v15, 0x41b00000    # 22.0f

    if-ne v0, v2, :cond_2

    invoke-static {v14}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    const/high16 v0, 0x43830000    # 262.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    invoke-static {v15}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->c:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->d:I

    invoke-static {v5}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->e:I

    iput v10, v1, Lo2d;->f:F

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->g:I

    invoke-static {v10}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->h:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->i:I

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->j:I

    const/high16 v0, 0x42540000    # 53.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->k:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->l:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->m:I

    iput v12, v1, Lo2d;->n:F

    iput v8, v1, Lo2d;->o:F

    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->p:I

    const/high16 v0, 0x43180000    # 152.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->q:I

    invoke-static {v13}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->r:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->s:I

    invoke-static {v4}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->t:I

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x4

    const/high16 v16, 0x42900000    # 72.0f

    const/high16 v13, 0x41900000    # 18.0f

    const/high16 v17, 0x42100000    # 36.0f

    const/high16 v18, 0x41800000    # 16.0f

    if-ne v0, v2, :cond_3

    const/high16 v0, 0x439c0000    # 312.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    const/high16 v0, 0x43a40000    # 328.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    invoke-static {v6}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->c:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->d:I

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->e:I

    iput v7, v1, Lo2d;->f:F

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->g:I

    invoke-static {v15}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->h:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->i:I

    const/high16 v0, 0x43840000    # 264.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->j:I

    invoke-static/range {v16 .. v16}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->k:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->l:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->m:I

    iput v13, v1, Lo2d;->n:F

    iput v9, v1, Lo2d;->o:F

    invoke-static/range {v17 .. v17}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->p:I

    invoke-static {v3}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->q:I

    invoke-static {v5}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->r:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->s:I

    invoke-static {v8}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->t:I

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const/high16 v0, 0x430c0000    # 140.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    invoke-static {v14}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->c:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->d:I

    invoke-static/range {v17 .. v17}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->e:I

    iput v9, v1, Lo2d;->f:F

    invoke-static {v4}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->g:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->h:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->i:I

    const/high16 v0, 0x42f80000    # 124.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->j:I

    invoke-static/range {v17 .. v17}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->k:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->l:I

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->m:I

    iput v8, v1, Lo2d;->n:F

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, v1, Lo2d;->o:F

    invoke-static {v13}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->p:I

    const/high16 v0, 0x42d40000    # 106.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->q:I

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->r:I

    invoke-static {v8}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->s:I

    invoke-static {v4}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->t:I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x6

    const/high16 v4, 0x43940000    # 296.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v14, -0x40800000    # -1.0f

    if-ne v0, v2, :cond_5

    invoke-static {v14}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    invoke-static {v14}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    invoke-static {v6}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->c:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->d:I

    invoke-static {v8}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->e:I

    iput v13, v1, Lo2d;->f:F

    invoke-static {v11}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->g:I

    invoke-static {v15}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->h:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->i:I

    invoke-static {v4}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->j:I

    invoke-static/range {v16 .. v16}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->k:I

    invoke-static {v10}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->l:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->m:I

    iput v6, v1, Lo2d;->n:F

    iput v9, v1, Lo2d;->o:F

    invoke-static/range {v17 .. v17}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->p:I

    const/high16 v0, 0x43700000    # 240.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->q:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->r:I

    invoke-static {v10}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->s:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->t:I

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    invoke-static {v14}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->a:I

    invoke-static {v14}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->b:I

    invoke-static {v7}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->c:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->d:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->e:I

    iput v10, v1, Lo2d;->f:F

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->g:I

    invoke-static {v15}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->h:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->i:I

    invoke-static {v4}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->j:I

    invoke-static {v8}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->k:I

    invoke-static {v7}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->l:I

    invoke-static/range {v18 .. v18}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->m:I

    iput v13, v1, Lo2d;->n:F

    iput v9, v1, Lo2d;->o:F

    invoke-static/range {v17 .. v17}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->p:I

    invoke-static {v3}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->q:I

    invoke-static {v5}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->r:I

    invoke-static {v7}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->s:I

    invoke-static {v12}, Lhm4;->a(F)I

    move-result v0

    iput v0, v1, Lo2d;->t:I

    :goto_0
    return-object v1

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
