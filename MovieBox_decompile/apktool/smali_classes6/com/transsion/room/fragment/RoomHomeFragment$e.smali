.class public final Lcom/transsion/room/fragment/RoomHomeFragment$e;
.super Landroid/os/CountDownTimer;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomHomeFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomHomeFragment;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomHomeFragment$e;->a:Lcom/transsion/room/fragment/RoomHomeFragment;

    .line 2
    .line 3
    const-wide/16 v0, 0x1388

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomHomeFragment$e;->a:Lcom/transsion/room/fragment/RoomHomeFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfp/q;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lfp/q;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
