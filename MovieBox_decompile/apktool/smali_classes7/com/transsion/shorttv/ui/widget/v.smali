.class public final synthetic Lcom/transsion/shorttv/ui/widget/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

.field public final synthetic b:Lcom/transsion/shorttv/bean/OperateItem;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/bean/OperateItem;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/v;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/v;->b:Lcom/transsion/shorttv/bean/OperateItem;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/widget/v;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/v;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/v;->b:Lcom/transsion/shorttv/bean/OperateItem;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/v;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;->j(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/bean/OperateItem;ZLandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
