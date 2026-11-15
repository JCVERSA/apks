.class public Lcom/mgmi/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/mgmi/model/t;

.field private r:Lcom/mgmi/model/Clicks;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lcom/mgmi/model/Clicks;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/d;->k:I

    iput v0, p0, Lcom/mgmi/model/d;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/model/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/model/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/model/d;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/d;->y:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/d;->x:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    const-string p2, "[DEFAULT]"

    .line 10
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    return-object p0

    .line 11
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private m(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mgmi/model/d;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/model/d;->y:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/mgmi/model/d;->y:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mgmi/model/t;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mgmi/model/d;->q:Lcom/mgmi/model/t;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/d;->t:I

    return-void
.end method

.method public a(Lcom/mgmi/model/Clicks;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/d;->r:Lcom/mgmi/model/Clicks;

    return-void
.end method

.method public a(Lcom/mgmi/model/t;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mgmi/model/d;->q:Lcom/mgmi/model/t;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->s:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/d;->x:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgmi/model/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/mgmi/model/d;->e:I

    return-void
.end method

.method public b(Lcom/mgmi/model/Clicks;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgmi/model/d;->u:Lcom/mgmi/model/Clicks;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->v:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgmi/model/d;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgmi/model/d;->p:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mgmi/model/d;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/d;->y:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/model/d;->f:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/d;->o:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/d;->n:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->m:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/d;->k:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->p:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/d;->j:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->o:Ljava/lang/String;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/d;->l:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .locals 1

    .line 2
    iget p0, p0, Lcom/mgmi/model/d;->n:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/d;->z:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/model/d;->w:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->h:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/model/d;->A:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/d;->i:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/d;->z:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/d;->A:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/d;->B:Ljava/lang/String;

    return-void
.end method
