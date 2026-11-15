.class public final synthetic Lcom/transsion/rewardscenter/prize/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/rewardscenter/prize/k;

.field public final synthetic d:Lcom/transsion/rewardscenterapi/DrawResult;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/prize/j;->a:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/prize/j;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/rewardscenter/prize/j;->c:Lcom/transsion/rewardscenter/prize/k;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/rewardscenter/prize/j;->d:Lcom/transsion/rewardscenterapi/DrawResult;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/prize/j;->a:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/prize/j;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/prize/j;->c:Lcom/transsion/rewardscenter/prize/k;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/rewardscenter/prize/j;->d:Lcom/transsion/rewardscenterapi/DrawResult;

    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/prize/k;->y(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;Landroid/view/View;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
