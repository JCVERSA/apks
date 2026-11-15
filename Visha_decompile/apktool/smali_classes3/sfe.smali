.class public final Lsfe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Lerj;

.field public final h:I

.field public final i:[J

.field public final j:[J

.field public final k:I

.field public final l:[Ltfe;


# direct methods
.method public constructor <init>(IIJJJJLerj;I[Ltfe;I[J[J)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lsfe;->a:I

    move v1, p2

    iput v1, v0, Lsfe;->b:I

    move-wide v1, p3

    iput-wide v1, v0, Lsfe;->c:J

    move-wide v1, p5

    iput-wide v1, v0, Lsfe;->d:J

    move-wide v1, p7

    iput-wide v1, v0, Lsfe;->e:J

    move-wide v1, p9

    iput-wide v1, v0, Lsfe;->f:J

    move-object v1, p11

    iput-object v1, v0, Lsfe;->g:Lerj;

    move v1, p12

    iput v1, v0, Lsfe;->h:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lsfe;->l:[Ltfe;

    move/from16 v1, p14

    iput v1, v0, Lsfe;->k:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lsfe;->i:[J

    move-object/from16 v1, p16

    iput-object v1, v0, Lsfe;->j:[J

    return-void
.end method


# virtual methods
.method public final a(Lerj;)Lsfe;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget v13, v0, Lsfe;->h:I

    iget-object v14, v0, Lsfe;->l:[Ltfe;

    iget v15, v0, Lsfe;->k:I

    iget-object v1, v0, Lsfe;->i:[J

    move-object/from16 v16, v1

    iget-object v1, v0, Lsfe;->j:[J

    move-object/from16 v17, v1

    new-instance v18, Lsfe;

    move-object/from16 v1, v18

    iget v2, v0, Lsfe;->a:I

    iget v3, v0, Lsfe;->b:I

    iget-wide v4, v0, Lsfe;->c:J

    iget-wide v6, v0, Lsfe;->d:J

    iget-wide v8, v0, Lsfe;->e:J

    iget-wide v10, v0, Lsfe;->f:J

    invoke-direct/range {v1 .. v17}, Lsfe;-><init>(IIJJJJLerj;I[Ltfe;I[J[J)V

    return-object v18
.end method

.method public final b(I)Ltfe;
    .locals 0

    iget-object p0, p0, Lsfe;->l:[Ltfe;

    aget-object p0, p0, p1

    return-object p0
.end method
