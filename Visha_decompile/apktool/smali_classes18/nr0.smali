.class public final Lnr0;
.super Lsm9;
.source "SourceFile"

# interfaces
.implements Lrr0;


# instance fields
.field public final c:Lmcb;

.field public final d:Lor0;

.field public final e:Z

.field public final f:Lkotlin/reflect/jvm/internal/impl/types/j;


# direct methods
.method public constructor <init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lsm9;-><init>()V

    .line 5
    iput-object p1, p0, Lnr0;->c:Lmcb;

    .line 6
    iput-object p2, p0, Lnr0;->d:Lor0;

    .line 7
    iput-boolean p3, p0, Lnr0;->e:Z

    .line 8
    iput-object p4, p0, Lnr0;->f:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-void
.end method

.method public synthetic constructor <init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    new-instance p2, Lpr0;

    invoke-direct {p2, p1}, Lpr0;-><init>(Lmcb;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p4

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lnr0;-><init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;)V

    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public H0()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    iget-object p0, p0, Lnr0;->f:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-object p0
.end method

.method public bridge synthetic I0()Lsbb;
    .locals 0

    invoke-virtual {p0}, Lnr0;->R0()Lor0;

    move-result-object p0

    return-object p0
.end method

.method public J0()Z
    .locals 0

    iget-boolean p0, p0, Lnr0;->e:Z

    return p0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lnr0;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lnr0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lnr0;->S0(Z)Lnr0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lnr0;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lnr0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lnr0;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic P0(Z)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, Lnr0;->S0(Z)Lnr0;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnr0;

    iget-object v1, p0, Lnr0;->c:Lmcb;

    invoke-virtual {p0}, Lnr0;->R0()Lor0;

    move-result-object v2

    invoke-virtual {p0}, Lnr0;->J0()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Lnr0;-><init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;)V

    return-object v0
.end method

.method public R0()Lor0;
    .locals 0

    iget-object p0, p0, Lnr0;->d:Lor0;

    return-object p0
.end method

.method public S0(Z)Lnr0;
    .locals 3

    invoke-virtual {p0}, Lnr0;->J0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnr0;

    iget-object v1, p0, Lnr0;->c:Lmcb;

    invoke-virtual {p0}, Lnr0;->R0()Lor0;

    move-result-object v2

    invoke-virtual {p0}, Lnr0;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lnr0;-><init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;)V

    return-object v0
.end method

.method public T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lnr0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnr0;

    iget-object v1, p0, Lnr0;->c:Lmcb;

    invoke-interface {v1, p1}, Lmcb;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmcb;

    move-result-object p1

    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnr0;->R0()Lor0;

    move-result-object v1

    invoke-virtual {p0}, Lnr0;->J0()Z

    move-result v2

    invoke-virtual {p0}, Lnr0;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lnr0;-><init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;)V

    return-object v0
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->CAPTURED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lid3;->a(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;Z[Ljava/lang/String;)Lfd3;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Captured("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnr0;->c:Lmcb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnr0;->J0()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
