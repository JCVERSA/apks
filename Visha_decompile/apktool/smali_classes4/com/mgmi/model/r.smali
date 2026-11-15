.class public Lcom/mgmi/model/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mgmi/model/VASTAd;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/IncentiveVastAd;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTFloatAd;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/platform/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTChannelAd;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTBarrageAd;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/mgmi/g/a;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:F

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/model/r;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/model/r;->r:Z

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/mgmi/model/r;->s:F

    iput v0, p0, Lcom/mgmi/model/r;->t:I

    iput-boolean v0, p0, Lcom/mgmi/model/r;->u:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    .line 2
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public a(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/mgmi/model/r;->i:I

    return-void
.end method

.method public a(Lcom/mgmi/g/a;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mgmi/model/r;->n:Lcom/mgmi/g/a;

    return-void
.end method

.method public a(Lcom/mgmi/model/IncentiveVastAd;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgmi/model/r;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/r;->f:Ljava/util/List;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/r;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTBarrageAd;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/mgmi/model/r;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTChannelAd;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mgmi/model/r;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mgmi/model/r;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/mgmi/model/r;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/mgmi/model/r;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/mgmi/model/r;->o:Z

    return-void
.end method

.method public b()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v5, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/model/VASTAd;

    .line 3
    invoke-virtual {v5}, Lcom/mgmi/model/VASTAd;->getSkipTimeout()I

    move-result v6

    if-lez v6, :cond_1

    .line 4
    invoke-virtual {v5}, Lcom/mgmi/model/VASTAd;->getSkipTimeout()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-le v3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-ge v1, v0, :cond_4

    .line 5
    iget-object v2, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/VASTAd;

    .line 6
    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v4
.end method

.method public b(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mgmi/model/r;->d:I

    return-void
.end method

.method public b(Lcom/mgmi/model/VASTAd;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-static {p1}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/mgmi/model/r;->s:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/mgmi/model/r;->r:Z

    return-void
.end method

.method public c()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3
    iget-object v5, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/model/VASTAd;

    .line 4
    invoke-virtual {v5}, Lcom/mgmi/model/VASTAd;->getSkipTimeout()I

    move-result v6

    if-lez v6, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/mgmi/model/VASTAd;->getSkipTimeout()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-ge v1, v0, :cond_5

    .line 6
    iget-object v2, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/VASTAd;

    .line 7
    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return v4
.end method

.method public c(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mgmi/model/r;->g:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/mgmi/model/r;->u:Z

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTFloatAd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/r;->j:Ljava/util/List;

    return-object p0
.end method

.method public d(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTAd;->setAdRollTime(I)V

    :cond_0
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    return-object p0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/r;->p:I

    return-void
.end method

.method public f()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/r;->i:I

    return p0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/r;->q:I

    return-void
.end method

.method public g()Lcom/mgmi/model/VASTAd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/r;->c:Lcom/mgmi/model/VASTAd;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgmi/model/r;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    iput-object v0, p0, Lcom/mgmi/model/r;->c:Lcom/mgmi/model/VASTAd;

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public g(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/model/r;->t:I

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTChannelAd;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/r;->l:Ljava/util/List;

    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()I
    .locals 2

    iget-object p0, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public k()I
    .locals 3

    iget-object p0, p0, Lcom/mgmi/model/r;->e:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getStaticResources()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public l()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/platform/view/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/r;->k:Ljava/util/List;

    return-object p0
.end method

.method public m()Lcom/mgmi/g/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/r;->n:Lcom/mgmi/g/a;

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/r;->o:Z

    return p0
.end method

.method public o()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/model/r;->s:F

    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/r;->r:Z

    return p0
.end method
