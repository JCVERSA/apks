.class public Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSystemBarUtils"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/internal/policy/TranAospSystemBarUtils;

.field private static sThubService:Lcom/transsion/hubsdk/core/internal/policy/TranThubSystemBarUtils;


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

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranSystemBarUtilsAdapter;
    .locals 1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSystemBarUtils"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->sThubService:Lcom/transsion/hubsdk/core/internal/policy/TranThubSystemBarUtils;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/internal/policy/TranThubSystemBarUtils;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/policy/TranThubSystemBarUtils;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->sThubService:Lcom/transsion/hubsdk/core/internal/policy/TranThubSystemBarUtils;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSystemBarUtils"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->sAospService:Lcom/transsion/hubsdk/aosp/internal/policy/TranAospSystemBarUtils;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospSystemBarUtils;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospSystemBarUtils;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->sAospService:Lcom/transsion/hubsdk/aosp/internal/policy/TranAospSystemBarUtils;

    :cond_2
    return-object p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranSystemBarUtilsAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/internal/policy/ITranSystemBarUtilsAdapter;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
