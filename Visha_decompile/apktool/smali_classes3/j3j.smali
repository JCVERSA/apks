.class public final Lj3j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ltbg;

.field public c:Lk3i;

.field public d:Lk3i;

.field public e:Lk3i;

.field public f:Lk3i;

.field public g:Lk3i;

.field public h:Lm2i;

.field public i:Landroid/os/Looper;

.field public j:I

.field public k:Lhvg;

.field public l:I

.field public m:Z

.field public n:Lkaj;

.field public o:J

.field public p:J

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Lw1j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpif;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lv2j;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lv2j;-><init>(Lpif;)V

    new-instance v3, Ly2j;

    invoke-direct {v3, v1}, Ly2j;-><init>(Landroid/content/Context;)V

    new-instance v4, La3j;

    invoke-direct {v4, v1}, La3j;-><init>(Landroid/content/Context;)V

    new-instance v5, Lb3j;

    invoke-direct {v5}, Lb3j;-><init>()V

    new-instance v6, Ld3j;

    invoke-direct {v6, v1}, Ld3j;-><init>(Landroid/content/Context;)V

    new-instance v7, Lf3j;

    invoke-direct {v7}, Lf3j;-><init>()V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lj3j;->a:Landroid/content/Context;

    iput-object v2, v0, Lj3j;->c:Lk3i;

    iput-object v3, v0, Lj3j;->d:Lk3i;

    iput-object v4, v0, Lj3j;->e:Lk3i;

    iput-object v5, v0, Lj3j;->f:Lk3i;

    iput-object v6, v0, Lj3j;->g:Lk3i;

    iput-object v7, v0, Lj3j;->h:Lm2i;

    invoke-static {}, Lkfh;->U()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lj3j;->i:Landroid/os/Looper;

    sget-object v1, Lhvg;->b:Lhvg;

    iput-object v1, v0, Lj3j;->k:Lhvg;

    const/4 v1, 0x1

    iput v1, v0, Lj3j;->l:I

    iput-boolean v1, v0, Lj3j;->m:Z

    sget-object v2, Lkaj;->d:Lkaj;

    iput-object v2, v0, Lj3j;->n:Lkaj;

    new-instance v2, Lw1j;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Lkfh;->N(J)J

    move-result-wide v9

    const-wide/16 v14, 0x1f4

    invoke-static {v14, v15}, Lkfh;->N(J)J

    move-result-wide v11

    const v13, 0x3f7fbe77    # 0.999f

    const/16 v16, 0x0

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    const-wide/16 v6, 0x3e8

    const v8, 0x33d6bf95    # 1.0E-7f

    move-object v3, v2

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lw1j;-><init>(FFJFJJFLs1j;)V

    iput-object v2, v0, Lj3j;->t:Lw1j;

    sget-object v2, Ltbg;->a:Ltbg;

    iput-object v2, v0, Lj3j;->b:Ltbg;

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lj3j;->o:J

    const-wide/16 v2, 0x7d0

    iput-wide v2, v0, Lj3j;->p:J

    iput-boolean v1, v0, Lj3j;->q:Z

    const-string v1, ""

    iput-object v1, v0, Lj3j;->s:Ljava/lang/String;

    const/16 v1, -0x3e8

    iput v1, v0, Lj3j;->j:I

    sget v0, Lkfh;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    sget v0, Ln2j;->a:I

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lanj;
    .locals 2

    new-instance v0, Lomj;

    new-instance v1, Lr8e;

    invoke-direct {v1}, Lr8e;-><init>()V

    invoke-direct {v0, p0, v1}, Lomj;-><init>(Landroid/content/Context;Lh9e;)V

    return-object v0
.end method
