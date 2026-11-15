.class Lcom/bumptech/glide/manager/FirstFrameWaiter$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/FirstFrameWaiter;->registerSelf(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/FirstFrameWaiter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->val$view:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;-><init>(Lcom/bumptech/glide/manager/FirstFrameWaiter$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
