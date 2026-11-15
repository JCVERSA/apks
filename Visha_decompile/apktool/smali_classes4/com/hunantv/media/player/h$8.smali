.class Lcom/hunantv/media/player/h$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, 0x61da2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrmPsshMap null"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    const p1, 0x61b96

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->d(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDrmPsshMap success"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->K(Lcom/hunantv/media/player/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->realProvision(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->M(Lcom/hunantv/media/player/h;)Z

    move-result v1

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->realProvision(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const p1, 0x61b90

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->d(II)V

    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 6

    .line 2
    const v0, 0x61da2

    if-eqz p1, :cond_8

    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrmKeyId success.keyid size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/drm/IDrmSession;->close()I

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1, v2}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;Lcom/hunantv/media/drm/IDrmSession;)Lcom/hunantv/media/drm/IDrmSession;

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/drm/IDrmManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v1

    iget-object v3, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v3}, Lcom/hunantv/media/player/h;->N(Lcom/hunantv/media/player/h;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/drm/IDrmManager;->init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hunantv/media/player/h;->au()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MaskDrmManager init error ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    const v3, 0x61b93

    invoke-virtual {v1, v0, v3}, Lcom/hunantv/media/player/h;->d(II)V

    :cond_2
    invoke-static {}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/drm/IDrmManager;->isInited()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->O(Lcom/hunantv/media/player/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->O(Lcom/hunantv/media/player/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->O(Lcom/hunantv/media/player/h;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    iget-object v1, v1, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmType:Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v3}, Lcom/hunantv/media/player/h;->O(Lcom/hunantv/media/player/h;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/hunantv/media/drm/IDrmManager;->genDrmSession(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;Lcom/hunantv/media/drm/IDrmSession;)Lcom/hunantv/media/drm/IDrmSession;

    iget-object v0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hunantv/media/drm/IDrmSession;->setIsInnerSession(Z)V

    iget-object v0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/player/h$8$1;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/h$8$1;-><init>(Lcom/hunantv/media/player/h$8;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/drm/IDrmSession;->addOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/player/h$8$2;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/h$8$2;-><init>(Lcom/hunantv/media/player/h$8;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/drm/IDrmSession;->addOnProvisionErrorListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-interface {v0, v1}, Lcom/hunantv/media/drm/IDrmSession;->bind(Lcom/hunantv/media/player/h;)V

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    :goto_0
    invoke-static {p0}, Lcom/hunantv/media/player/h;->L(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;->realProvision([B)V

    goto :goto_4

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    const p1, 0x61b94

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->d(II)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    const p1, 0x61b91

    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->d(II)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->P(Lcom/hunantv/media/player/h;)Z

    move-result v1

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const p1, 0x61b90

    goto :goto_3

    :goto_4
    return-void

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMaskDrmInit keyid is null"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    const p1, 0x61b8f

    goto :goto_2
.end method
