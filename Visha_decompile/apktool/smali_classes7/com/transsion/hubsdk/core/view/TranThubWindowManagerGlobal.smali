.class public Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerGlobalAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWindowManagerGlobal"


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;->mService:Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;

    return-void
.end method


# virtual methods
.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;->mService:Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "captureDisplayAsBitmap: e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;->mService:Lcom/transsion/hubsdk/view/TranWindowManagerGlobal;

    return-void
.end method
