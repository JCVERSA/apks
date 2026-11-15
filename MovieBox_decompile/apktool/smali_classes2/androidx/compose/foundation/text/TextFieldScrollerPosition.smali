.class public final Landroidx/compose/foundation/text/TextFieldScrollerPosition;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextFieldScrollerPosition$a;
    }
.end annotation


# static fields
.field public static final f:Landroidx/compose/foundation/text/TextFieldScrollerPosition$a;

.field private static final g:Landroidx/compose/runtime/saveable/d;


# instance fields
.field private final a:Landroidx/compose/runtime/c1;

.field private final b:Landroidx/compose/runtime/c1;

.field private c:Ly/i;

.field private d:J

.field private final e:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/foundation/text/TextFieldScrollerPosition$a;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->g:Landroidx/compose/runtime/saveable/d;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 8
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Landroidx/compose/runtime/p1;->a(F)Landroidx/compose/runtime/c1;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/c1;

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Landroidx/compose/runtime/p1;->a(F)Landroidx/compose/runtime/c1;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/c1;

    .line 4
    sget-object p2, Ly/i;->e:Ly/i$a;

    invoke-virtual {p2}, Ly/i$a;->a()Ly/i;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->c:Ly/i;

    .line 5
    sget-object p2, Landroidx/compose/ui/text/b0;->b:Landroidx/compose/ui/text/b0$a;

    invoke-virtual {p2}, Landroidx/compose/ui/text/b0$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d:J

    .line 6
    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->e:Landroidx/compose/runtime/i1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/Orientation;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/h0;->getFloatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->e:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    .line 8
    .line 9
    return-object v0
.end method
