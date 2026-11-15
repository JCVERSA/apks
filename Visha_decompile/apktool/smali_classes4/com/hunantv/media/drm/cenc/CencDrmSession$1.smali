.class Lcom/hunantv/media/drm/cenc/CencDrmSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm/cenc/CencDrmSession;->realProvision(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

.field final synthetic val$start:J


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/cenc/CencDrmSession;J)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    iput-wide p2, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->access$202(Lcom/hunantv/media/drm/cenc/CencDrmSession;I)I

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->access$102(Lcom/hunantv/media/drm/cenc/CencDrmSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    invoke-static {v0, p2}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->access$302(Lcom/hunantv/media/drm/cenc/CencDrmSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    invoke-virtual {p2, p1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->publishProvisionError(I)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error request license"

    const-string v0, "3"

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/drm/MgtvDrmSession;->sendDrmReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->access$002(Lcom/hunantv/media/drm/cenc/CencDrmSession;I)I

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->access$102(Lcom/hunantv/media/drm/cenc/CencDrmSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    const-string v1, "0"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/hunantv/media/drm/MgtvDrmSession;->sendDrmReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;->this$0:Lcom/hunantv/media/drm/cenc/CencDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->publishProvisionSuccess()V

    return-void
.end method
