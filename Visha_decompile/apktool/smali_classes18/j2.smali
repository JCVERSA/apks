.class public final Lj2;
.super Lb82;
.source "SourceFile"


# instance fields
.field public final c:Lsm9;

.field public final d:Lsm9;


# direct methods
.method public constructor <init>(Lsm9;Lsm9;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb82;-><init>()V

    iput-object p1, p0, Lj2;->c:Lsm9;

    iput-object p2, p0, Lj2;->d:Lsm9;

    return-void
.end method


# virtual methods
.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lj2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->V0(Z)Lj2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lj2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic P0(Z)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->V0(Z)Lj2;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj2;

    invoke-virtual {p0}, Lj2;->R0()Lsm9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p1

    iget-object p0, p0, Lj2;->d:Lsm9;

    invoke-direct {v0, p1, p0}, Lj2;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public R0()Lsm9;
    .locals 0

    iget-object p0, p0, Lj2;->c:Lsm9;

    return-object p0
.end method

.method public bridge synthetic S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lj2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic T0(Lsm9;)Lb82;
    .locals 0

    invoke-virtual {p0, p1}, Lj2;->X0(Lsm9;)Lj2;

    move-result-object p0

    return-object p0
.end method

.method public final U0()Lsm9;
    .locals 0

    iget-object p0, p0, Lj2;->d:Lsm9;

    return-object p0
.end method

.method public V0(Z)Lj2;
    .locals 2

    new-instance v0, Lj2;

    invoke-virtual {p0}, Lj2;->R0()Lsm9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object v1

    iget-object p0, p0, Lj2;->d:Lsm9;

    invoke-virtual {p0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lj2;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public final W()Lsm9;
    .locals 0

    invoke-virtual {p0}, Lj2;->R0()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lj2;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj2;

    invoke-virtual {p0}, Lj2;->R0()Lsm9;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lsm9;

    iget-object p0, p0, Lj2;->d:Lsm9;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lsm9;

    invoke-direct {v0, v1, p0}, Lj2;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public X0(Lsm9;)Lj2;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj2;

    iget-object p0, p0, Lj2;->d:Lsm9;

    invoke-direct {v0, p1, p0}, Lj2;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method
