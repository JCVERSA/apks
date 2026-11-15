.class public Lcom/transsion/hubsdk/api/view/TranViewRootImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranViewRootImpl"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewRootImpl;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;


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
.method public createBackgroundBlurDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;->createBackgroundBlurDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createBackgroundBlurDrawable(Landroid/view/View;IIF)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;->createBackgroundBlurDrawable(Landroid/view/View;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->TAG:Ljava/lang/String;

    const-string v0, "TranThubViewRootImpl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->TAG:Ljava/lang/String;

    const-string v0, "TranAospViewRootImpl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewRootImpl;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospViewRootImpl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospViewRootImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewRootImpl;

    :cond_2
    return-object p1
.end method

.method public notifyInsetsChanged(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;->notifyInsetsChanged(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
