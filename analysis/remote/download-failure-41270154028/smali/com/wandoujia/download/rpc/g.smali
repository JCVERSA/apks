.class public Lcom/wandoujia/download/rpc/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:J

.field public h:J

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:J

.field public final m:Z

.field public final n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

.field public final o:I

.field public p:Z

.field public q:Ljava/util/List;

.field public final r:J

.field public final s:J

.field public final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/download/rpc/h;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/wandoujia/download/rpc/h;->a:J

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/g;->l:J

    iget-wide v0, p1, Lcom/wandoujia/download/rpc/h;->r:J

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/g;->a:J

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/g;->g:J

    iget-wide v2, p1, Lcom/wandoujia/download/rpc/h;->f:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/g;->h:J

    :cond_0
    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->j:Ljava/lang/String;

    iget-wide v0, p1, Lcom/wandoujia/download/rpc/h;->j:J

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/g;->k:J

    iget-boolean v0, p1, Lcom/wandoujia/download/rpc/h;->A:Z

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/g;->m:Z

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iget v0, p1, Lcom/wandoujia/download/rpc/h;->B:I

    iput v0, p0, Lcom/wandoujia/download/rpc/g;->o:I

    iput-wide v2, p0, Lcom/wandoujia/download/rpc/g;->r:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v0, p1, Lcom/wandoujia/download/rpc/h;->t:J

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/g;->s:J

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/g;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;IJJJLjava/util/List;JJI)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v2, v1, Lcom/wandoujia/download/rpc/h;->a:J

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->l:J

    move-wide v2, p8

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->a:J

    move-object v2, p2

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    move-wide v2, p11

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->r:J

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/wandoujia/download/rpc/h;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->e:Ljava/lang/String;

    move-wide v2, p4

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->g:J

    move-wide v2, p6

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->h:J

    iget-object v2, v1, Lcom/wandoujia/download/rpc/h;->F:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->i:Ljava/lang/String;

    iget-object v2, v1, Lcom/wandoujia/download/rpc/h;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->j:Ljava/lang/String;

    iget-wide v2, v1, Lcom/wandoujia/download/rpc/h;->j:J

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->k:J

    iget-boolean v2, v1, Lcom/wandoujia/download/rpc/h;->A:Z

    iput-boolean v2, v0, Lcom/wandoujia/download/rpc/g;->m:Z

    iget-object v2, v1, Lcom/wandoujia/download/rpc/h;->g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iget v2, v1, Lcom/wandoujia/download/rpc/h;->B:I

    iput v2, v0, Lcom/wandoujia/download/rpc/g;->o:I

    move v2, p3

    iput v2, v0, Lcom/wandoujia/download/rpc/g;->f:I

    const/4 v2, 0x1

    move/from16 v3, p15

    if-le v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/wandoujia/download/rpc/g;->p:Z

    move-object v2, p10

    iput-object v2, v0, Lcom/wandoujia/download/rpc/g;->q:Ljava/util/List;

    move-wide/from16 v2, p13

    iput-wide v2, v0, Lcom/wandoujia/download/rpc/g;->s:J

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/g;->t:Ljava/lang/String;

    return-void
.end method
