.class public Lcom/wandoujia/download/rpc/InnerDownloadRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;,
        Lcom/wandoujia/download/rpc/InnerDownloadRequest$VerifyType;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/lang/String;

.field public final l:[Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:J

.field public final p:J

.field public final q:Ljava/lang/String;

.field public final r:Z

.field public final s:J

.field public final t:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->a(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->f:Z

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->d(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->n(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->i(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->o(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->g:J

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->p(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->d:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->q(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->r(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->c(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->m(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->o:J

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->j(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->p:J

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->k(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->g(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->j:Ljava/util/Map;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->h(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->u(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->r:Z

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->b(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->l:[Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->e(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->f(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->l(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->s:J

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->s(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Lcom/wandoujia/download/rpc/InnerDownloadRequest$VerifyType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/wandoujia/download/rpc/InnerDownloadRequest$a;->a:[I

    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->s(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Lcom/wandoujia/download/rpc/InnerDownloadRequest$VerifyType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iput-object v1, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->t:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;->PF5:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->t:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;->MD5:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->t:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->t:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    :goto_0
    invoke-static {p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;->t(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->u:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;Lo/fn3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wandoujia/download/rpc/InnerDownloadRequest;-><init>(Lcom/wandoujia/download/rpc/InnerDownloadRequest$b;)V

    return-void
.end method
