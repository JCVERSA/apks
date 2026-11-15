.class public Lcom/transsion/hubsdk/api/graphics/TranPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENABLED:Z

.field private static final INSTANCE:Lcom/transsion/hubsdk/api/graphics/TranPath;

.field private static final TAG:Ljava/lang/String; = "TranPath"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPath;

.field private mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->ENABLED:Z

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranPath;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/graphics/TranPath;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->INSTANCE:Lcom/transsion/hubsdk/api/graphics/TranPath;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->INSTANCE:Lcom/transsion/hubsdk/api/graphics/TranPath;

    return-object v0
.end method

.method public static smoothCapsuleEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getService()Lcom/transsion/hubsdk/interfaces/graphics/ITranPathAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/graphics/ITranPathAdapter;->smoothCapsuleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getService()Lcom/transsion/hubsdk/interfaces/graphics/ITranPathAdapter;
    .locals 2

    sget-boolean v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->ENABLED:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->TAG:Ljava/lang/String;

    const-string v1, "TranThubPath"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/api/graphics/TranPath;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPath;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/graphics/TranThubPath;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/graphics/TranThubPath;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/graphics/TranPath;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPath;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranPath;->TAG:Ljava/lang/String;

    const-string v1, "TranAospPath"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/api/graphics/TranPath;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPath;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/hubsdk/aosp/graphics/TranAospPath;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/graphics/TranAospPath;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/graphics/TranPath;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPath;

    :cond_2
    return-object v0
.end method

.method public getSmoothCapsule(FFFFF)Landroid/graphics/Path;
    .locals 7

    const v6, 0x3f19999a    # 0.6f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getSmoothCapsule(FFFFFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public getSmoothCapsule(FFFFFF)Landroid/graphics/Path;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getService()Lcom/transsion/hubsdk/interfaces/graphics/ITranPathAdapter;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/graphics/ITranPathAdapter;->getSmoothCapsule(FFFFFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
