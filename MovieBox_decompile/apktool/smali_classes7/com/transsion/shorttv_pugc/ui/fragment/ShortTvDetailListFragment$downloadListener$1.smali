.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvs/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->s0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 15
    .line 16
    invoke-static {p2}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v3, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v3, p2, p1, v1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1;-><init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    return-void
.end method
