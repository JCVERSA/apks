.class public final synthetic Landroidx/constraintlayout/motion/widget/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/motion/widget/s;

.field public final synthetic b:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/s;[Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/s;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->b:[Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/s;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->b:[Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/s;->a(Landroidx/constraintlayout/motion/widget/s;[Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
