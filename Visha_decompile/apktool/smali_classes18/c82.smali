.class public abstract Lc82;
.super Lb82;
.source "SourceFile"


# instance fields
.field public final c:Lsm9;


# direct methods
.method public constructor <init>(Lsm9;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb82;-><init>()V

    iput-object p1, p0, Lc82;->c:Lsm9;

    return-void
.end method


# virtual methods
.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lc82;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lc82;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public P0(Z)Lsm9;
    .locals 1

    invoke-virtual {p0}, Lb82;->J0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lc82;->R0()Lsm9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p1

    invoke-virtual {p0}, Lb82;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb82;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Lum9;

    invoke-direct {v0, p0, p1}, Lum9;-><init>(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public R0()Lsm9;
    .locals 0

    iget-object p0, p0, Lc82;->c:Lsm9;

    return-object p0
.end method
