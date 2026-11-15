.class public final Lyy9;
.super Lw2;
.source "SourceFile"

# interfaces
.implements Lna5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyy9$a;
    }
.end annotation


# instance fields
.field public final a:Lad1;

.field public final b:Lu95;

.field public final c:Lkotlinx/serialization/json/internal/WriteMode;

.field public final d:[Lna5;

.field public final e:Ltd9;

.field public final f:Lda5;

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lad1;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lw2;-><init>()V

    .line 2
    iput-object p1, p0, Lyy9;->a:Lad1;

    .line 3
    iput-object p2, p0, Lyy9;->b:Lu95;

    .line 4
    iput-object p3, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 5
    iput-object p4, p0, Lyy9;->d:[Lna5;

    .line 6
    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object p1

    invoke-virtual {p1}, Lu95;->a()Ltd9;

    move-result-object p1

    iput-object p1, p0, Lyy9;->e:Ltd9;

    .line 7
    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object p1

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object p1

    iput-object p1, p0, Lyy9;->f:Lda5;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    .line 9
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    .line 10
    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lsc5;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2}, Led1;->a(Lsc5;Lu95;)Lad1;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lyy9;-><init>(Lad1;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object p0, p0, Lyy9;->a:Lad1;

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lad1;->j(Ljava/lang/String;)V

    return-void
.end method

.method public C(Lnd9;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lp3;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lna5;->d()Lu95;

    move-result-object v0

    invoke-virtual {v0}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lp3;

    invoke-interface {p1}, Lnd9;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p0}, Lna5;->d()Lu95;

    move-result-object v1

    invoke-static {p1, v1}, Lnc8;->c(Lkotlinx/serialization/descriptors/a;Lu95;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lpc8;->b(Lp3;Lca3;Ljava/lang/Object;)Lnd9;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnc8;->a(Lnd9;Lnd9;Ljava/lang/String;)V

    invoke-interface {v1}, Lnd9;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v0

    invoke-static {v0}, Lnc8;->b(Lid9;)V

    iput-object p1, p0, Lyy9;->h:Ljava/lang/String;

    invoke-interface {v1, p0, p2}, Lnd9;->serialize(Lca3;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, p0, p2}, Lnd9;->serialize(Lca3;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public D(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    return-void
.end method

.method public G(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lyy9$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/16 v3, 0x3a

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0}, Lad1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0, v1}, Lad1;->e(C)V

    :cond_0
    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0}, Lad1;->c()V

    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->f(Lkotlinx/serialization/descriptors/a;Lu95;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1, v3}, Lad1;->e(C)V

    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0}, Lad1;->o()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v2, p0, Lyy9;->g:Z

    :cond_2
    if-ne p2, v2, :cond_8

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1, v1}, Lad1;->e(C)V

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->o()V

    iput-boolean v4, p0, Lyy9;->g:Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->a()Z

    move-result p1

    if-nez p1, :cond_5

    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1, v1}, Lad1;->e(C)V

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->c()V

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1, v3}, Lad1;->e(C)V

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->o()V

    :goto_0
    iput-boolean v4, p0, Lyy9;->g:Z

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lyy9;->g:Z

    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0}, Lad1;->c()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->a()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1, v1}, Lad1;->e(C)V

    :cond_7
    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0}, Lad1;->c()V

    :cond_8
    :goto_1
    return v2
.end method

.method public final I(Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0}, Lad1;->c()V

    iget-object v0, p0, Lyy9;->h:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyy9;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lyy9;->a:Lad1;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lad1;->e(C)V

    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0}, Lad1;->o()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    return-void
.end method

.method public a()Ltd9;
    .locals 0

    iget-object p0, p0, Lyy9;->e:Ltd9;

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/a;)Lid1;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object v0

    invoke-static {v0, p1}, Lppc;->b(Lu95;Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    iget-char v1, v0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    if-eqz v1, :cond_0

    iget-object v2, p0, Lyy9;->a:Lad1;

    invoke-virtual {v2, v1}, Lad1;->e(C)V

    iget-object v1, p0, Lyy9;->a:Lad1;

    invoke-virtual {v1}, Lad1;->b()V

    :cond_0
    iget-object v1, p0, Lyy9;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lyy9;->I(Lkotlinx/serialization/descriptors/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lyy9;->h:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    iget-object p1, p0, Lyy9;->d:[Lna5;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lyy9;

    iget-object v1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object v2

    iget-object p0, p0, Lyy9;->d:[Lna5;

    invoke-direct {p1, v1, v2, v0, p0}, Lyy9;-><init>(Lad1;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V

    :goto_0
    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/a;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->p()V

    iget-object p1, p0, Lyy9;->a:Lad1;

    invoke-virtual {p1}, Lad1;->c()V

    iget-object p1, p0, Lyy9;->a:Lad1;

    iget-object p0, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, p0}, Lad1;->e(C)V

    :cond_0
    return-void
.end method

.method public d()Lu95;
    .locals 0

    iget-object p0, p0, Lyy9;->b:Lu95;

    return-object p0
.end method

.method public e(B)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0, p1}, Lad1;->d(B)V

    :goto_0
    return-void
.end method

.method public f(Lkotlinx/serialization/descriptors/a;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    return-void
.end method

.method public g(Lkotlinx/serialization/descriptors/a;)Lca3;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzy9;->b(Lkotlinx/serialization/descriptors/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lyy9;->a:Lad1;

    instance-of v0, p1, Lcd1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lad1;->a:Lsc5;

    iget-boolean v0, p0, Lyy9;->g:Z

    new-instance v2, Lcd1;

    invoke-direct {v2, p1, v0}, Lcd1;-><init>(Lsc5;Z)V

    move-object p1, v2

    :goto_0
    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object v0

    iget-object p0, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    new-instance v2, Lyy9;

    invoke-direct {v2, p1, v0, p0, v1}, Lyy9;-><init>(Lad1;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lzy9;->a(Lkotlinx/serialization/descriptors/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lyy9;->a:Lad1;

    instance-of v0, p1, Lbd1;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lad1;->a:Lsc5;

    iget-boolean v0, p0, Lyy9;->g:Z

    new-instance v2, Lbd1;

    invoke-direct {v2, p1, v0}, Lbd1;-><init>(Lsc5;Z)V

    move-object p1, v2

    :goto_1
    invoke-virtual {p0}, Lyy9;->d()Lu95;

    move-result-object v0

    iget-object p0, p0, Lyy9;->c:Lkotlinx/serialization/json/internal/WriteMode;

    new-instance v2, Lyy9;

    invoke-direct {v2, p1, v0, p0, v1}, Lyy9;-><init>(Lad1;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Lw2;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    iget-object v0, p0, Lyy9;->f:Lda5;

    invoke-virtual {v0}, Lda5;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lw2;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public k(S)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0, p1}, Lad1;->k(S)V

    :goto_0
    return-void
.end method

.method public l(Z)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0, p1}, Lad1;->l(Z)V

    :goto_0
    return-void
.end method

.method public m(F)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0, p1}, Lad1;->g(F)V

    :goto_0
    iget-object v0, p0, Lyy9;->f:Lda5;

    invoke-virtual {v0}, Lda5;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lyy9;->a:Lad1;

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Loa5;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public r(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyy9;->f:Lda5;

    invoke-virtual {p0}, Lda5;->e()Z

    move-result p0

    return p0
.end method

.method public s(I)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0, p1}, Lad1;->h(I)V

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0, p1}, Lad1;->m(Ljava/lang/String;)V

    return-void
.end method

.method public x(D)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyy9;->a:Lad1;

    invoke-virtual {v0, p1, p2}, Lad1;->f(D)V

    :goto_0
    iget-object v0, p0, Lyy9;->f:Lda5;

    invoke-virtual {v0}, Lda5;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p0, p0, Lyy9;->a:Lad1;

    iget-object p0, p0, Lad1;->a:Lsc5;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Loa5;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public z(J)V
    .locals 1

    iget-boolean v0, p0, Lyy9;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyy9;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyy9;->a:Lad1;

    invoke-virtual {p0, p1, p2}, Lad1;->i(J)V

    :goto_0
    return-void
.end method
