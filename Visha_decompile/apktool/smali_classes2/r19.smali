.class public Lr19;
.super Leg5;
.source "SourceFile"


# instance fields
.field public final i:Lt19;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Leg5;-><init>(Ljava/util/List;)V

    new-instance p1, Lt19;

    invoke-direct {p1}, Lt19;-><init>()V

    iput-object p1, p0, Lr19;->i:Lt19;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr19;->q(Ldg5;F)Lt19;

    move-result-object p0

    return-object p0
.end method

.method public q(Ldg5;F)Lt19;
    .locals 10

    iget-object v0, p1, Ldg5;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Ldg5;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Lt19;

    check-cast v1, Lt19;

    iget-object v2, p0, Lab0;->e:Liu5;

    if-eqz v2, :cond_0

    iget v3, p1, Ldg5;->g:F

    iget-object p1, p1, Ldg5;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Lab0;->e()F

    move-result v8

    invoke-virtual {p0}, Lab0;->f()F

    move-result v9

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt19;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lr19;->i:Lt19;

    invoke-virtual {v0}, Lt19;->b()F

    move-result v2

    invoke-virtual {v1}, Lt19;->b()F

    move-result v3

    invoke-static {v2, v3, p2}, Lxp6;->i(FFF)F

    move-result v2

    invoke-virtual {v0}, Lt19;->c()F

    move-result v0

    invoke-virtual {v1}, Lt19;->c()F

    move-result v1

    invoke-static {v0, v1, p2}, Lxp6;->i(FFF)F

    move-result p2

    invoke-virtual {p1, v2, p2}, Lt19;->d(FF)V

    iget-object p0, p0, Lr19;->i:Lt19;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
