.class public final Landroidx/compose/foundation/gestures/l;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/l$a;
    }
.end annotation


# static fields
.field public static final p:Landroidx/compose/foundation/gestures/l$a;

.field public static final q:I


# instance fields
.field private final n:Ljava/lang/Object;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/l$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/gestures/l;->p:Landroidx/compose/foundation/gestures/l$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/foundation/gestures/l;->q:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/foundation/gestures/l;->p:Landroidx/compose/foundation/gestures/l$a;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/foundation/gestures/l;->n:Ljava/lang/Object;

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/l;->o:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final C1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/l;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/l;->n:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/l;->o:Z

    .line 2
    .line 3
    return-void
.end method
