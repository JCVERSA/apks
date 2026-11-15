.class public interface abstract Lcom/hunantv/media/drm/IDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/IDrmSession$OnReportListener;,
        Lcom/hunantv/media/drm/IDrmSession$OnInfoListener;,
        Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;,
        Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;
    }
.end annotation


# static fields
.field public static final DRM_STAGE_LICENSE:I = 0x2

.field public static final DRM_STAGE_NONE:I = 0x0

.field public static final DRM_STAGE_PROVISION:I = 0x1

.field public static final ERROR_SESSION_CONFIG_NULL:I = 0x64

.field public static final ERROR_SESSION_DRMMANAGER_NOT_INITED:I = 0x67

.field public static final ERROR_SESSION_DRM_INFO_EMPTY:I = 0xd9

.field public static final ERROR_SESSION_DRM_INFO_INVALID:I = 0xda

.field public static final ERROR_SESSION_DRM_LICENSE_URL_EMPTY:I = 0xcf

.field public static final ERROR_SESSION_DRM_NULL:I = 0xcc

.field public static final ERROR_SESSION_DRM_PSSHS_EMPTY:I = 0xd0

.field public static final ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT:I = 0xd1

.field public static final ERROR_SESSION_KEY_REQUEST_NULL:I = 0xcd

.field public static final ERROR_SESSION_NO_PROVISION:I = 0xd2

.field public static final ERROR_SESSION_PROVISION:I = 0xc8

.field public static final ERROR_SESSION_PROVISION_ERROR:I = 0xd5

.field public static final ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID:I = 0xd8

.field public static final ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:I = 0xd7

.field public static final ERROR_SESSION_PROVISION_LICENSE_RESPONSE_EMPTY:I = 0xc9

.field public static final ERROR_SESSION_PROVISION_NO_SELECT_DRM:I = 0xcb

.field public static final ERROR_SESSION_PROVISION_PROVIDE_ERROR:I = 0xd4

.field public static final ERROR_SESSION_PROVISION_PROVIDE_LICENSE_EXCEPTION:I = 0xca

.field public static final ERROR_SESSION_PROVISION_PROVIDE_NONE:I = 0xd3

.field public static final ERROR_SESSION_SELECT_DRM_NOT_SUPPORT:I = 0xce

.field public static final ERROR_SESSION_TOKEN_EMPTY:I = 0x65

.field public static final ERROR_SESSION_UNKNOWN_EXCEPTION:I = 0x66

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PROVISIONING:I = 0x1

.field public static final STATUS_PROVISION_ERROR:I = 0x3

.field public static final STATUS_PROVISION_SUCCESS:I = 0x2


# virtual methods
.method public abstract addOnInfoListener(Lcom/hunantv/media/drm/IDrmSession$OnInfoListener;)V
.end method

.method public abstract addOnProvisionErrorListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;)V
.end method

.method public abstract addOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V
.end method

.method public abstract bind(Lcom/hunantv/media/player/h;)V
.end method

.method public abstract close()I
.end method

.method public abstract createProxy()Lcom/hunantv/media/drm/IDrmProxy;
.end method

.method public abstract getCurrentStatus()I
.end method

.method public abstract getDrmType()I
.end method

.method public abstract getDrmdi()Ljava/lang/String;
.end method

.method public abstract getDrmt()Ljava/lang/String;
.end method

.method public abstract getErrorCode()Ljava/lang/String;
.end method

.method public abstract getErrorWhat()I
.end method

.method public abstract getSessionConfig()Lcom/hunantv/media/drm/IDrmManager$SessionConfig;
.end method

.method public abstract isInnerSession()Z
.end method

.method public abstract isProvisionDone()Z
.end method

.method public abstract provision()Z
.end method

.method public abstract provisionAsync()V
.end method

.method public abstract removeOnInfoListener(Lcom/hunantv/media/drm/IDrmSession$OnInfoListener;)V
.end method

.method public abstract removeOnProvisionErrorListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;)V
.end method

.method public abstract removeOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V
.end method

.method public abstract setDrmLicensePrepared()V
.end method

.method public abstract setIsInnerSession(Z)V
.end method

.method public abstract setOnReportListener(Lcom/hunantv/media/drm/IDrmSession$OnReportListener;)V
.end method
