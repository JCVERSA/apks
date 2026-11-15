.class public Lcom/transsion/sniffer_load/okdownload/a;
.super Lba0;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lba0;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->l:I

    .line 20
    const-string v0, "HD"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lba0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->l:I

    .line 3
    const-string v0, "HD"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->m:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/transsion/sniffer_load/okdownload/a;->f:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    .line 8
    invoke-static {p6, p3}, Lcom/transsion/sniffer_load/okdownload/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lba0;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->l:I

    .line 11
    const-string v0, "HD"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->m:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/transsion/sniffer_load/okdownload/a;->f:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    if-eqz p7, :cond_0

    .line 16
    iput-object p3, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p6, p3}, Lcom/transsion/sniffer_load/okdownload/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lzu3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/transsion/sniffer_load/okdownload/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/lzy/okgo/model/Progress;
    .locals 4

    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-static {}, Lr13;->e()Lr13;

    move-result-object v1

    invoke-virtual {v1}, Lr13;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->source:I

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->i:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;-><init>()V

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;->sniffRequestBody:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    :cond_2
    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhk3;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/sniffer_load/okdownload/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lb23;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xdl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->mimeType:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    iput-boolean v1, v0, Lcom/lzy/okgo/model/Progress;->isClient:Z

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/model/Progress;->setOriginSite(Ljava/lang/String;)V

    invoke-virtual {p0}, Lba0;->a()I

    move-result p0

    iput p0, v0, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9]{2,8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public e()I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->l:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/transsion/sniffer_load/okdownload/a;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->l:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->m:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DowningItem{videoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uaAgent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cookie=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sniffId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
