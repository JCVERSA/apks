.class public Lcom/wandoujia/download/rpc/h;
.super Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:Z

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:I

.field public H:Lcom/twmacinta/util/MD5State;

.field public I:I

.field public J:I

.field public K:Ljava/util/Map;

.field public L:Z

.field public M:Lcom/wandoujia/mtdownload/c;

.field public N:Ljava/lang/String;

.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:Z

.field public q:J

.field public r:J

.field public s:Ljava/lang/String;

.field public t:J

.field public u:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

.field public v:Ljava/lang/String;

.field public w:[Ljava/lang/String;

.field public x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

.field public y:J

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/wandoujia/download/rpc/h;
    .locals 3

    new-instance v0, Lcom/wandoujia/download/rpc/h;

    invoke-direct {v0}, Lcom/wandoujia/download/rpc/h;-><init>()V

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->r:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->r:J

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->e:Ljava/lang/String;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->j:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->j:J

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->l:Ljava/lang/String;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->a:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->a:J

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    iget v1, p0, Lcom/wandoujia/download/rpc/h;->I:I

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->I:I

    iget v1, p0, Lcom/wandoujia/download/rpc/h;->J:I

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->J:I

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->d:Ljava/lang/String;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->f:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->f:J

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    iget v1, p0, Lcom/wandoujia/download/rpc/h;->o:I

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->o:I

    iget-boolean v1, p0, Lcom/wandoujia/download/rpc/h;->A:Z

    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->A:Z

    iget-boolean v1, p0, Lcom/wandoujia/download/rpc/h;->p:Z

    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->p:Z

    iget v1, p0, Lcom/wandoujia/download/rpc/h;->B:I

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->B:I

    iget v1, p0, Lcom/wandoujia/download/rpc/h;->C:I

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->C:I

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->q:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->q:J

    iget-boolean v1, p0, Lcom/wandoujia/download/rpc/h;->D:Z

    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->D:Z

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->E:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->F:Ljava/lang/String;

    iget v1, p0, Lcom/wandoujia/download/rpc/h;->G:I

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->G:I

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->w:[Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->w:[Ljava/lang/String;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->y:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->y:J

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->s:Ljava/lang/String;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/h;->t:J

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/h;->t:J

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->K:Ljava/util/Map;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->K:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/wandoujia/download/rpc/h;->L:Z

    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->L:Z

    new-instance v1, Lcom/wandoujia/mtdownload/c;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/h;->M:Lcom/wandoujia/mtdownload/c;

    invoke-direct {v1, v2}, Lcom/wandoujia/mtdownload/c;-><init>(Lcom/wandoujia/mtdownload/c;)V

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->M:Lcom/wandoujia/mtdownload/c;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->N:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->N:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    iget v0, p0, Lcom/wandoujia/download/rpc/h;->I:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/h;->y:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/h;->a()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/wandoujia/download/rpc/h;->I:I

    return v0
.end method

.method public e(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/h;->y:J

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget v0, p0, Lcom/wandoujia/download/rpc/h;->I:I

    iput v0, p0, Lcom/wandoujia/download/rpc/h;->J:I

    iput p1, p0, Lcom/wandoujia/download/rpc/h;->I:I

    return-void
.end method
