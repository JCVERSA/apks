.class public abstract synthetic Landroidx/compose/ui/e;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroidx/compose/ui/CombinedModifier;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/CombinedModifier;-><init>(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :goto_0
    return-object p0
.end method
