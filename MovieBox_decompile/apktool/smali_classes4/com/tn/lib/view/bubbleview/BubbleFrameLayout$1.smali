.class Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->setUpBubbleDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;->this$0:Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;->this$0:Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;->this$0:Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->a(Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
