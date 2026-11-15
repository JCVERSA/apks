.class public Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDeviceConfig"

.field protected static sAospService:Lcom/transsion/hubsdk/aosp/provider/TranAospDeviceConfig;

.field protected static sThubService:Lcom/transsion/hubsdk/core/provider/TranThubDeviceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranDeviceConfigAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/provider/ITranDeviceConfigAdapter;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranDeviceConfigAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/provider/ITranDeviceConfigAdapter;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranDeviceConfigAdapter;
    .locals 1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDeviceConfig"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->sThubService:Lcom/transsion/hubsdk/core/provider/TranThubDeviceConfig;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/provider/TranThubDeviceConfig;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubDeviceConfig;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->sThubService:Lcom/transsion/hubsdk/core/provider/TranThubDeviceConfig;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDeviceConfig"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->sAospService:Lcom/transsion/hubsdk/aosp/provider/TranAospDeviceConfig;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/provider/TranAospDeviceConfig;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/provider/TranAospDeviceConfig;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/provider/TranDeviceConfig;->sAospService:Lcom/transsion/hubsdk/aosp/provider/TranAospDeviceConfig;

    :cond_2
    return-object p0
.end method
