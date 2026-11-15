.class public abstract Lorg/jsoup/nodes/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/j$b;
    }
.end annotation


# instance fields
.field a:Lorg/jsoup/nodes/j;

.field b:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private K(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/jsoup/nodes/j;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/j;->U(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private d(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->j()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p2, v0, v1}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-array v1, v1, [Lorg/jsoup/nodes/j;

    .line 40
    .line 41
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, [Lorg/jsoup/nodes/j;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/j;->b(I[Lorg/jsoup/nodes/j;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private u(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->o0()Lorg/jsoup/select/Elements;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/j;->u(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    return-object p1
.end method


# virtual methods
.method public A()Lorg/jsoup/nodes/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v2, p0, Lorg/jsoup/nodes/j;->b:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v3, v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/jsoup/nodes/j;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object v1
.end method

.method public abstract B()Ljava/lang/String;
.end method

.method C()V
    .locals 0

    .line 1
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->E(Ljava/lang/Appendable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method protected E(Ljava/lang/Appendable;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/j$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->v()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/j$b;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Lorg/jsoup/select/d;->c(Ltz/a;Lorg/jsoup/nodes/j;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method abstract F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method abstract G(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method public H()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->R()Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public I()Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public M(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method protected N(Lorg/jsoup/nodes/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lorg/jsoup/nodes/j;->b:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/j;->K(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 25
    .line 26
    return-void
.end method

.method protected O(Lorg/jsoup/nodes/j;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/j;->T(Lorg/jsoup/nodes/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected P(Lorg/jsoup/nodes/j;Lorg/jsoup/nodes/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p2, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget v0, p1, Lorg/jsoup/nodes/j;->b:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iput-object p0, p2, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/j;->U(I)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    iput-object p2, p1, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 37
    .line 38
    return-void
.end method

.method public Q(Lorg/jsoup/nodes/j;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/j;->P(Lorg/jsoup/nodes/j;Lorg/jsoup/nodes/j;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public R()Lorg/jsoup/nodes/j;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    iget-object v1, v0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-object v0
.end method

.method public S(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/nodes/j$a;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/j$a;-><init>(Lorg/jsoup/nodes/j;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->X(Ltz/a;)Lorg/jsoup/nodes/j;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected T(Lorg/jsoup/nodes/j;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 12
    .line 13
    return-void
.end method

.method protected U(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/nodes/j;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public V()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/j;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public W()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lorg/jsoup/nodes/j;

    .line 40
    .line 41
    if-eq v2, p0, :cond_1

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object v1
.end method

.method public X(Ltz/a;)Lorg/jsoup/nodes/j;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Lorg/jsoup/select/d;->c(Ltz/a;Lorg/jsoup/nodes/j;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public Y()Lorg/jsoup/nodes/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/jsoup/nodes/j;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 26
    .line 27
    iget v2, p0, Lorg/jsoup/nodes/j;->b:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->p()[Lorg/jsoup/nodes/j;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/j;->b(I[Lorg/jsoup/nodes/j;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->L()V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public Z(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    instance-of v2, v2, Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->I()Lorg/jsoup/nodes/j;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v3

    .line 23
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {p1, v2, v4}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/jsoup/nodes/j;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    instance-of v4, v2, Lorg/jsoup/nodes/Element;

    .line 40
    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lorg/jsoup/nodes/j;->u(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 51
    .line 52
    invoke-virtual {v4, p0, v2}, Lorg/jsoup/nodes/j;->P(Lorg/jsoup/nodes/j;Lorg/jsoup/nodes/j;)V

    .line 53
    .line 54
    .line 55
    new-array v4, v0, [Lorg/jsoup/nodes/j;

    .line 56
    .line 57
    aput-object p0, v4, v1

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/j;->c([Lorg/jsoup/nodes/j;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-lez v3, :cond_2

    .line 67
    .line 68
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ge v1, v3, :cond_2

    .line 73
    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lorg/jsoup/nodes/j;

    .line 79
    .line 80
    iget-object v4, v3, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    .line 86
    .line 87
    .line 88
    add-int/2addr v1, v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    return-object p0

    .line 91
    :cond_3
    :goto_2
    return-object v3
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->w(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->j()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Lorg/jsoup/helper/c;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method protected varargs b(I[Lorg/jsoup/nodes/j;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lorg/jsoup/helper/d;->f([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, p2

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, p2, v2

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/j;->O(Lorg/jsoup/nodes/j;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/j;->K(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected varargs c([Lorg/jsoup/nodes/j;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, p1, v2

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/j;->O(Lorg/jsoup/nodes/j;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    add-int/lit8 v4, v4, -0x1

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/j;->U(I)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->q()Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/j;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/j;->d(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->x()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const-string v0, "abs:"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    return-object v1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->y(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public abstract i()Lorg/jsoup/nodes/b;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public k(Ljava/lang/String;)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/j;->b:I

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/j;->d(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 10
    .line 11
    iget v1, p0, Lorg/jsoup/nodes/j;->b:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Lorg/jsoup/nodes/j;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, v2, v3

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/j;->b(I[Lorg/jsoup/nodes/j;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public m(I)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/jsoup/nodes/j;

    .line 10
    .line 11
    return-object p1
.end method

.method public abstract n()I
.end method

.method public o()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected p()[Lorg/jsoup/nodes/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->n()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-array v1, v1, [Lorg/jsoup/nodes/j;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lorg/jsoup/nodes/j;

    .line 16
    .line 17
    return-object v0
.end method

.method public q()Lorg/jsoup/nodes/j;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->r(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/jsoup/nodes/j;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/jsoup/nodes/j;->n()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/jsoup/nodes/j;->t()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lorg/jsoup/nodes/j;

    .line 42
    .line 43
    invoke-virtual {v6, v2}, Lorg/jsoup/nodes/j;->r(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method

.method protected r(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jsoup/nodes/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    iput-object p1, v0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p0, Lorg/jsoup/nodes/j;->b:I

    .line 14
    .line 15
    :goto_0
    iput p1, v0, Lorg/jsoup/nodes/j;->b:I

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method protected abstract s(Ljava/lang/String;)V
.end method

.method protected abstract t()Ljava/util/List;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method v()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->H()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Document;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    return-object v0
.end method

.method public w(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "abs:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method protected abstract x()Z
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/j;->a:Lorg/jsoup/nodes/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method protected z(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->j()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    mul-int/2addr p2, p3

    .line 12
    invoke-static {p2}, Lorg/jsoup/helper/c;->l(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 17
    .line 18
    .line 19
    return-void
.end method
