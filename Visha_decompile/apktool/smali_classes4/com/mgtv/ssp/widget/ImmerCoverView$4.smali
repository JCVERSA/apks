.class Lcom/mgtv/ssp/widget/ImmerCoverView$4;
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

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$4;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$4;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/ImmerCoverView;->e(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/adapter/listener/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$4;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/ImmerCoverView;->e(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/adapter/listener/a;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView$4;->a:Lcom/mgtv/ssp/widget/ImmerCoverView;

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->a:Lcom/mgtv/ssp/bean/VideoInfoBean;

    invoke-interface {p1, p0}, Lcom/mgtv/ssp/adapter/listener/a;->a(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    :cond_0
    return-void
.end method
