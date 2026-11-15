.class public final Lkotlin/reflect/jvm/internal/impl/types/f;
.super Lsm9;
.source "SourceFile"


# instance fields
.field public final c:Lsbb;

.field public final d:Ljava/util/List;

.field public final e:Z

.field public final f:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

.field public final g:Le74;


# direct methods
.method public constructor <init>(Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Le74;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lsm9;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->c:Lsbb;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->d:Ljava/util/List;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->e:Z

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->f:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->g:Le74;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/f;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    instance-of p1, p1, Lfd3;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/f;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    instance-of p1, p1, Luia;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SimpleTypeImpl should not be created for error type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/f;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/f;->I0()Lsbb;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->d:Ljava/util/List;

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

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->c:Lsbb;

    return-object p0
.end method

.method public J0()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->e:Z

    return p0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f;->R0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f;->R0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public P0(Z)Lsm9;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/f;->J0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lq37;

    invoke-direct {p1, p0}, Lq37;-><init>(Lsm9;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p1, Ly17;

    invoke-direct {p1, p0}, Ly17;-><init>(Lsm9;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lum9;

    invoke-direct {v0, p0, p1}, Lum9;-><init>(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public R0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->g:Le74;

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsm9;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/f;->f:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object p0
.end method
