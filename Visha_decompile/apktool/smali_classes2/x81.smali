.class public Lx81;
.super Leg5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Leg5;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx81;->s(Ldg5;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public q()I
    .locals 2

    invoke-virtual {p0}, Lab0;->b()Ldg5;

    move-result-object v0

    invoke-virtual {p0}, Lab0;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lx81;->r(Ldg5;F)I

    move-result p0

    return p0
.end method

.method public r(Ldg5;F)I
    .locals 9

    iget-object v0, p1, Ldg5;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ldg5;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lab0;->e:Liu5;

    if-eqz v1, :cond_0

    iget-object v0, p1, Ldg5;->h:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget v2, p1, Ldg5;->g:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p1, Ldg5;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, p1, Ldg5;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {p0}, Lab0;->e()F

    move-result v7

    invoke-virtual {p0}, Lab0;->f()F

    move-result v8

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p0, v0}, Lxp6;->b(FFF)F

    move-result p0

    iget-object p2, p1, Ldg5;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Ldg5;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p2, p1}, Ldd4;->c(FII)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(Ldg5;F)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx81;->r(Ldg5;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
