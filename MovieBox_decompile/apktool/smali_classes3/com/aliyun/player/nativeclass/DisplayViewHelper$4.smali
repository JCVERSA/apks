.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->firstFrameRender(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field final synthetic val$hasVideo:Z


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->val$hasVideo:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->val$hasVideo:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
