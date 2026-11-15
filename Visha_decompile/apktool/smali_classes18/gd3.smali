.class public final Lgd3;
.super Lsm9;
.source "SourceFile"


# instance fields
.field public final c:Lsbb;

.field public final d:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

.field public final e:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

.field public final f:Ljava/util/List;

.field public final g:Z

.field public final h:[Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lsm9;-><init>()V

    .line 4
    iput-object p1, p0, Lgd3;->c:Lsbb;

    .line 5
    iput-object p2, p0, Lgd3;->d:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 6
    iput-object p3, p0, Lgd3;->e:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 7
    iput-object p4, p0, Lgd3;->f:Ljava/util/List;

    .line 8
    iput-boolean p5, p0, Lgd3;->g:Z

    .line 9
    iput-object p6, p0, Lgd3;->h:[Ljava/lang/String;

    .line 10
    sget-object p1, Lhz9;->a:Lhz9;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    array-length p2, p6

    invoke-static {p6, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lgd3;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lgd3;-><init>(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lgd3;->f:Ljava/util/List;

    return-object p0
.end method

.method public H0()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method

.method public I0()Lsbb;
    .locals 0

    iget-object p0, p0, Lgd3;->c:Lsbb;

    return-object p0
.end method

.method public J0()Z
    .locals 0

    iget-boolean p0, p0, Lgd3;->g:Z

    return p0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lgd3;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lgd3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lgd3;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lgd3;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lgd3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lgd3;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public P0(Z)Lsm9;
    .locals 8

    new-instance v7, Lgd3;

    invoke-virtual {p0}, Lgd3;->I0()Lsbb;

    move-result-object v1

    invoke-virtual {p0}, Lgd3;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v2

    iget-object v3, p0, Lgd3;->e:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p0}, Lgd3;->G0()Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lgd3;->h:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, [Ljava/lang/String;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lgd3;-><init>(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v7
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final R0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgd3;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final S0()Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;
    .locals 0

    iget-object p0, p0, Lgd3;->e:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    return-object p0
.end method

.method public T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lgd3;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final U0(Ljava/util/List;)Lgd3;
    .locals 8

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgd3;

    invoke-virtual {p0}, Lgd3;->I0()Lsbb;

    move-result-object v2

    invoke-virtual {p0}, Lgd3;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v3

    iget-object v4, p0, Lgd3;->e:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p0}, Lgd3;->J0()Z

    move-result v6

    iget-object p0, p0, Lgd3;->h:[Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [Ljava/lang/String;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lgd3;-><init>(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    iget-object p0, p0, Lgd3;->d:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object p0
.end method
