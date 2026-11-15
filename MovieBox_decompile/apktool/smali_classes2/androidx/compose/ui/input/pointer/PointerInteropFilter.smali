.class public final Landroidx/compose/ui/input/pointer/PointerInteropFilter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/input/pointer/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;
    }
.end annotation


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field private c:Landroidx/compose/ui/input/pointer/k0;

.field private d:Z

.field private final e:Landroidx/compose/ui/input/pointer/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/c0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g()Landroidx/compose/ui/input/pointer/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "onTouchEvent"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Landroidx/compose/ui/input/pointer/k0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->c:Landroidx/compose/ui/input/pointer/k0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/k0;->b(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->c:Landroidx/compose/ui/input/pointer/k0;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1, p0}, Landroidx/compose/ui/input/pointer/k0;->b(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    .line 16
    .line 17
    .line 18
    :goto_1
    return-void
.end method
