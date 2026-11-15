.class Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;

.field public final c:Lorg/proninyaroslav/libretorrent/core/system/DefaultFsModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;->a:Landroid/content/Context;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;

    invoke-direct {v0, p1}, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/system/DefaultFsModule;

    invoke-direct {v0, p1}, Lorg/proninyaroslav/libretorrent/core/system/DefaultFsModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/DefaultFsModule;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->g(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->f(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolverImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/DefaultFsModule;

    return-object p0

    :cond_1
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot resolve file system for the given uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
