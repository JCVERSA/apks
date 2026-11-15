.class public final synthetic Lcom/transsion/rewardscenter/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/b;->a:Lcom/transsion/rewardscenter/task/ad/g0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/b;->a:Lcom/transsion/rewardscenter/task/ad/g0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/rewardscenter/RewardsCenterProvider;->d(Lcom/transsion/rewardscenter/task/ad/g0;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
