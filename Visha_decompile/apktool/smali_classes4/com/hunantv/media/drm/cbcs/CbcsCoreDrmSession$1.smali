.class Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/report/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicenseMarlin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

.field final synthetic val$finalKeyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    iput-object p2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->val$finalKeyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request license onFailed err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CbcsCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I[B)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    iget-object v0, v0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CbcsCoreDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request license onSuccess code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-static {p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$000(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p2, "CbcsCoreDrmSession"

    const-string p3, "error: response license empty"

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;ILjava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
