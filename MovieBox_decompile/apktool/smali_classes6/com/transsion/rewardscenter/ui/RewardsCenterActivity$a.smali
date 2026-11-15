.class public final Lcom/transsion/rewardscenter/ui/RewardsCenterActivity$a;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/ui/RewardsCenterActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/rewardscenter/ui/RewardsCenterActivity;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/ui/RewardsCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/ui/RewardsCenterActivity$a;->a:Lcom/transsion/rewardscenter/ui/RewardsCenterActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/ui/RewardsCenterActivity$a;->a:Lcom/transsion/rewardscenter/ui/RewardsCenterActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
