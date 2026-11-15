.class public Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDrawable"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDrawable"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mThubService:Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mThubService:Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDrawable"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mAospService:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mAospService:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

    :cond_2
    return-object p1
.end method

.method public setBlurSaturation(Ljava/lang/Object;F)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;->setBlurSaturation(Ljava/lang/Object;F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "drawable is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
