.class public Lcom/aliyun/player/HlsKeyGenerator;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/aliyun/player/HlsKeyGenerator;


# instance fields
.field private mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 6
    .line 7
    return-void
.end method

.method private static getHlsKey(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->getInstance()Lcom/aliyun/player/HlsKeyGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;->getHlsKey(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public static getInstance()Lcom/aliyun/player/HlsKeyGenerator;
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/aliyun/player/HlsKeyGenerator;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/aliyun/player/HlsKeyGenerator;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/aliyun/player/HlsKeyGenerator;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    .line 27
    .line 28
    return-object v0
.end method

.method public static loadClass()V
    .locals 0

    .line 1
    return-void
.end method

.method private static onHlsKeyInfoInit(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->getInstance()Lcom/aliyun/player/HlsKeyGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0, p1}, Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;->onHlsKeyInfoInit(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnKeyGenerateListener(Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    .line 2
    .line 3
    return-void
.end method
