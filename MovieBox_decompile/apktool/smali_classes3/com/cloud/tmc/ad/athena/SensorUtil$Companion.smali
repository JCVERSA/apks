.class public final Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/athena/SensorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;",
        "",
        "()V",
        "getInstance",
        "Lcom/cloud/tmc/ad/athena/SensorUtil;",
        "register",
        "",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;->register$lambda$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final register$lambda$0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/SensorUtil;->Companion:Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;->getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/cloud/tmc/ad/athena/SensorUtil;->onStart()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;->getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil;->onStop()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;->INSTANCE:Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;->getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final register()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/cloud/tmc/ad/athena/b;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/cloud/tmc/ad/athena/b;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x7d0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
