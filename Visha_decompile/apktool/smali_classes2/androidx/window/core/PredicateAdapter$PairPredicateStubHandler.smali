.class final Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;
.super Landroidx/window/core/PredicateAdapter$BaseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/PredicateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairPredicateStubHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/window/core/PredicateAdapter$BaseHandler<",
        "Landroid/util/Pair<",
        "**>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00050\u0004B=\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00012\u000e\u0010\u000f\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0018R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0018R&\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;",
        "",
        "T",
        "U",
        "Landroidx/window/core/PredicateAdapter$BaseHandler;",
        "Landroid/util/Pair;",
        "Lde5;",
        "clazzT",
        "clazzU",
        "Lkotlin/Function2;",
        "",
        "predicate",
        "<init>",
        "(Lde5;Lde5;Ls74;)V",
        "obj",
        "parameter",
        "invokeTest",
        "(Ljava/lang/Object;Landroid/util/Pair;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lde5;",
        "Ls74;",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clazzT:Lde5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde5;"
        }
    .end annotation
.end field

.field private final clazzU:Lde5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde5;"
        }
    .end annotation
.end field

.field private final predicate:Ls74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde5;Lde5;Ls74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde5;",
            "Lde5;",
            "Ls74;",
            ")V"
        }
    .end annotation

    const-string v0, "clazzT"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazzU"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/util/Pair;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/core/PredicateAdapter$BaseHandler;-><init>(Lde5;)V

    iput-object p1, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->clazzT:Lde5;

    iput-object p2, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->clazzU:Lde5;

    iput-object p3, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->predicate:Ls74;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->predicate:Ls74;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public invokeTest(Ljava/lang/Object;Landroid/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Pair<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parameter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->clazzT:Lde5;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p1, v0}, Lge5;->a(Lde5;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->clazzU:Lde5;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, p2}, Lge5;->a(Lde5;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    iget-object p0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->predicate:Ls74;

    invoke-interface {p0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic invokeTest(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->invokeTest(Ljava/lang/Object;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->predicate:Ls74;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
