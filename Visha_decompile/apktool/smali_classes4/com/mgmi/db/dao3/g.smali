.class public Lcom/mgmi/db/dao3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->a:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lcom/mgmi/db/dao3/g;->b:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lcom/mgmi/db/dao3/g;->c:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lcom/mgmi/db/dao3/g;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/mgmi/db/dao3/g;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/mgmi/db/dao3/g;->f:Ljava/lang/Long;

    .line 9
    iput-object p7, p0, Lcom/mgmi/db/dao3/g;->g:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->b:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public c(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->c:Ljava/lang/Long;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->f:Ljava/lang/Long;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/g;->g:Ljava/lang/Long;

    return-void
.end method

.method public f()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public g()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public h()Z
    .locals 6

    iget-object v0, p0, Lcom/mgmi/db/dao3/g;->c:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mgmi/db/dao3/g;->b:Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgmi/db/dao3/g;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/db/dao3/g;->c:Ljava/lang/Long;

    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->b:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public i()Z
    .locals 5

    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->g:Ljava/lang/Long;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public j()Z
    .locals 5

    iget-object v0, p0, Lcom/mgmi/db/dao3/g;->f:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Lcom/mgmi/db/dao3/g;->f:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method
