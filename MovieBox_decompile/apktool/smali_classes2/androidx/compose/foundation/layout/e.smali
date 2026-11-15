.class final Landroidx/compose/foundation/layout/e;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/a1;


# instance fields
.field private n:Landroidx/compose/ui/b;

.field private o:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/e;->n:Landroidx/compose/ui/b;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/e;->o:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final C1()Landroidx/compose/ui/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/e;->n:Landroidx/compose/ui/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/e;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public E1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final F1(Landroidx/compose/ui/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/e;->n:Landroidx/compose/ui/b;

    .line 2
    .line 3
    return-void
.end method

.method public final G1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/e;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/e;->E1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
