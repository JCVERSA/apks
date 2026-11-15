.class public Lkotlin/reflect/jvm/internal/KProperty1Impl;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "SourceFile"

# interfaces
.implements Lcf5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/KProperty1Impl$a;
    }
.end annotation


# instance fields
.field public final o:Lyi5;

.field public final p:Lyi5;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->o:Lyi5;

    .line 3
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateSource$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateSource$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->p:Lyi5;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    .line 5
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->o:Lyi5;

    .line 6
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateSource$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateSource$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->p:Lyi5;

    return-void
.end method


# virtual methods
.method public bridge synthetic H()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->K()Lkotlin/reflect/jvm/internal/KProperty1Impl$a;

    move-result-object p0

    return-object p0
.end method

.method public K()Lkotlin/reflect/jvm/internal/KProperty1Impl$a;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->o:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$a;

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->K()Lkotlin/reflect/jvm/internal/KProperty1Impl$a;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->p:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F(Ljava/lang/reflect/Member;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Laf5$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->K()Lkotlin/reflect/jvm/internal/KProperty1Impl$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lcf5$a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->K()Lkotlin/reflect/jvm/internal/KProperty1Impl$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
