.class public final Lcom/transsion/publish/view/BaseFloatView$b;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/BaseFloatView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/BaseFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/BaseFloatView$b;->a:Lcom/transsion/publish/view/BaseFloatView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

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
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/publish/view/BaseFloatView$b;->a:Lcom/transsion/publish/view/BaseFloatView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
