.class public Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

.field public static b:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;
    .locals 3

    const-class v0, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->b:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;

    invoke-direct {v2, p0}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;-><init>(Landroid/content/Context;Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->b:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->b:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;
    .locals 2

    const-class v0, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeImpl;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
