.class public final Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v0, :cond_2

    .line 14
    .line 15
    if-gtz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v2, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;->a(II)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method
