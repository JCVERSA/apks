.class public Lcom/transsion/hubsdk/api/graphics/TranPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPaint"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

.field private mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPaint;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/graphics/TranPaint;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPaint"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPaint;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPaint;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/graphics/TranPaint;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPaint"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

    :cond_2
    return-object p1
.end method

.method public setUnionRenderEffect(Landroid/graphics/Paint;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranPaint;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;->setUnionRenderEffect(Landroid/graphics/Paint;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "paint cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
