.class Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/report/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doProvisionLightPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

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

    const-string v1, "MaskCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I[B)V
    .locals 5

    iget-object p2, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    iget-object p2, p2, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "MaskCoreDrmSession"

    const-string v1, "doProvision response success"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    :try_start_1
    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mgtv/drm/LightPlayDrmManager;->provideProvisionResponse([B)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p3, "MaskCoreDrmSession"

    const-string v0, "LightPlayDrmManager provideProvisionResponse success"

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    invoke-static {p3, v2}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$200(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;Z)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_0
    const-string v3, ""

    if-eqz p3, :cond_2

    array-length v3, p3

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3, v2, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    :cond_2
    :goto_0
    const-string p3, "MaskCoreDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LightPlayDrmManager  provideProvisionResponse error :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    invoke-static {p3, v0, v3, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v0, "MaskCoreDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: provideKeyResponse exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

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

    invoke-static {p0, p3, p1, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string p3, "MaskCoreDrmSession"

    const-string v0, "error: response license empty"

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$2;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xc9

    invoke-static {p0, p3, p1, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V

    :goto_2
    monitor-exit p2

    return-void

    :goto_3
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
