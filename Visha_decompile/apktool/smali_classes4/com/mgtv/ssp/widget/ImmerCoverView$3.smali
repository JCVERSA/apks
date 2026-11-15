.class Lcom/mgtv/ssp/widget/ImmerCoverView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/widget/ImmerCoverView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/widget/ImmerCoverView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/widget/ImmerCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$3;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$3;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/ImmerCoverView;->c(Lcom/mgtv/ssp/widget/ImmerCoverView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$3;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/ImmerCoverView;->d(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/immersion/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$3;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/ImmerCoverView;->d(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/immersion/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mgtv/ssp/immersion/a/a;->a()V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$3;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-static {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->b(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/control/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->start()V

    return-void
.end method
