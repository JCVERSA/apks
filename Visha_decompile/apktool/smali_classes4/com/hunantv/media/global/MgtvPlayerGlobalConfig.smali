.class public Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/global/MgtvPlayerGlobalConfig$PkgData;
    }
.end annotation


# static fields
.field private static sLocker:Ljava/lang/Object;

.field private static sencryptData:[B

.field private static stokenA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->sLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptData()[B
    .locals 2

    sget-object v0, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->sLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->sencryptData:[B

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getTokenA()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->sLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->stokenA:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setValidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->sLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->stokenA:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sput-object p0, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->sencryptData:[B

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
