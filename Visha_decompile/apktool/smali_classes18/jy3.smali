.class public final Ljy3;
.super Lfy3;
.source "SourceFile"

# interfaces
.implements Lcdb;


# instance fields
.field public final e:Lfy3;

.field public final f:Leh5;


# direct methods
.method public constructor <init>(Lfy3;Leh5;)V
    .locals 2

    const-string v0, "origin"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {p1}, Lfy3;->R0()Lsm9;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lfy3;-><init>(Lsm9;Lsm9;)V

    iput-object p1, p0, Ljy3;->e:Lfy3;

    iput-object p2, p0, Ljy3;->f:Leh5;

    return-void
.end method


# virtual methods
.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Ljy3;->U0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Ljy3;

    move-result-object p0

    return-object p0
.end method

.method public M0(Z)Lmgb;
    .locals 1

    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmgb;->M0(Z)Lmgb;

    move-result-object v0

    invoke-virtual {p0}, Ljy3;->l0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmgb;->M0(Z)Lmgb;

    move-result-object p0

    invoke-static {v0, p0}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Ljy3;->U0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Ljy3;

    move-result-object p0

    return-object p0
.end method

.method public O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmgb;->O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;

    move-result-object p1

    invoke-virtual {p0}, Ljy3;->l0()Leh5;

    move-result-object p0

    invoke-static {p1, p0}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public P0()Lsm9;
    .locals 0

    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object p0

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic Q()Lmgb;
    .locals 0

    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object p0

    return-object p0
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljy3;->l0()Leh5;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lfy3;->S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public T0()Lfy3;
    .locals 0

    iget-object p0, p0, Ljy3;->e:Lfy3;

    return-object p0
.end method

.method public U0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Ljy3;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljy3;

    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lfy3;

    invoke-virtual {p0}, Ljy3;->l0()Leh5;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljy3;-><init>(Lfy3;Leh5;)V

    return-object v0
.end method

.method public l0()Leh5;
    .locals 0

    iget-object p0, p0, Ljy3;->f:Leh5;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[@EnhancedForWarnings("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljy3;->l0()Leh5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljy3;->T0()Lfy3;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
