.class Lcom/mgtv/ssp/widget/TitleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/widget/TitleView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/widget/TitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/TitleView$1;->a:Lcom/mgtv/ssp/widget/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/TitleView$1;->a:Lcom/mgtv/ssp/widget/TitleView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/widget/TitleView$1;->a:Lcom/mgtv/ssp/widget/TitleView;

    invoke-static {v0}, Lcom/mgtv/ssp/widget/TitleView;->a(Lcom/mgtv/ssp/widget/TitleView;)Lcom/mgtv/ssp/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/TitleView$1;->a:Lcom/mgtv/ssp/widget/TitleView;

    invoke-static {p0}, Lcom/mgtv/ssp/widget/TitleView;->a(Lcom/mgtv/ssp/widget/TitleView;)Lcom/mgtv/ssp/control/a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->switchFullScreen(Z)V

    :cond_0
    return-void
.end method
