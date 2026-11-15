.class Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/report/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicense()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

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

    const-string v1, "CencCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I[B)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    iget-object v0, v0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CencCoreDrmSession"

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

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    iget-object v1, p2, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drm:Landroid/media/MediaDrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object p2, p2, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->drmSessionId:[B

    invoke-virtual {v1, p2, p3}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    iget-object p2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    invoke-static {p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->access$000(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;)Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    invoke-static {p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->access$000(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;)Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "CencCoreDrmSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: provideKeyResponse exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " url:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xca

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xcc

    invoke-static {p2, p1, p0}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "CencCoreDrmSession"

    const-string p3, "error: response license empty"

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;ILjava/lang/String;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
