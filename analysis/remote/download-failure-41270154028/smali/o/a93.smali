.class public Lo/a93;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/a93;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/a93;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lo/a93;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lo/a93;->a:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lo/a93;->g:[B

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lo/a93;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/video/videoextractor/net/HttpHeader;

    invoke-virtual {v2}, Lcom/snaptube/video/videoextractor/net/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/snaptube/video/videoextractor/net/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lo/a93;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/a93;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/a93;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lo/a93;->a:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/a93;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/a93;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k([B)V
    .locals 0

    iput-object p1, p0, Lo/a93;->g:[B

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/a93;->e:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/a93;->f:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/a93;->b:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/a93;->d:Ljava/lang/String;

    return-void
.end method
