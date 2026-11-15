.class public Lcom/transsion/hubsdk/api/app/TranAppGlobals;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppGlobals"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;


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


# virtual methods
.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppGlobals;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranAppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppGlobals;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->TAG:Ljava/lang/String;

    const-string v0, "TranThubAppGlobals"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAppGlobals"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

    :cond_2
    return-object p1
.end method
