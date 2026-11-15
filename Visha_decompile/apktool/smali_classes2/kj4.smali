.class public Lkj4;
.super Leg5;
.source "SourceFile"


# instance fields
.field public final i:Ljj4;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1}, Leg5;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldg5;

    iget-object v2, v2, Ldg5;->b:Ljava/lang/Object;

    check-cast v2, Ljj4;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljj4;->f()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljj4;

    new-array v0, v1, [F

    new-array v1, v1, [I

    invoke-direct {p1, v0, v1}, Ljj4;-><init>([F[I)V

    iput-object p1, p0, Lkj4;->i:Ljj4;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkj4;->q(Ldg5;F)Ljj4;

    move-result-object p0

    return-object p0
.end method

.method public q(Ldg5;F)Ljj4;
    .locals 2

    iget-object v0, p0, Lkj4;->i:Ljj4;

    iget-object v1, p1, Ldg5;->b:Ljava/lang/Object;

    check-cast v1, Ljj4;

    iget-object p1, p1, Ldg5;->c:Ljava/lang/Object;

    check-cast p1, Ljj4;

    invoke-virtual {v0, v1, p1, p2}, Ljj4;->g(Ljj4;Ljj4;F)V

    iget-object p0, p0, Lkj4;->i:Ljj4;

    return-object p0
.end method
