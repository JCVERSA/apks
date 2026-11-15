.class public final synthetic Lcom/transsion/shorttv/ui/widget/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

.field public final synthetic b:Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/u;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/u;->b:Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/widget/u;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/u;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/u;->b:Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/u;->c:Z

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;->i(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
