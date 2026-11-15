.class public Lcom/mgmi/model/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/model/u;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/model/u;->f:Z

    iput-boolean v0, p0, Lcom/mgmi/model/u;->g:Z

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/u;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/u;

    invoke-virtual {v3, v0}, Lcom/mgmi/model/u;->a(Z)V

    .line 7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/u;

    invoke-virtual {v3, v0}, Lcom/mgmi/model/u;->b(Z)V

    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/u;

    invoke-virtual {v3}, Lcom/mgmi/model/u;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v3, v1

    .line 9
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/model/u;

    invoke-virtual {v4}, Lcom/mgmi/model/u;->f()I

    move-result v4

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v1, v6, :cond_1

    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/model/u;

    rsub-int/lit8 v5, v3, 0x64

    invoke-virtual {v4, v5}, Lcom/mgmi/model/u;->a(I)Lcom/mgmi/model/u;

    goto :goto_2

    :cond_1
    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/model/u;

    invoke-virtual {v5, v4}, Lcom/mgmi/model/u;->a(I)Lcom/mgmi/model/u;

    add-int/2addr v3, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    move v2, v1

    .line 14
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 15
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/u;

    invoke-virtual {v3}, Lcom/mgmi/model/u;->f()I

    move-result v3

    if-lt v3, v2, :cond_3

    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/u;

    invoke-virtual {v1}, Lcom/mgmi/model/u;->f()I

    move-result v1

    move v2, v1

    move v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 17
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/u;

    invoke-virtual {p0, v5}, Lcom/mgmi/model/u;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/mgmi/model/u;
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/model/u;->c:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mgmi/model/u;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/u;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/u;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgmi/model/u;->f:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/u;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgmi/model/u;->g:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/model/u;->f:Z

    return p0
.end method

.method public c(Ljava/lang/String;)Lcom/mgmi/model/u;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/u;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/model/u;->g:Z

    return p0
.end method

.method public d(Ljava/lang/String;)Lcom/mgmi/model/u;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/u;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/u;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/u;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/u;->c:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/u;->d:Ljava/lang/String;

    return-object p0
.end method
