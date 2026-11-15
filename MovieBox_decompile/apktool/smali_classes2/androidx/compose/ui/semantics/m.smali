.class public final Landroidx/compose/ui/semantics/m;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Landroidx/compose/ui/semantics/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/semantics/m;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/semantics/m;->b:Landroidx/compose/ui/semantics/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/m;->b:Landroidx/compose/ui/semantics/d;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/semantics/m;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/ui/semantics/i;

    .line 6
    .line 7
    invoke-direct {v2}, Landroidx/compose/ui/semantics/i;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, v0, v4, v1, v2}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/f$c;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/i;)V

    .line 14
    .line 15
    .line 16
    return-object v3
.end method
