.class Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/report/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doProvisionLightPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doProvision err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CbcsCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

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
    .locals 3

    iget-object p2, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    iget-object p2, p2, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "drmtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doProvision onSuccess response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mgtv/drm/LightPlayDrmManager;->provideProvisionResponse([B)I

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "CbcsCoreDrmSession"

    const-string v0, "LightPlayDrmManager provideProvisionResponse success"

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$300(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    const-string v0, "CbcsCoreDrmSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightPlayDrmManager  provideProvisionResponse error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " url:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0xd5

    invoke-static {v0, v1, p3}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v0, "CbcsCoreDrmSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: provideKeyResponse exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " url:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xd4

    invoke-static {p0, p3, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p3, "CbcsCoreDrmSession"

    const-string v0, "error: response license empty"

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$5;->this$0:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xc9

    invoke-static {p0, p3, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->access$100(Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;ILjava/lang/String;)V

    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
