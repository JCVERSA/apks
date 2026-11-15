.class public final synthetic Lcom/transsion/shorttv_pugc/ui/widget/y;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/p;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->a:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->c:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->a:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->c:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->p(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
