.class public final Landroidx/compose/foundation/layout/q;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/a1;


# instance fields
.field private n:Landroidx/compose/ui/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/q;->n:Landroidx/compose/ui/b$b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/z;
    .locals 7

    .line 1
    instance-of p1, p2, Landroidx/compose/foundation/layout/z;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Landroidx/compose/foundation/layout/z;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    new-instance p2, Landroidx/compose/foundation/layout/z;

    .line 12
    .line 13
    const/16 v5, 0xf

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v0, p2

    .line 21
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/z;-><init>(FZLandroidx/compose/foundation/layout/m;Landroidx/compose/foundation/layout/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget-object p1, Landroidx/compose/foundation/layout/m;->a:Landroidx/compose/foundation/layout/m$b;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/foundation/layout/q;->n:Landroidx/compose/ui/b$b;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/m$b;->a(Landroidx/compose/ui/b$b;)Landroidx/compose/foundation/layout/m;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/z;->e(Landroidx/compose/foundation/layout/m;)V

    .line 33
    .line 34
    .line 35
    return-object p2
.end method

.method public final D1(Landroidx/compose/ui/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/q;->n:Landroidx/compose/ui/b$b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/q;->C1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/z;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
