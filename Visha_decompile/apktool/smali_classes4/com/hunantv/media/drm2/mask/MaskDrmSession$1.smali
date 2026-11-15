.class Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm2/mask/MaskDrmSession;->realProvision([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

.field final synthetic val$start:J


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm2/mask/MaskDrmSession;J)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    iput-wide p2, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(IILjava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$302(Lcom/hunantv/media/drm2/mask/MaskDrmSession;I)I

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$202(Lcom/hunantv/media/drm2/mask/MaskDrmSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-static {v0, p3}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$402(Lcom/hunantv/media/drm2/mask/MaskDrmSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$502(Lcom/hunantv/media/drm2/mask/MaskDrmSession;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "realProvision onFailed error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",msg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MaskDrmSession"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-virtual {p1, p2, p3}, Lcom/hunantv/media/drm/MgtvDrmSession;->publishProvisionError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->getFirm()I

    move-result p0

    const-string p3, "error request license"

    const-string v0, "3"

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/hunantv/media/drm/MgtvDrmSession;->sendDrmExReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$002(Lcom/hunantv/media/drm2/mask/MaskDrmSession;I)I

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$102(Lcom/hunantv/media/drm2/mask/MaskDrmSession;I)I

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->access$202(Lcom/hunantv/media/drm2/mask/MaskDrmSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-virtual {v1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->getFirm()I

    move-result v1

    const-string v3, "0"

    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/hunantv/media/drm/MgtvDrmSession;->sendDrmExReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->publishProvisionSuccess()V

    return-void
.end method
