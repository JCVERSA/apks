.class public final Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->initKeyBoardChange(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyBoardAnimEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$isStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$setStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onKeyBoardAnimStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$isStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$setStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onKeyBoardHeightChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getLastHeight$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$setLastHeight$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
