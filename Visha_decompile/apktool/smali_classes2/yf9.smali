.class public Lyf9;
.super Lab0;
.source "SourceFile"


# instance fields
.field public final i:Lsf9;

.field public final j:Landroid/graphics/Path;

.field public k:Landroid/graphics/Path;

.field public l:Landroid/graphics/Path;

.field public m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lab0;-><init>(Ljava/util/List;)V

    new-instance p1, Lsf9;

    invoke-direct {p1}, Lsf9;-><init>()V

    iput-object p1, p0, Lyf9;->i:Lsf9;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lyf9;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyf9;->q(Ldg5;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public q(Ldg5;F)Landroid/graphics/Path;
    .locals 10

    iget-object v0, p1, Ldg5;->b:Ljava/lang/Object;

    check-cast v0, Lsf9;

    iget-object v1, p1, Ldg5;->c:Ljava/lang/Object;

    check-cast v1, Lsf9;

    iget-object v2, p0, Lyf9;->i:Lsf9;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v0, v3, p2}, Lsf9;->c(Lsf9;Lsf9;F)V

    iget-object v2, p0, Lyf9;->i:Lsf9;

    iget-object v3, p0, Lyf9;->m:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v4, p0, Lyf9;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lag9;

    invoke-interface {v4, v2}, Lag9;->g(Lsf9;)Lsf9;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lyf9;->j:Landroid/graphics/Path;

    invoke-static {v2, v3}, Lxp6;->h(Lsf9;Landroid/graphics/Path;)V

    iget-object v2, p0, Lab0;->e:Liu5;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lyf9;->k:Landroid/graphics/Path;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lyf9;->k:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lyf9;->l:Landroid/graphics/Path;

    :cond_2
    iget-object v2, p0, Lyf9;->k:Landroid/graphics/Path;

    invoke-static {v0, v2}, Lxp6;->h(Lsf9;Landroid/graphics/Path;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Lyf9;->l:Landroid/graphics/Path;

    invoke-static {v1, v0}, Lxp6;->h(Lsf9;Landroid/graphics/Path;)V

    :cond_3
    iget-object v2, p0, Lab0;->e:Liu5;

    iget v3, p1, Ldg5;->g:F

    iget-object p1, p1, Ldg5;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lyf9;->k:Landroid/graphics/Path;

    if-nez v1, :cond_4

    move-object v6, v5

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lyf9;->l:Landroid/graphics/Path;

    move-object v6, p1

    :goto_2
    invoke-virtual {p0}, Lab0;->e()F

    move-result v8

    invoke-virtual {p0}, Lab0;->f()F

    move-result v9

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0

    :cond_5
    iget-object p0, p0, Lyf9;->j:Landroid/graphics/Path;

    return-object p0
.end method

.method public r(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lyf9;->m:Ljava/util/List;

    return-void
.end method
