.class public Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubTouchInhibition"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 2

    const-string v0, "acquire"

    const-string v1, "TranThubTouchInhibition"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "acquire mContext is null"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/transsion/hubsdk/gamemode/TranTouchInhibition;->acquire(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    const-string p0, "TranThubTouchInhibition"

    const-string v0, "clear"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/hubsdk/gamemode/TranTouchInhibition;->clear()V

    return-void
.end method

.method public inhibit(Landroid/graphics/Rect;I)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inhibit level="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubTouchInhibition"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1, p2}, Lcom/transsion/hubsdk/gamemode/TranTouchInhibition;->inhibit(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public inhibit(Landroid/graphics/Rect;II)V
    .locals 1

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inhibit level="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubTouchInhibition"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/gamemode/TranTouchInhibition;->inhibit(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public release()V
    .locals 1

    const-string p0, "TranThubTouchInhibition"

    const-string v0, "release"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/hubsdk/gamemode/TranTouchInhibition;->release()V

    return-void
.end method

.method public submit()V
    .locals 1

    const-string p0, "TranThubTouchInhibition"

    const-string v0, "submit"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/hubsdk/gamemode/TranTouchInhibition;->submit()V

    return-void
.end method
