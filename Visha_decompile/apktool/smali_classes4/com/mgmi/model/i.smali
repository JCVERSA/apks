.class public Lcom/mgmi/model/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/model/i;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/i;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/i;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/i;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/i;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->k:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/i;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/model/i;->e:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/i;->d:Ljava/util/List;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/i;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/i;->f:Ljava/util/List;

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->o:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/i;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/i;->g:Ljava/util/List;

    return-object p0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->r:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/i;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/i;->h:Ljava/util/List;

    return-object p0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->s:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/i;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgmi/model/i;->k:I

    return p0
.end method

.method public f(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->p:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/i;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/i;->l:I

    return p0
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/i;->m:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/i;->q:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/i;->r:I

    return p0
.end method

.method public h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/i;->n:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/i;->i:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/i;->s:I

    return p0
.end method

.method public i(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->t:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/i;->j:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/i;->m:I

    return p0
.end method

.method public j(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/i;->u:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/i;->c:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/i;->n:I

    return p0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/i;->v:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/i;->q:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/i;->w:Ljava/lang/String;

    return-void
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/i;->e:Z

    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/i;->u:I

    return p0
.end method
