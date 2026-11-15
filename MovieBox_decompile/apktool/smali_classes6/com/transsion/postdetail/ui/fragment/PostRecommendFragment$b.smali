.class public final Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;

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
    .locals 7

    .line 1
    iget-object p4, p0, Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-virtual {p4}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/transsion/postdetail/ui/adapter/e;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    sget-object v0, Lbj/b;->j:Lbj/b$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lbj/b$a;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "exposure position  "

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;->V0(Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;)Lxn/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p4}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const-string v1, "null cannot be cast to non-null type com.transsion.postdetail.ui.adapter.PostRecommendAdapter"

    .line 55
    .line 56
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast p4, Lcom/transsion/postdetail/ui/adapter/e;

    .line 60
    .line 61
    invoke-virtual {v0, p4, p1, p2, p3}, Lxn/a;->a(Lcom/transsion/postdetail/ui/adapter/e;IJ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method
