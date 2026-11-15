.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/monopoly/model/AdMaterialList;

.field public final synthetic b:Lcom/transsion/ad/monopoly/model/AdPlans;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->a:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->b:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->a:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->b:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 4
    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->g(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
