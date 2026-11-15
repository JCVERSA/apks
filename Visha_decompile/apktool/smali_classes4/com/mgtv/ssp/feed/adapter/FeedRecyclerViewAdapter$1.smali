.class Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/bean/VideoInfoBean;

.field final synthetic b:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;->b:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    iput-object p2, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;->a:Lcom/mgtv/ssp/bean/VideoInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;->b:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;->a:Lcom/mgtv/ssp/bean/VideoInfoBean;

    invoke-static {p1, p0}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    return-void
.end method
