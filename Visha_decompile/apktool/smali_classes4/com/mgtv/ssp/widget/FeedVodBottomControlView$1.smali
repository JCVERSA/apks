.class Lcom/mgtv/ssp/widget/FeedVodBottomControlView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setTopUiVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/widget/FeedVodBottomControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$1;->a:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$1;->a:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->c:Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;->c(I)V

    :cond_0
    return-void
.end method
