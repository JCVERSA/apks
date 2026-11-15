.class public Lcom/transsion/hubsdk/api/view/TranBrightnessInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranBrightnessInfoManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;


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
.method public getBrightnessInfo()Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfoManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranBrightnessInfoAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranBrightnessInfoAdapter;->getBrightnessInfo()Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranBrightnessInfoAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfoManager;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfoManager;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfoManager;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfoManager;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;

    :cond_2
    return-object p1
.end method
