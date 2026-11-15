.class public final synthetic Lcom/transsion/room/helper/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/animation/ObjectAnimator;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ObjectAnimator;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/helper/m;->a:Landroid/animation/ObjectAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/room/helper/m;->b:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/room/helper/m;->c:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/room/helper/m;->a:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/helper/m;->b:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/room/helper/m;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/room/helper/n;->a(Landroid/animation/ObjectAnimator;Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
