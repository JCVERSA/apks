.class public Lcom/app/hubert/guide/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public c:I

.field public d:I

.field public e:[I

.field public f:Ldf7;

.field public g:Landroid/view/animation/Animation;

.field public h:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/model/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/hubert/guide/model/a;->b:Z

    return-void
.end method

.method public static l()Lcom/app/hubert/guide/model/a;
    .locals 1

    new-instance v0, Lcom/app/hubert/guide/model/a;

    invoke-direct {v0}, Lcom/app/hubert/guide/model/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/b;)Lcom/app/hubert/guide/model/a;
    .locals 1

    new-instance v0, Lcom/app/hubert/guide/model/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/app/hubert/guide/model/c;-><init>(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;II)V

    if-eqz p5, :cond_0

    iget-object p1, p5, Lcom/app/hubert/guide/model/b;->b:Lsr8;

    if-eqz p1, :cond_0

    iput-object v0, p1, Lsr8;->highLight:Lcom/app/hubert/guide/model/HighLight;

    :cond_0
    invoke-virtual {v0, p5}, Lcom/app/hubert/guide/model/c;->e(Lcom/app/hubert/guide/model/b;)V

    iget-object p1, p0, Lcom/app/hubert/guide/model/a;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/b;)Lcom/app/hubert/guide/model/a;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/a;->a(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/b;)Lcom/app/hubert/guide/model/a;

    move-result-object p0

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/app/hubert/guide/model/a;->c:I

    return p0
.end method

.method public d()[I
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/a;->e:[I

    return-object p0
.end method

.method public e()Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/a;->g:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public f()Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/a;->h:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/a;->a:Ljava/util/List;

    return-object p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/app/hubert/guide/model/a;->d:I

    return p0
.end method

.method public i()Ldf7;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/a;->f:Ldf7;

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/app/hubert/guide/model/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/hubert/guide/model/HighLight;

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->getOptions()Lcom/app/hubert/guide/model/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/app/hubert/guide/model/b;->b:Lsr8;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/app/hubert/guide/model/a;->b:Z

    return p0
.end method

.method public m(I)Lcom/app/hubert/guide/model/a;
    .locals 0

    iput p1, p0, Lcom/app/hubert/guide/model/a;->c:I

    return-object p0
.end method

.method public n(Z)Lcom/app/hubert/guide/model/a;
    .locals 0

    iput-boolean p1, p0, Lcom/app/hubert/guide/model/a;->b:Z

    return-object p0
.end method
