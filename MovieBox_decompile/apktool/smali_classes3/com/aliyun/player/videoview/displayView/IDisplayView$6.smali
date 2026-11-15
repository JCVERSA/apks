.class Lcom/aliyun/player/videoview/displayView/IDisplayView$6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;


# direct methods
.method constructor <init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;->this$0:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
