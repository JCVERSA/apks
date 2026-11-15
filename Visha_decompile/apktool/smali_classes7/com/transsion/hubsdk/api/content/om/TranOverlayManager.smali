.class public Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranOverlayManager"

.field public static final USERID_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userId is wrong"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/content/om/TranAospOverlayManager;

.field private mThubService:Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/om/ITranOverlayManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubOverlayManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->mThubService:Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->mThubService:Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospOverlayManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->mAospService:Lcom/transsion/hubsdk/aosp/content/om/TranAospOverlayManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/om/TranAospOverlayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/om/TranAospOverlayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->mAospService:Lcom/transsion/hubsdk/aosp/content/om/TranAospOverlayManager;

    :cond_2
    return-object p1
.end method

.method public setEnabled(Ljava/lang/String;ZI)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    if-le p3, v0, :cond_0

    const v0, 0x7fffffff

    if-ge p3, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/om/ITranOverlayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/om/ITranOverlayManagerAdapter;->setEnabled(Ljava/lang/String;ZI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    if-le p2, v0, :cond_0

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/om/TranOverlayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/om/ITranOverlayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/om/ITranOverlayManagerAdapter;->setEnabledExclusiveInCategory(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
