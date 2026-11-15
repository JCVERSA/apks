.class public Lcom/cicada/player/utils/media/DrmSessionManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;,
        Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;
    }
.end annotation


# static fields
.field public static ERROR_CODE_DENIED_BY_SERVER:I = 0x0

.field public static ERROR_CODE_KEY_RESPONSE_NULL:I = 0x0

.field public static ERROR_CODE_NONE:I = 0x0

.field public static ERROR_CODE_PROVISION_FAIL:I = 0x0

.field public static ERROR_CODE_PROVISION_RESPONSE_NULL:I = 0x0

.field public static ERROR_CODE_RELEASED:I = 0x0

.field public static ERROR_CODE_RESOURCE_BUSY:I = 0x0

.field public static ERROR_CODE_UNSUPPORT_SCHEME:I = 0x0

.field public static SESSION_STATE_ERROR:I = 0x0

.field public static SESSION_STATE_IDLE:I = 0x0

.field public static SESSION_STATE_OPENED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmSessionManager"

.field private static final WIDEVINE_FORMAT:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field private drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

.field private mNativeInstance:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/UUID;

    .line 2
    .line 3
    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v3, -0x5c37d8232ae2de13L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    .line 20
    .line 21
    const/4 v0, -0x2

    .line 22
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_OPENED:I

    .line 26
    .line 27
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RESOURCE_BUSY:I

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_KEY_RESPONSE_NULL:I

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_RESPONSE_NULL:I

    .line 40
    .line 41
    const/4 v0, 0x5

    .line 42
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_DENIED_BY_SERVER:I

    .line 43
    .line 44
    const/4 v0, 0x6

    .line 45
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RELEASED:I

    .line 46
    .line 47
    const/4 v0, 0x7

    .line 48
    sput v0, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->mNativeInstance:J

    .line 8
    .line 9
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->mNativeInstance:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private requireSessionInner(Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static supportDrm(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    const-string v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 10
    .line 11
    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method


# virtual methods
.method public isForceInsecureDecoder()Z
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->isForceInsecureDecoder()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method protected native native_changeState(JII)V
.end method

.method protected native native_requestKey(JLjava/lang/String;[B)[B
.end method

.method protected native native_requestProvision(JLjava/lang/String;[B)[B
.end method

.method protected native native_updateSessionId(J[B)V
.end method

.method public declared-synchronized releaseSession()V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "releaseSession"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->release()Z

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager;->drmSession:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public declared-synchronized requireSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/cicada/player/utils/media/DrmSessionManager;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "requireSessionInner info = "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$1;)V

    .line 28
    .line 29
    .line 30
    iput-object p4, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p3, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/cicada/player/utils/media/DrmSessionManager;->requireSessionInner(Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method
