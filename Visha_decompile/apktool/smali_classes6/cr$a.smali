.class public final Lcr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Ljava/lang/String;

.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Landroid/net/Uri;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;

.field public j:I

.field public k:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:I

.field public o:J

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Ljava/util/List;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcr$a;->C:I

    return-void
.end method


# virtual methods
.method public final A(I)Lcr$a;
    .locals 0

    iput p1, p0, Lcr$a;->s:I

    return-object p0
.end method

.method public final B(Ljava/util/ArrayList;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final C(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->p:Z

    return-object p0
.end method

.method public final D(Landroid/net/Uri;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->l:Z

    return-object p0
.end method

.method public final d(J)Lcr$a;
    .locals 0

    iput-wide p1, p0, Lcr$a;->o:J

    return-object p0
.end method

.method public final e()Lcr;
    .locals 39

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcr$a;->a:Z

    iget-boolean v3, v0, Lcr$a;->b:Z

    iget-object v4, v0, Lcr$a;->c:Ljava/lang/String;

    iget-object v5, v0, Lcr$a;->d:Ljava/lang/String;

    iget v6, v0, Lcr$a;->e:I

    iget-object v7, v0, Lcr$a;->f:Landroid/net/Uri;

    iget-object v8, v0, Lcr$a;->g:Ljava/util/ArrayList;

    iget-object v9, v0, Lcr$a;->h:Ljava/util/ArrayList;

    iget-object v10, v0, Lcr$a;->i:Ljava/util/ArrayList;

    iget v11, v0, Lcr$a;->j:I

    iget-object v12, v0, Lcr$a;->k:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-boolean v13, v0, Lcr$a;->l:Z

    iget-object v14, v0, Lcr$a;->m:Ljava/lang/String;

    iget v15, v0, Lcr$a;->n:I

    move/from16 v38, v2

    iget-wide v1, v0, Lcr$a;->o:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lcr$a;->p:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcr$a;->q:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcr$a;->r:Ljava/lang/String;

    move-object/from16 v20, v1

    iget v1, v0, Lcr$a;->s:I

    move/from16 v21, v1

    iget-object v1, v0, Lcr$a;->t:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-boolean v1, v0, Lcr$a;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcr$a;->v:Z

    move/from16 v24, v1

    iget-object v1, v0, Lcr$a;->w:Ljava/util/List;

    move-object/from16 v31, v1

    iget-boolean v1, v0, Lcr$a;->x:Z

    move/from16 v25, v1

    iget-boolean v1, v0, Lcr$a;->y:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcr$a;->z:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Lcr$a;->A:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcr$a;->B:Z

    move/from16 v29, v1

    iget v1, v0, Lcr$a;->C:I

    move/from16 v30, v1

    iget-boolean v1, v0, Lcr$a;->D:Z

    move/from16 v32, v1

    iget-boolean v1, v0, Lcr$a;->E:Z

    move/from16 v33, v1

    iget-boolean v1, v0, Lcr$a;->F:Z

    move/from16 v34, v1

    iget-boolean v1, v0, Lcr$a;->G:Z

    move/from16 v35, v1

    iget-object v0, v0, Lcr$a;->H:Ljava/lang/String;

    move-object/from16 v36, v0

    new-instance v0, Lcr;

    move-object v1, v0

    const/16 v37, 0x0

    move/from16 v2, v38

    invoke-direct/range {v1 .. v37}, Lcr;-><init>(ZZLjava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/transsion/dbdata/beans/media/MediaBucket;ZLjava/lang/String;IJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZILjava/util/List;ZZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final f(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->D:Z

    return-object p0
.end method

.method public final g(I)Lcr$a;
    .locals 0

    iput p1, p0, Lcr$a;->j:I

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final j(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->b:Z

    return-object p0
.end method

.method public final k(I)Lcr$a;
    .locals 0

    iput p1, p0, Lcr$a;->n:I

    return-object p0
.end method

.method public final l(I)Lcr$a;
    .locals 0

    iput p1, p0, Lcr$a;->C:I

    return-object p0
.end method

.method public final m(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->G:Z

    return-object p0
.end method

.method public final n(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->a:Z

    return-object p0
.end method

.method public final o(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->u:Z

    return-object p0
.end method

.method public final p(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->x:Z

    return-object p0
.end method

.method public final q(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->v:Z

    return-object p0
.end method

.method public final r(Z)Lcr$a;
    .locals 0

    iput-boolean p1, p0, Lcr$a;->z:Z

    return-object p0
.end method

.method public final s(I)Lcr$a;
    .locals 0

    iput p1, p0, Lcr$a;->e:I

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->H:Ljava/lang/String;

    return-object p0
.end method

.method public final u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->k:Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-object p0
.end method

.method public final v(Ljava/util/ArrayList;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final w(Ljava/util/List;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->w:Ljava/util/List;

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final z(Ljava/util/ArrayList;)Lcr$a;
    .locals 0

    iput-object p1, p0, Lcr$a;->h:Ljava/util/ArrayList;

    return-object p0
.end method
