.class public Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranActivityInfo"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospActivityInfo;

.field private mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranActivityInfoAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospActivityInfo;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospActivityInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospActivityInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospActivityInfo;

    :cond_2
    return-object p1
.end method

.method public isResizeableMode(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranActivityInfoAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranActivityInfoAdapter;->isResizeableMode(I)Z

    move-result p0

    return p0
.end method

.method public resizeMode(Landroid/content/pm/ActivityInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranActivityInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranActivityInfoAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranActivityInfoAdapter;->resizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "info cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
