.class public final Landroidx/compose/ui/platform/AndroidComposeView$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/u;

.field private final b:Landroidx/savedstate/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/u;Landroidx/savedstate/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$b;->a:Landroidx/lifecycle/u;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$b;->b:Landroidx/savedstate/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$b;->a:Landroidx/lifecycle/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroidx/savedstate/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$b;->b:Landroidx/savedstate/e;

    .line 2
    .line 3
    return-object v0
.end method
