.class public final Lpr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lor0;


# instance fields
.field public final a:Lmcb;

.field public b:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;


# direct methods
.method public constructor <init>(Lmcb;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpr0;->a:Lmcb;

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object p0

    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsbb;
    .locals 0

    invoke-virtual {p0, p1}, Lpr0;->g(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lpr0;

    move-result-object p0

    return-object p0
.end method

.method public b()Lmcb;
    .locals 0

    iget-object p0, p0, Lpr0;->a:Lmcb;

    return-object p0
.end method

.method public bridge synthetic c()Lpx0;
    .locals 0

    invoke-virtual {p0}, Lpr0;->e()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lpx0;

    return-object p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;
    .locals 0

    iget-object p0, p0, Lpr0;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    return-object p0
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lpr0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpr0;

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object p0

    invoke-interface {p0, p1}, Lmcb;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmcb;

    move-result-object p0

    const-string p1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lpr0;-><init>(Lmcb;)V

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;)V
    .locals 0

    iput-object p1, p0, Lpr0;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    return-void
.end method

.method public k()Ljava/util/Collection;
    .locals 2

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object v0

    invoke-interface {v0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object p0

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpr0;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object p0

    :goto_0
    const-string v0, "if (projection.projectio\u2026 builtIns.nullableAnyType"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public o()Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 1

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object p0

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    const-string v0, "projection.type.constructor.builtIns"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapturedTypeConstructor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
