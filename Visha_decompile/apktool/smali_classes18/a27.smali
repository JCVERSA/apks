.class public final La27;
.super Lb82;
.source "SourceFile"

# interfaces
.implements Lz17;


# instance fields
.field public final c:Lsm9;


# direct methods
.method public constructor <init>(Lsm9;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb82;-><init>()V

    iput-object p1, p0, La27;->c:Lsm9;

    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public J0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, La27;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, La27;->V0(Lkotlin/reflect/jvm/internal/impl/types/j;)La27;

    move-result-object p0

    return-object p0
.end method

.method public P0(Z)Lsm9;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La27;->R0()Lsm9;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, La27;->V0(Lkotlin/reflect/jvm/internal/impl/types/j;)La27;

    move-result-object p0

    return-object p0
.end method

.method public R0()Lsm9;
    .locals 0

    iget-object p0, p0, La27;->c:Lsm9;

    return-object p0
.end method

.method public bridge synthetic T0(Lsm9;)Lb82;
    .locals 0

    invoke-virtual {p0, p1}, La27;->W0(Lsm9;)La27;

    move-result-object p0

    return-object p0
.end method

.method public final U0(Lsm9;)Lsm9;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->t(Leh5;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, La27;

    invoke-direct {p1, p0}, La27;-><init>(Lsm9;)V

    return-object p1
.end method

.method public V0(Lkotlin/reflect/jvm/internal/impl/types/j;)La27;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La27;

    invoke-virtual {p0}, La27;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    invoke-direct {v0, p0}, La27;-><init>(Lsm9;)V

    return-object v0
.end method

.method public W0(Lsm9;)La27;
    .locals 0

    const-string p0, "delegate"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, La27;

    invoke-direct {p0, p1}, La27;-><init>(Lsm9;)V

    return-object p0
.end method

.method public d0(Leh5;)Leh5;
    .locals 2

    const-string v0, "replacement"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->t(Leh5;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->l(Leh5;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Lsm9;

    if-eqz v0, :cond_1

    check-cast p1, Lsm9;

    invoke-virtual {p0, p1}, La27;->U0(Lsm9;)Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lfy3;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lfy3;

    invoke-virtual {v0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {p0, v1}, La27;->U0(Lsm9;)Lsm9;

    move-result-object v1

    invoke-virtual {v0}, Lfy3;->R0()Lsm9;

    move-result-object v0

    invoke-virtual {p0, v0}, La27;->U0(Lsm9;)Lsm9;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    invoke-static {p1}, Lddb;->a(Leh5;)Leh5;

    move-result-object p1

    invoke-static {p0, p1}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
