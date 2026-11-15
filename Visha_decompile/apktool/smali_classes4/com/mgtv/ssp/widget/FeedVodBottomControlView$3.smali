.class Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/widget/FeedVodBottomControlView;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;->b:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iput p2, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;->b:Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    iget-object p1, p1, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->c:Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;->a:I

    invoke-interface {p1, p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;->a(I)V

    :cond_0
    return-void
.end method
