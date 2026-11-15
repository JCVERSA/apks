.class public final Landroidx/compose/ui/semantics/c;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/i1;


# instance fields
.field private n:Z

.field private o:Z

.field private p:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ZZLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/semantics/c;->n:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/ui/semantics/c;->o:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/semantics/c;->p:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final C1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/semantics/c;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final D1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/semantics/c;->p:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/c;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public Q0(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/c;->p:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public V0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/c;->n:Z

    .line 2
    .line 3
    return v0
.end method
