.class public Lcom/transsion/hubsdk/api/os/TranProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranProcess"

.field protected static sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

.field protected static sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;


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

.method public static getAllCpuLoading()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranProcess;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;->getAllCpuLoading()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuInfo()D
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranProcess;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;->getCpuInfo()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;
    .locals 1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->TAG:Ljava/lang/String;

    const-string v0, "TranThubProcess"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubProcess;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubProcess;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->TAG:Ljava/lang/String;

    const-string v0, "TranAospProcess"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospProcess;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospProcess;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranProcess;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;

    :cond_2
    return-object p0
.end method
