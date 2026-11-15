.class public Lcom/mgmi/net/bean/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/mgmi/g/a;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mgmi/net/bean/b;->b:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/net/bean/b;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/mgmi/net/bean/b;->b:J

    return-void
.end method

.method public a(Lcom/mgmi/g/a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgmi/net/bean/b;->a:Lcom/mgmi/g/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/net/bean/b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mgmi/net/bean/b;->i:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/net/bean/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/net/bean/b;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/net/bean/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/net/bean/b;->j:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgmi/net/bean/b;->d:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/mgmi/net/bean/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgmi/net/bean/b;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/net/bean/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/net/bean/b;->g:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget p0, p0, Lcom/mgmi/net/bean/b;->f:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/mgmi/net/bean/b;->h:I

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/net/bean/b;->i:Z

    return p0
.end method

.method public i()Lcom/mgmi/g/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/b;->a:Lcom/mgmi/g/a;

    return-object p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/net/bean/b;->j:Z

    return p0
.end method
