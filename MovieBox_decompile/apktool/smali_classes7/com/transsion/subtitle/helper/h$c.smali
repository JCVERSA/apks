.class public final Lcom/transsion/subtitle/helper/h$c;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/helper/h;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/helper/h;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/helper/h;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h$c;->a:Lcom/transsion/subtitle/helper/h;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/transsion/subtitle/helper/h$c;->a:Lcom/transsion/subtitle/helper/h;

    .line 17
    .line 18
    sget v4, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_plus:I

    .line 19
    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-static {v3, v2}, Lcom/transsion/subtitle/helper/h;->j(Lcom/transsion/subtitle/helper/h;Z)V

    .line 25
    .line 26
    .line 27
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v0, 0x64

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
