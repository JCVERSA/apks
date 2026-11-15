.class public abstract Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/f;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$3;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->k(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/compose/ui/input/pointer/k0;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/compose/ui/input/pointer/k0;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->l(Landroidx/compose/ui/input/pointer/k0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setOnRequestDisallowInterceptTouchEvent$ui_release(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
