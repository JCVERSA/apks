.class final Lcom/mgmi/ssp/IncentiveVideoAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/platform/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ssp/IncentiveVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0
    .param p1    # Lcom/hunantv/media/widget/MgtvVideoView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->stop()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->start()V

    :cond_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    return-object p0
.end method
