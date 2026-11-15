.class public Lpv5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public c:F

.field public d:I

.field public e:I

.field public f:Z

.field public g:J

.field public h:Z

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lpv5;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lpv5;->e:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lpv5;->g:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lpv5;->h:Z

    .line 6
    iput-object p1, p0, Lpv5;->a:Ljava/lang/String;

    .line 7
    iput v0, p0, Lpv5;->d:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpv5;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lzv5;)V
    .locals 0

    iget-object p0, p0, Lpv5;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()F
    .locals 2

    iget-object p0, p0, Lpv5;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv5;

    invoke-virtual {v1}, Lzv5;->d()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lpv5;->d:I

    return p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lpv5;->i:J

    return-wide v0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lpv5;->c:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lpv5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lpv5;

    iget-object p0, p0, Lpv5;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lpv5;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lpv5;->b:Ljava/util/List;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lpv5;->e:I

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lpv5;->f:Z

    return p0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lpv5;->f:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lpv5;->h:Z

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lpv5;->d:I

    return-void
.end method

.method public l(J)V
    .locals 0

    iput-wide p1, p0, Lpv5;->i:J

    return-void
.end method

.method public m(F)V
    .locals 0

    iput p1, p0, Lpv5;->c:F

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lpv5;->e:I

    return-void
.end method
