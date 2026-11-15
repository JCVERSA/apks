.class public Lcom/just/agentweb/filechooser/FileCompressor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/just/agentweb/filechooser/FileCompressor;


# instance fields
.field private mFileCompressEngine:Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;


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

.method public static final getInstance()Lcom/just/agentweb/filechooser/FileCompressor;
    .locals 2

    sget-object v0, Lcom/just/agentweb/filechooser/FileCompressor;->sInstance:Lcom/just/agentweb/filechooser/FileCompressor;

    if-nez v0, :cond_1

    const-class v0, Lcom/just/agentweb/filechooser/FileCompressor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/just/agentweb/filechooser/FileCompressor;->sInstance:Lcom/just/agentweb/filechooser/FileCompressor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/just/agentweb/filechooser/FileCompressor;

    invoke-direct {v1}, Lcom/just/agentweb/filechooser/FileCompressor;-><init>()V

    sput-object v1, Lcom/just/agentweb/filechooser/FileCompressor;->sInstance:Lcom/just/agentweb/filechooser/FileCompressor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/just/agentweb/filechooser/FileCompressor;->sInstance:Lcom/just/agentweb/filechooser/FileCompressor;

    return-object v0
.end method


# virtual methods
.method public fileCompress(Ljava/lang/String;[Landroid/net/Uri;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/net/Uri;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileCompressor;->mFileCompressEngine:Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;

    if-nez p0, :cond_0

    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;->compressFile(Ljava/lang/String;[Landroid/net/Uri;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public registerFileCompressEngine(Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/filechooser/FileCompressor;->mFileCompressEngine:Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;

    return-void
.end method

.method public unregisterFileCompressEngine(Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/just/agentweb/filechooser/FileCompressor;->mFileCompressEngine:Lcom/just/agentweb/filechooser/FileCompressor$FileCompressEngine;

    return-void
.end method
