.class public final Landroidx/compose/foundation/t;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/t$a;
    }
.end annotation


# static fields
.field public static final p:Landroidx/compose/foundation/t$a;

.field public static final q:I


# instance fields
.field private n:Lkotlin/jvm/functions/Function1;

.field private final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/t$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/t;->p:Landroidx/compose/foundation/t$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/foundation/t;->q:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/t;->n:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/foundation/t;->p:Landroidx/compose/foundation/t$a;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/foundation/t;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final C1(Landroidx/compose/ui/layout/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/t;->n:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/node/n1;->b(Landroidx/compose/ui/node/m1;)Landroidx/compose/ui/node/m1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/compose/foundation/t;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/t;->C1(Landroidx/compose/ui/layout/l;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/t;->o:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
