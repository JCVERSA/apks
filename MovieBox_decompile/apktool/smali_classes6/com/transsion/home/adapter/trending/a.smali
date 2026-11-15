.class public final synthetic Lcom/transsion/home/adapter/trending/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Lcom/transsion/home/preload/b;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/b;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/transsion/home/viewmodel/TrendingViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/preload/b;Lcom/transsion/home/adapter/trending/b;Lkotlin/jvm/functions/Function1;Lcom/transsion/home/viewmodel/TrendingViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/a;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/a;->b:Lcom/transsion/home/preload/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/trending/a;->c:Lcom/transsion/home/adapter/trending/b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/adapter/trending/a;->d:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/home/adapter/trending/a;->e:Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/a;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/a;->b:Lcom/transsion/home/preload/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/a;->c:Lcom/transsion/home/adapter/trending/b;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/adapter/trending/a;->d:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/home/adapter/trending/a;->e:Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/home/adapter/trending/b;->Q1(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/preload/b;Lcom/transsion/home/adapter/trending/b;Lkotlin/jvm/functions/Function1;Lcom/transsion/home/viewmodel/TrendingViewModel;)Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
