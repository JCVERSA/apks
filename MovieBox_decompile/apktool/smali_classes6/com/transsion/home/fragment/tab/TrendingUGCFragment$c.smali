.class public final Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lrk/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->K0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/adapter/operateUGC/b;

    .line 4
    .line 5
    .line 6
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "mainAdapter"

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object p4, v0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    check-cast p4, Lcom/transsion/home/bean/OperateItem;

    .line 28
    .line 29
    invoke-virtual {p4}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v3, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_SINGLE_IMAGE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    sget-object v0, Lzk/c;->a:Lzk/c;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3, p4}, Lzk/c;->e(IJLcom/transsion/home/bean/OperateItem;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    .line 52
    .line 53
    invoke-static {p4}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->L0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lrk/d;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    if-eqz p4, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->K0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/adapter/operateUGC/b;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v0, v2

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/transsion/home/bean/OperateItem;

    .line 81
    .line 82
    invoke-virtual {p4, v0, p1, p2, p3}, Lrk/d;->a(Lcom/transsion/home/bean/OperateItem;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 93
    .line 94
    const/4 v4, 0x4

    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v1, "reportExposure"

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_3
    return-void
.end method
