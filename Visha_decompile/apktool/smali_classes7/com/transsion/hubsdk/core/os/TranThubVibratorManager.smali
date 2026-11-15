.class public Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubVibratorManager"


# instance fields
.field private mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/os/TranVibrator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/os/TranVibrator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;)Lcom/transsion/hubsdk/os/TranVibrator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    return-object p0
.end method


# virtual methods
.method public stop()V
    .locals 2

    const-string v0, "TranThubVibratorManager"

    const-string v1, "stop vibrate"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/TranVibrator;->stop()V

    :cond_0
    return-void
.end method

.method public vibrate(I)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(I)V

    :cond_0
    return-void
.end method

.method public vibrate(Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public vibrate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;-><init>(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file and callback: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/os/ITranMediaCallback;)V

    :cond_1
    return-void
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 8
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;-><init>(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file and callback: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/os/ITranMediaCallback;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
