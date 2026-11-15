.class public final Lo9j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:Lbnj;


# instance fields
.field public final a:Lw4f;

.field public final b:Lbnj;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/ads/zzii;

.field public final g:Z

.field public final h:Lnpj;

.field public final i:Larj;

.field public final j:Ljava/util/List;

.field public final k:Lbnj;

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:Lvwe;

.field public final p:Z

.field public volatile q:J

.field public volatile r:J

.field public volatile s:J

.field public volatile t:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbnj;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lbnj;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lo9j;->u:Lbnj;

    return-void
.end method

.method public constructor <init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lo9j;->a:Lw4f;

    move-object v1, p2

    iput-object v1, v0, Lo9j;->b:Lbnj;

    move-wide v1, p3

    iput-wide v1, v0, Lo9j;->c:J

    move-wide v1, p5

    iput-wide v1, v0, Lo9j;->d:J

    move v1, p7

    iput v1, v0, Lo9j;->e:I

    move-object v1, p8

    iput-object v1, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    move v1, p9

    iput-boolean v1, v0, Lo9j;->g:Z

    move-object v1, p10

    iput-object v1, v0, Lo9j;->h:Lnpj;

    move-object v1, p11

    iput-object v1, v0, Lo9j;->i:Larj;

    move-object v1, p12

    iput-object v1, v0, Lo9j;->j:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lo9j;->k:Lbnj;

    move/from16 v1, p14

    iput-boolean v1, v0, Lo9j;->l:Z

    move/from16 v1, p15

    iput v1, v0, Lo9j;->m:I

    move/from16 v1, p16

    iput v1, v0, Lo9j;->n:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lo9j;->o:Lvwe;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lo9j;->q:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lo9j;->r:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lo9j;->s:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lo9j;->t:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo9j;->p:Z

    return-void
.end method

.method public static h(Larj;)Lo9j;
    .locals 28

    move-object/from16 v11, p0

    new-instance v27, Lo9j;

    move-object/from16 v0, v27

    sget-object v1, Lw4f;->a:Lw4f;

    sget-object v13, Lo9j;->u:Lbnj;

    move-object v2, v13

    sget-object v10, Lnpj;->d:Lnpj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v12

    sget-object v17, Lvwe;->d:Lvwe;

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-direct/range {v0 .. v26}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v27
.end method

.method public static i()Lbnj;
    .locals 1

    sget-object v0, Lo9j;->u:Lbnj;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lo9j;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v10, p1

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-object v11, v0, Lo9j;->h:Lnpj;

    iget-object v12, v0, Lo9j;->i:Larj;

    iget-object v13, v0, Lo9j;->j:Ljava/util/List;

    iget-object v14, v0, Lo9j;->k:Lbnj;

    iget-boolean v15, v0, Lo9j;->l:Z

    iget v2, v0, Lo9j;->m:I

    move/from16 v16, v2

    iget v2, v0, Lo9j;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lo9j;->q:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lo9j;->r:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lo9j;->s:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lo9j;->t:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    iget-wide v6, v0, Lo9j;->d:J

    iget v8, v0, Lo9j;->e:I

    iget-object v9, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final b(Lbnj;)Lo9j;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-boolean v15, v0, Lo9j;->l:Z

    iget v2, v0, Lo9j;->m:I

    move/from16 v16, v2

    iget v2, v0, Lo9j;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lo9j;->q:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lo9j;->r:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lo9j;->s:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lo9j;->t:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    iget-wide v6, v0, Lo9j;->d:J

    iget v8, v0, Lo9j;->e:I

    iget-object v9, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-boolean v10, v0, Lo9j;->g:Z

    iget-object v11, v0, Lo9j;->h:Lnpj;

    iget-object v12, v0, Lo9j;->i:Larj;

    iget-object v13, v0, Lo9j;->j:Ljava/util/List;

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final c(Lbnj;JJJJLnpj;Larj;Ljava/util/List;)Lo9j;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v23, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v21, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-object v14, v0, Lo9j;->k:Lbnj;

    iget-boolean v15, v0, Lo9j;->l:Z

    iget v2, v0, Lo9j;->m:I

    move/from16 v16, v2

    iget v2, v0, Lo9j;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v2

    iget-wide v8, v0, Lo9j;->q:J

    move-wide/from16 v19, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    iget v8, v0, Lo9j;->e:I

    iget-object v9, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-boolean v10, v0, Lo9j;->g:Z

    iget-object v2, v0, Lo9j;->a:Lw4f;

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final d(ZII)Lo9j;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-object v2, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lo9j;->q:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lo9j;->r:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lo9j;->s:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lo9j;->t:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    iget-wide v6, v0, Lo9j;->d:J

    iget v8, v0, Lo9j;->e:I

    iget-object v9, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-boolean v10, v0, Lo9j;->g:Z

    iget-object v11, v0, Lo9j;->h:Lnpj;

    iget-object v12, v0, Lo9j;->i:Larj;

    iget-object v13, v0, Lo9j;->j:Ljava/util/List;

    iget-object v14, v0, Lo9j;->k:Lbnj;

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzii;)Lo9j;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-boolean v10, v0, Lo9j;->g:Z

    iget-object v11, v0, Lo9j;->h:Lnpj;

    iget-object v12, v0, Lo9j;->i:Larj;

    iget-object v13, v0, Lo9j;->j:Ljava/util/List;

    iget-object v14, v0, Lo9j;->k:Lbnj;

    iget-boolean v15, v0, Lo9j;->l:Z

    iget v2, v0, Lo9j;->m:I

    move/from16 v16, v2

    iget v2, v0, Lo9j;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lo9j;->q:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lo9j;->r:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lo9j;->s:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lo9j;->t:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    iget-wide v6, v0, Lo9j;->d:J

    iget v8, v0, Lo9j;->e:I

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final f(I)Lo9j;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v8, p1

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-object v9, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-boolean v10, v0, Lo9j;->g:Z

    iget-object v11, v0, Lo9j;->h:Lnpj;

    iget-object v12, v0, Lo9j;->i:Larj;

    iget-object v13, v0, Lo9j;->j:Ljava/util/List;

    iget-object v14, v0, Lo9j;->k:Lbnj;

    iget-boolean v15, v0, Lo9j;->l:Z

    iget v2, v0, Lo9j;->m:I

    move/from16 v16, v2

    iget v2, v0, Lo9j;->n:I

    move/from16 v17, v2

    iget-object v2, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v2

    iget-wide v2, v0, Lo9j;->q:J

    move-wide/from16 v19, v2

    iget-wide v2, v0, Lo9j;->r:J

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lo9j;->s:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lo9j;->t:J

    move-wide/from16 v25, v2

    iget-object v2, v0, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    iget-wide v6, v0, Lo9j;->d:J

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final g(Lw4f;)Lo9j;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v28, Lo9j;

    move-object/from16 v1, v28

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    iget-wide v6, v0, Lo9j;->d:J

    iget v8, v0, Lo9j;->e:I

    iget-object v9, v0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-boolean v10, v0, Lo9j;->g:Z

    iget-object v11, v0, Lo9j;->h:Lnpj;

    iget-object v12, v0, Lo9j;->i:Larj;

    iget-object v13, v0, Lo9j;->j:Ljava/util/List;

    iget-object v14, v0, Lo9j;->k:Lbnj;

    iget-boolean v15, v0, Lo9j;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lo9j;->m:I

    move/from16 v16, v1

    iget v1, v0, Lo9j;->n:I

    move/from16 v17, v1

    iget-object v1, v0, Lo9j;->o:Lvwe;

    move-object/from16 v18, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, Lo9j;->q:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lo9j;->r:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lo9j;->s:J

    move-wide/from16 v23, v1

    iget-wide v0, v0, Lo9j;->t:J

    move-wide/from16 v25, v0

    const/16 v27, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct/range {v1 .. v27}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    return-object v28
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lo9j;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo9j;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lo9j;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
