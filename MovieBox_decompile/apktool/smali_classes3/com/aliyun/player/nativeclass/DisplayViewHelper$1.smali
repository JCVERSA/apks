.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$100(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$200(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 38
    .line 39
    invoke-static {v2, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$102(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$202(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->parentSizeChanged()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method
