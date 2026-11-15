.class public abstract Lorg/jsoup/nodes/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/g$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/List;


# instance fields
.field public b:Lorg/jsoup/nodes/g;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/g;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public B(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    const/16 p0, 0xa

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->g()I

    move-result p1

    mul-int/2addr p2, p1

    invoke-static {p2}, Lm0a;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public C()Lorg/jsoup/nodes/g;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lorg/jsoup/nodes/g;->c:I

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/g;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public abstract E()Ljava/lang/String;
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->H(Ljava/lang/Appendable;)V

    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public H(Ljava/lang/Appendable;)V
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/g$a;

    invoke-static {p0}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/g$a;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/d;->c(Li17;Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method public abstract I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method public abstract J(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method public K()Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->V()Lorg/jsoup/nodes/g;

    move-result-object p0

    instance-of v0, p0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jsoup/nodes/Document;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public L()Lorg/jsoup/nodes/g;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public final M()Lorg/jsoup/nodes/g;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public N()Lorg/jsoup/nodes/g;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lorg/jsoup/nodes/g;->c:I

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lorg/jsoup/nodes/g;->c:I

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/g;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final O(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->Y(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public P()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/g;->R(Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->H(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public R(Lorg/jsoup/nodes/g;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ldnb;->c(Z)V

    iget v0, p1, Lorg/jsoup/nodes/g;->c:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->O(I)V

    const/4 p0, 0x0

    iput-object p0, p1, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    return-void
.end method

.method public S(Lorg/jsoup/nodes/g;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/g;->X(Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method public T(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ldnb;->c(Z)V

    invoke-static {p2}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p2, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/g;->R(Lorg/jsoup/nodes/g;)V

    :cond_1
    iget v0, p1, Lorg/jsoup/nodes/g;->c:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object p0, p2, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/g;->Y(I)V

    const/4 p0, 0x0

    iput-object p0, p1, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    return-void
.end method

.method public U(Lorg/jsoup/nodes/g;)V
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/g;->T(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method public V()Lorg/jsoup/nodes/g;
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->u(Ljava/lang/String;)V

    return-void
.end method

.method public X(Lorg/jsoup/nodes/g;)V
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/g;->R(Lorg/jsoup/nodes/g;)V

    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    return-void
.end method

.method public Y(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/g;->c:I

    return-void
.end method

.method public Z()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/g;->c:I

    return p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lm0a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public a0()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    if-eq v2, p0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public b0()Lorg/jsoup/nodes/g;
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    iget v2, p0, Lorg/jsoup/nodes/g;->c:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->r()[Lorg/jsoup/nodes/g;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/g;->c(I[Lorg/jsoup/nodes/g;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->P()V

    return-object v0
.end method

.method public varargs c(I[Lorg/jsoup/nodes/g;)V
    .locals 7

    invoke-static {p2}, Ldnb;->i(Ljava/lang/Object;)V

    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->L()Lorg/jsoup/nodes/g;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->p()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v3

    array-length v4, p2

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_2

    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v4, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->v()Lorg/jsoup/nodes/g;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    array-length v0, p2

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    aget-object v0, p2, v1

    iput-object p0, v0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->O(I)V

    return-void

    :cond_4
    :goto_2
    invoke-static {p2}, Ldnb;->e([Ljava/lang/Object;)V

    array-length v2, p2

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, p2, v1

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/g;->S(Lorg/jsoup/nodes/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->O(I)V

    return-void
.end method

.method public c0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 4

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Ldx7;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-nez v2, :cond_2

    return-object p0

    :cond_2
    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/g;->x(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p0, v1}, Lorg/jsoup/nodes/g;->T(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    :cond_3
    filled-new-array {p0}, [Lorg/jsoup/nodes/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/g;->d([Lorg/jsoup/nodes/g;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/g;->R(Lorg/jsoup/nodes/g;)V

    :cond_5
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->i0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->s()Lorg/jsoup/nodes/g;

    move-result-object p0

    return-object p0
.end method

.method public varargs d([Lorg/jsoup/nodes/g;)V
    .locals 5

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/g;->S(Lorg/jsoup/nodes/g;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/g;->Y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 3

    invoke-static {p2}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->L()Lorg/jsoup/nodes/g;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->L()Lorg/jsoup/nodes/g;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Ldx7;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jsoup/nodes/g;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/g;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/g;->c(I[Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->e(ILjava/lang/String;)V

    return-object p0
.end method

.method public g(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    iget v1, p0, Lorg/jsoup/nodes/g;->c:I

    add-int/lit8 v1, v1, 0x1

    filled-new-array {p1}, [Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/g;->c(I[Lorg/jsoup/nodes/g;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->z()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v0

    invoke-virtual {v0}, Ldx7;->g()Ltw7;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltw7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract j()Lorg/jsoup/nodes/b;
.end method

.method public k()I
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public m(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/g;->c:I

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->e(ILjava/lang/String;)V

    return-object p0
.end method

.method public n(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    iget v1, p0, Lorg/jsoup/nodes/g;->c:I

    filled-new-array {p1}, [Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/g;->c(I[Lorg/jsoup/nodes/g;)V

    return-object p0
.end method

.method public o(I)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public abstract p()I
.end method

.method public q()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->p()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/jsoup/nodes/g;->d:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public r()[Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jsoup/nodes/g;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public s()Lorg/jsoup/nodes/g;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->p()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->w()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/g;

    invoke-virtual {v5, v1}, Lorg/jsoup/nodes/g;->t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, v0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/jsoup/nodes/g;->c:I

    :goto_0
    iput p0, v0, Lorg/jsoup/nodes/g;->c:I

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->G()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract u(Ljava/lang/String;)V
.end method

.method public abstract v()Lorg/jsoup/nodes/g;
.end method

.method public abstract w()Ljava/util/List;
.end method

.method public final x(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->t0()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->x(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public y(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j()Lorg/jsoup/nodes/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract z()Z
.end method
