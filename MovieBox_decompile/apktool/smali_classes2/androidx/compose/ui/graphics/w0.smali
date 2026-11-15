.class public abstract Landroidx/compose/ui/graphics/w0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/r4;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/v0;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/PathMeasure;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/v0;-><init>(Landroid/graphics/PathMeasure;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
