.class public Lcom/transsion/hubsdk/core/provider/TranThubSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubSettings"


# instance fields
.field private mService:Lcom/transsion/hubsdk/provider/ITranSettings;

.field private mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "settings_provider"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/provider/ITranSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/provider/ITranSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    return-void
.end method

.method private getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/provider/TranSettings;

    invoke-direct {v0}, Lcom/transsion/hubsdk/provider/TranSettings;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;

    return-object p0
.end method


# virtual methods
.method public getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getSecureIntForUser(Ljava/lang/String;II)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "getSecureIntForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p2
.end method

.method public getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranSettings;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecureStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/provider/ITranSettings;->getSecureStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "getSecureStringForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->getSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public getSystemFloatForUser(Ljava/lang/String;FI)F
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->getSystemFloatForUser(Ljava/lang/String;FI)F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "getSystemFloatForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p2
.end method

.method public getSystemLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 6

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/provider/TranSettings;->getSystemLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public putGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranSettings;->putGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranSettings;->putSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public putSecureIntForUser(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSecureIntForUser(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSecureIntForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSecureStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSecureStringForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public putSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->putSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method

.method public putSystemFloatForUser(Ljava/lang/String;FI)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSystemFloatForUser(Ljava/lang/String;FI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSystemFloatForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
