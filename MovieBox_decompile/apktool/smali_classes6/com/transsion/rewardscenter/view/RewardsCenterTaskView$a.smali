.class public final Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lzo/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->C(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lzo/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->P0()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lzo/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->P0()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lzo/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->showLoading()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
