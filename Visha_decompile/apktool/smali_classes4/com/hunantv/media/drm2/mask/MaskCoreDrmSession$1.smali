.class Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/report/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->doLicenseLightPlay(Z)V
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

    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

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

    const-string v1, "MaskCoreDrmSession"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p2, p1, v0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I[B)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    iget-object v0, v0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MaskCoreDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request license onSuccess code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    iget-object p2, p2, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    if-nez p2, :cond_0

    const-string p0, "MaskCoreDrmSession"

    const-string p1, "session already close. only return"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    invoke-static {p3}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result p2

    const/4 v1, 0x2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    iget-object p2, p2, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->currentLightPlaySession:Lcom/mgtv/drm/ILightPlayDrmSession;

    invoke-interface {p2, p3}, Lcom/mgtv/drm/ILightPlayDrmSession;->provideLicenseResponse([B)I

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "MaskCoreDrmSession"

    const-string p2, "provideLicenseResponse success "

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    invoke-static {p1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$000(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;)Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    invoke-static {p0}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$000(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;)Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$OnDoLicenseListener;->onSuccess(I)V

    goto :goto_0

    :cond_1
    const-string p3, "MaskCoreDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provideLicenseResponse error ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p2, "MaskCoreDrmSession"

    const-string p3, "error: response license empty"

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession$1;->this$0:Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-static {p0, p2, p1, v1}, Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;->access$100(Lcom/hunantv/media/drm2/mask/MaskCoreDrmSession;ILjava/lang/String;I)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
