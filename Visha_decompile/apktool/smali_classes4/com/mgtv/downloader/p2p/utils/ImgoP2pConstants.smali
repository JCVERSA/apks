.class public Lcom/mgtv/downloader/p2p/utils/ImgoP2pConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CACHE_PATH:Ljava/lang/String;

.field public static final DEFAULT_CONFIG_PATH:Ljava/lang/String;

.field public static final DEFAULT_P2P_AD_MAXMEM:I = 0x4b

.field public static final DEFAULT_P2P_AD_MINMEM:I = 0xa

.field public static final DEFAULT_P2P_MAXMEM:I = 0x2bc

.field public static final DEFAULT_P2P_MINMEM:I = 0x32

.field public static final DEFAULT_P2P_PORT:I = 0x759b

.field public static final LOCAL_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final MANGO_FIXED_HOST:Ljava/lang/String; = "hunantv.com"

.field public static final PRIVATE_CDN_HOST:Ljava/lang/String; = "hunantv.imgo.tv"

.field public static final YF_PROXY_FIXED_STRING:Ljava/lang/String; = "yfhttpagent"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MangoTvTemp/config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mgtv/downloader/p2p/utils/ImgoP2pConstants;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MangoTvTemp/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mgtv/downloader/p2p/utils/ImgoP2pConstants;->DEFAULT_CACHE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
