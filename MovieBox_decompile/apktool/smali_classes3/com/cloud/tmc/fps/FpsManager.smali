.class public final Lcom/cloud/tmc/fps/FpsManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/fps/FpsManager;",
        "",
        "()V",
        "recording",
        "",
        "record",
        "",
        "saveConfig",
        "config",
        "Lcom/cloud/tmc/fps/data/ConfigData;",
        "stop",
        "com.cloud.tmc.minifps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

.field private static recording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/fps/FpsManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/fps/FpsManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/fps/FpsManager;->INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final record()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/fps/record/RecordImp;->INSTANCE:Lcom/cloud/tmc/fps/record/RecordImp;

    .line 10
    .line 11
    new-instance v2, Lcom/cloud/tmc/fps/ReportManager;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/cloud/tmc/fps/ReportManager;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/fps/record/RecordImp;->addFrameListener(Lcom/cloud/tmc/fps/record/IRecord$FrameListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/fps/record/RecordImp;->recordFps(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final saveConfig(Lcom/cloud/tmc/fps/data/ConfigData;)V
    .locals 5

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/fps/data/ConfigData;->getGrayScale()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/fps/FpsConfig;->setGrayScale(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/fps/data/ConfigData;->getJankThreshold()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/fps/FpsConfig;->setJankThreshold(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/tmc/fps/data/ConfigData;->getTraceInterval()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/fps/FpsConfig;->setTraceInterval(J)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/security/SecureRandom;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0}, Lcom/cloud/tmc/fps/FpsConfig;->getGrayScale()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v3, 0x0

    .line 43
    cmpg-float p1, p1, v3

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/fps/FpsConfig;->getGrayScale()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    float-to-double v3, p1

    .line 53
    cmpg-double p1, v1, v3

    .line 54
    .line 55
    if-gtz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/cloud/tmc/fps/FpsManager;->record()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/fps/FpsManager;->stop()V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/fps/record/RecordImp;->INSTANCE:Lcom/cloud/tmc/fps/record/RecordImp;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/fps/record/RecordImp;->recordFps(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
