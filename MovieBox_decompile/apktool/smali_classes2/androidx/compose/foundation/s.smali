.class public final Landroidx/compose/foundation/s;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/m1;
.implements Landroidx/compose/ui/node/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/s$a;
    }
.end annotation


# static fields
.field public static final q:Landroidx/compose/foundation/s$a;

.field public static final r:I


# instance fields
.field private n:Z

.field private final o:Z

.field private p:Landroidx/compose/ui/layout/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/s$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/s;->q:Landroidx/compose/foundation/s$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/foundation/s;->r:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C1()Landroidx/compose/foundation/t;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/foundation/t;->p:Landroidx/compose/foundation/t$a;

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroidx/compose/ui/node/n1;->a(Landroidx/compose/ui/node/f;Ljava/lang/Object;)Landroidx/compose/ui/node/m1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v2, v0, Landroidx/compose/foundation/t;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Landroidx/compose/foundation/t;

    .line 20
    .line 21
    :cond_0
    return-object v1
.end method

.method private final D1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/s;->p:Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->F()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/foundation/s;->C1()Landroidx/compose/foundation/t;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/foundation/s;->p:Landroidx/compose/ui/layout/l;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/t;->C1(Landroidx/compose/ui/layout/l;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public D()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/s;->q:Landroidx/compose/foundation/s$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E1(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/s;->n:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/foundation/s;->C1()Landroidx/compose/foundation/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/t;->C1(Landroidx/compose/ui/layout/l;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/s;->D1()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    iput-boolean p1, p0, Landroidx/compose/foundation/s;->n:Z

    .line 23
    .line 24
    return-void
.end method

.method public h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/s;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/s;->p:Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/compose/foundation/s;->n:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/l;->F()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/foundation/s;->D1()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/s;->C1()Landroidx/compose/foundation/t;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/t;->C1(Landroidx/compose/ui/layout/l;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method
