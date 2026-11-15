.class public Lcom/mgmi/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ll2d;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll2d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll2d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/a;->b:I

    new-instance v0, Ll2d;

    const-string v1, ""

    invoke-direct {v0, v1}, Ll2d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgmi/model/a;->a:Ll2d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll2d;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/mgmi/model/a;->e:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgmi/model/a;->a:Ll2d;

    iget-object v1, p0, Lcom/mgmi/model/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll2d;->a(Ljava/lang/String;)Ll2d;

    .line 2
    iget-object v0, p0, Lcom/mgmi/model/a;->a:Ll2d;

    iget-object v1, p0, Lcom/mgmi/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll2d;->c(Ljava/lang/String;)Ll2d;

    .line 3
    iget v0, p0, Lcom/mgmi/model/a;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mgmi/model/a;->a:Ll2d;

    invoke-virtual {v0, p1}, Ll2d;->e(Ljava/lang/String;)Ll2d;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mgmi/model/a;->a:Ll2d;

    invoke-virtual {v0, p1}, Ll2d;->g(Ljava/lang/String;)Ll2d;

    .line 6
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mgmi/model/a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mgmi/model/a;->b:I

    return-void
.end method

.method public a(Ll2d;)V
    .locals 2

    .line 7
    iget v0, p0, Lcom/mgmi/model/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgmi/model/a;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/a;->e:Ljava/util/List;

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/a;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/mgmi/model/a;->f:Ljava/util/List;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/a;->f:Ljava/util/List;

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/mgmi/model/a;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll2d;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/a;->f:Ljava/util/List;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ll2d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/a;->a:Ll2d;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/a;->d:Ljava/lang/String;

    return-void
.end method
