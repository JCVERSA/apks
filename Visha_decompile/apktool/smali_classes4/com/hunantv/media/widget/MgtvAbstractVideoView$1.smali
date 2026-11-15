.class Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsDrmPrepared:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/drm/IDrmSession;->setDrmLicensePrepared()V

    :cond_0
    return-void
.end method
