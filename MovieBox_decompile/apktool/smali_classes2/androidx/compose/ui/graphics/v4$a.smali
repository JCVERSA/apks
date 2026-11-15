.class public final Landroidx/compose/ui/graphics/v4$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/graphics/a5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/v4$a;->b(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4$b;
    .locals 0

    .line 1
    new-instance p3, Landroidx/compose/ui/graphics/k4$b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/n;->c(J)Ly/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p3, p1}, Landroidx/compose/ui/graphics/k4$b;-><init>(Ly/i;)V

    .line 8
    .line 9
    .line 10
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "RectangleShape"

    .line 2
    .line 3
    return-object v0
.end method
