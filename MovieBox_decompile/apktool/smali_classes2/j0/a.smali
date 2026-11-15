.class public abstract Lj0/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Z)Landroidx/compose/ui/state/ToggleableState;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 7
    .line 8
    :goto_0
    return-object p0
.end method
