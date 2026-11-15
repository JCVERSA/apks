.class public final Lf07;
.super Lsm9;
.source "SourceFile"

# interfaces
.implements Lrr0;


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

.field public final d:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

.field public final e:Lmgb;

.field public final f:Lkotlin/reflect/jvm/internal/impl/types/j;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lsm9;-><init>()V

    .line 4
    iput-object p1, p0, Lf07;->c:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    .line 5
    iput-object p2, p0, Lf07;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 6
    iput-object p3, p0, Lf07;->e:Lmgb;

    .line 7
    iput-object p4, p0, Lf07;->f:Lkotlin/reflect/jvm/internal/impl/types/j;

    .line 8
    iput-boolean p5, p0, Lf07;->g:Z

    .line 9
    iput-boolean p6, p0, Lf07;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 1
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 p8, 0x0

    if-eqz p4, :cond_1

    move v5, p8

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    move v6, p8

    goto :goto_1

    :cond_2
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZ)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lmgb;Lmcb;Lhcb;)V
    .locals 10

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;-><init>(Lmcb;Lc74;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lhcb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iget-object p0, p0, Lf07;->f:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-object p0
.end method

.method public bridge synthetic I0()Lsbb;
    .locals 0

    invoke-virtual {p0}, Lf07;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object p0

    return-object p0
.end method

.method public J0()Z
    .locals 0

    iget-boolean p0, p0, Lf07;->g:Z

    return p0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lf07;->W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lf07;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lf07;->V0(Z)Lf07;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lf07;->W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lf07;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lf07;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic P0(Z)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, Lf07;->V0(Z)Lf07;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 8

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf07;

    iget-object v2, p0, Lf07;->c:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-virtual {p0}, Lf07;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v3

    iget-object v4, p0, Lf07;->e:Lmgb;

    invoke-virtual {p0}, Lf07;->J0()Z

    move-result v6

    iget-boolean v7, p0, Lf07;->h:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZ)V

    return-object v0
.end method

.method public final R0()Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;
    .locals 0

    iget-object p0, p0, Lf07;->c:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    return-object p0
.end method

.method public S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;
    .locals 0

    iget-object p0, p0, Lf07;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    return-object p0
.end method

.method public final T0()Lmgb;
    .locals 0

    iget-object p0, p0, Lf07;->e:Lmgb;

    return-object p0
.end method

.method public final U0()Z
    .locals 0

    iget-boolean p0, p0, Lf07;->h:Z

    return p0
.end method

.method public V0(Z)Lf07;
    .locals 10

    new-instance v9, Lf07;

    iget-object v1, p0, Lf07;->c:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-virtual {p0}, Lf07;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v2

    iget-object v3, p0, Lf07;->e:Lmgb;

    invoke-virtual {p0}, Lf07;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v4

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public W0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lf07;
    .locals 10

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lf07;->c:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-virtual {p0}, Lf07;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->i(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v3

    iget-object v0, p0, Lf07;->e:Lmgb;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p1

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lf07;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v5

    invoke-virtual {p0}, Lf07;->J0()Z

    move-result v6

    new-instance p0, Lf07;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
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
