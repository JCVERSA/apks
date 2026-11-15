.class public final synthetic Lcom/transsion/rewardscenter/redeem/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

.field public final synthetic c:Lcom/transsion/rewardscenter/redeem/e;

.field public final synthetic d:Lcom/transsion/rewardscenterapi/SkuPoint;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/rewardscenter/redeem/f;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/redeem/f;->b:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/rewardscenter/redeem/f;->c:Lcom/transsion/rewardscenter/redeem/e;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/rewardscenter/redeem/f;->d:Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/rewardscenter/redeem/f;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/f;->b:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/redeem/f;->c:Lcom/transsion/rewardscenter/redeem/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/rewardscenter/redeem/f;->d:Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->y(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
