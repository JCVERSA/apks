.class public final synthetic Lcom/transsion/moviedetail/fragment/s0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/s0;->a:Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/s0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/moviedetail/fragment/s0;->c:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/s0;->a:Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/s0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/s0;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->B0(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Ljava/util/List;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
