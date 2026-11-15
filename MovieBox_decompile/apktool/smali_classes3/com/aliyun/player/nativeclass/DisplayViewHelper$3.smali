.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->clearScreen()V
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
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

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
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$302(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
