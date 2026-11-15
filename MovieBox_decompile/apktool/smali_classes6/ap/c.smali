.class public final synthetic Lap/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/view/PrizeFlowView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/view/PrizeFlowView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lap/c;->a:Lcom/transsion/rewardscenter/view/PrizeFlowView;

    .line 5
    .line 6
    iput p2, p0, Lap/c;->b:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lap/c;->a:Lcom/transsion/rewardscenter/view/PrizeFlowView;

    .line 2
    .line 3
    iget v1, p0, Lap/c;->b:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/rewardscenter/view/PrizeFlowView;->a(Lcom/transsion/rewardscenter/view/PrizeFlowView;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
