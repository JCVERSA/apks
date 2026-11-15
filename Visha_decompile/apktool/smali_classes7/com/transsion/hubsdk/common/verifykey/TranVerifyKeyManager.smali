.class public Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESULT_ERROR_APP_NOT_VERIFY:I = -0x8

.field private static final TAG:Ljava/lang/String; = "TranVerifyKeyManager"

.field private static mBinder:Landroid/os/Binder;

.field private static mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    if-nez p0, :cond_0

    const-string p0, "verify_key"

    invoke-static {p0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    return-object p0
.end method

.method public static setService(Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    return-void
.end method

.method public static verify(Landroid/content/Context;)I
    .locals 5

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    move-result-object v0

    const/4 v1, -0x8

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/hubsdk/util/TranSignUtils;->getCertSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string v3, "AppKey is null"

    invoke-static {p0, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    sget-object v3, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mBinder:Landroid/os/Binder;

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4, v0, v2}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;->verify(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v3, "com.transsion.appkey"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    sget-object v4, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mBinder:Landroid/os/Binder;

    invoke-interface {v3, v4, p0, v0, v2}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;->verify(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    sget-object v0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranVerifyKeyManager verify Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service or context is null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->mService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
