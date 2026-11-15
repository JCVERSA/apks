.class Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setDrmLicensePrepared()V

    return-void
.end method
