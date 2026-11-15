.class public abstract Lb82;
.super Lsm9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsm9;-><init>()V

    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lb82;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public H0()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    invoke-virtual {p0}, Lb82;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method

.method public I0()Lsbb;
    .locals 0

    invoke-virtual {p0}, Lb82;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    return-object p0
.end method

.method public J0()Z
    .locals 0

    invoke-virtual {p0}, Lb82;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lb82;->S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lb82;->S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public abstract R0()Lsm9;
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb82;->R0()Lsm9;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lsm9;

    invoke-virtual {p0, p1}, Lb82;->T0(Lsm9;)Lb82;

    move-result-object p0

    return-object p0
.end method

.method public abstract T0(Lsm9;)Lb82;
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    invoke-virtual {p0}, Lb82;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method
