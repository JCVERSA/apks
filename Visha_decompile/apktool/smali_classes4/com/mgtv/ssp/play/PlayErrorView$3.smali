.class Lcom/mgtv/ssp/play/PlayErrorView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayErrorView;->getVipView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayErrorView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayErrorView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView$3;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView$3;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-static {p1}, Lcom/mgtv/ssp/play/PlayErrorView;->access$100(Lcom/mgtv/ssp/play/PlayErrorView;)Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView$3;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-static {p1}, Lcom/mgtv/ssp/play/PlayErrorView;->access$200(Lcom/mgtv/ssp/play/PlayErrorView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView$3;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayErrorView;->access$100(Lcom/mgtv/ssp/play/PlayErrorView;)Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->onBack()V

    :cond_0
    return-void
.end method
