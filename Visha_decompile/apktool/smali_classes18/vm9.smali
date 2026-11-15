.class public final Lvm9;
.super Lb82;
.source "SourceFile"

# interfaces
.implements Lcdb;


# instance fields
.field public final c:Lsm9;

.field public final d:Leh5;


# direct methods
.method public constructor <init>(Lsm9;Leh5;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb82;-><init>()V

    iput-object p1, p0, Lvm9;->c:Lsm9;

    iput-object p2, p0, Lvm9;->d:Leh5;

    return-void
.end method


# virtual methods
.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lvm9;->V0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lvm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lvm9;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lvm9;->V0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lvm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lvm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public P0(Z)Lsm9;
    .locals 1

    invoke-virtual {p0}, Lvm9;->U0()Lsm9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object v0

    invoke-virtual {p0}, Lvm9;->l0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmgb;->M0(Z)Lmgb;

    move-result-object p0

    invoke-static {v0, p0}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lsm9;

    return-object p0
.end method

.method public bridge synthetic Q()Lmgb;
    .locals 0

    invoke-virtual {p0}, Lvm9;->U0()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvm9;->U0()Lsm9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p1

    invoke-virtual {p0}, Lvm9;->l0()Leh5;

    move-result-object p0

    invoke-static {p1, p0}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lsm9;

    return-object p0
.end method

.method public R0()Lsm9;
    .locals 0

    iget-object p0, p0, Lvm9;->c:Lsm9;

    return-object p0
.end method

.method public bridge synthetic S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, Lvm9;->V0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lvm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic T0(Lsm9;)Lb82;
    .locals 0

    invoke-virtual {p0, p1}, Lvm9;->W0(Lsm9;)Lvm9;

    move-result-object p0

    return-object p0
.end method

.method public U0()Lsm9;
    .locals 0

    invoke-virtual {p0}, Lvm9;->R0()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public V0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lvm9;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvm9;

    invoke-virtual {p0}, Lvm9;->R0()Lsm9;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lsm9;

    invoke-virtual {p0}, Lvm9;->l0()Leh5;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lvm9;-><init>(Lsm9;Leh5;)V

    return-object v0
.end method

.method public W0(Lsm9;)Lvm9;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvm9;

    invoke-virtual {p0}, Lvm9;->l0()Leh5;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lvm9;-><init>(Lsm9;Leh5;)V

    return-object v0
.end method

.method public l0()Leh5;
    .locals 0

    iget-object p0, p0, Lvm9;->d:Leh5;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[@EnhancedForWarnings("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm9;->l0()Leh5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm9;->U0()Lsm9;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
