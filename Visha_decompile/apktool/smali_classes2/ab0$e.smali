.class public final Lab0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public b:Ldg5;

.field public c:Ldg5;

.field public d:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lab0$e;->c:Ldg5;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lab0$e;->d:F

    iput-object p1, p0, Lab0$e;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lab0$e;->f(F)Ldg5;

    move-result-object p1

    iput-object p1, p0, Lab0$e;->b:Ldg5;

    return-void
.end method


# virtual methods
.method public a()Ldg5;
    .locals 0

    iget-object p0, p0, Lab0$e;->b:Ldg5;

    return-object p0
.end method

.method public b()F
    .locals 1

    iget-object p0, p0, Lab0$e;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldg5;

    invoke-virtual {p0}, Ldg5;->f()F

    move-result p0

    return p0
.end method

.method public c(F)Z
    .locals 2

    iget-object v0, p0, Lab0$e;->c:Ldg5;

    iget-object v1, p0, Lab0$e;->b:Ldg5;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lab0$e;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-object v1, p0, Lab0$e;->c:Ldg5;

    iput p1, p0, Lab0$e;->d:F

    const/4 p0, 0x0

    return p0
.end method

.method public d(F)Z
    .locals 2

    iget-object v0, p0, Lab0$e;->b:Ldg5;

    invoke-virtual {v0, p1}, Ldg5;->a(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lab0$e;->b:Ldg5;

    invoke-virtual {p0}, Ldg5;->i()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lab0$e;->f(F)Ldg5;

    move-result-object p1

    iput-object p1, p0, Lab0$e;->b:Ldg5;

    return v1
.end method

.method public e()F
    .locals 1

    iget-object p0, p0, Lab0$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldg5;

    invoke-virtual {p0}, Ldg5;->c()F

    move-result p0

    return p0
.end method

.method public final f(F)Ldg5;
    .locals 4

    iget-object v0, p0, Lab0$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg5;

    invoke-virtual {v0}, Ldg5;->f()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lab0$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lt v0, v2, :cond_3

    iget-object v1, p0, Lab0$e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldg5;

    iget-object v3, p0, Lab0$e;->b:Ldg5;

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Ldg5;->a(F)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lab0$e;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldg5;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
