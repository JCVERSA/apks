.class public abstract Lcom/mgtv/ssp/fragment/BaseListFragment;
.super Lcom/mgtv/ssp/fragment/BaseHttpFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/fragment/BaseListFragment$a;
    }
.end annotation


# instance fields
.field protected b:Lcom/mgtv/ssp/play/PlayerCore;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Lcom/mgtv/ssp/bean/VideoInfoBean;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/BaseHttpFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->e:I

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/ssp/fragment/BaseHttpFragment;->onDestroy()V

    iget-object v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->f:Lcom/mgtv/ssp/bean/VideoInfoBean;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w()V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->k:Z

    iget-object v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->b:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/ssp/fragment/BaseListFragment;->b:Lcom/mgtv/ssp/play/PlayerCore;

    :cond_1
    return-void
.end method
