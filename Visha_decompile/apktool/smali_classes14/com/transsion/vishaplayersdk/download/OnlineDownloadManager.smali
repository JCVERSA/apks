.class public Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlineDownloadManager"

.field static i:Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;


# instance fields
.field _openId:Ljava/lang/String;

.field _token:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;-><init>()V

    sput-object v0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->i:Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJWSVNIQS1DTElFTlQtVE9LRU4iLCJvcGVuaWQiOiJCcDkzcWd3TUh2eWtHeVVWNnhqdVRHYmlrWGpWUmNuVzhnK0RQNjZwUUJvPSIsImlzcyI6IlZpc2hhcGxheWVyIiwiZXhwIjoxNjk5ODYzNDkxLCJpYXQiOjE2OTkyNTg2OTEsImp0aSI6IjM4NjYzNTM3NzM2MTk0ODY3MiJ9.-0CIw135cYKQ24mNrdtMPorohwK9Jq6gLRjexb7h88w"

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->_token:Ljava/lang/String;

    const-string v0, "94638628047917056"

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->_openId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->i:Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;

    return-object v0
.end method


# virtual methods
.method public mgInit(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->context:Landroid/content/Context;

    invoke-static {}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->getInstance()Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$1;-><init>(Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$2;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$2;-><init>(Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;)V

    invoke-virtual {v0, v1, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->init(Lcom/mgtv/ssp/downloadsdk/DlPluginContext;Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;)Ljava/lang/String;

    return-void
.end method

.method public startDownlaod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->getInstance()Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->_openId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;->_token:Ljava/lang/String;

    new-instance v5, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$3;

    invoke-direct {v5, p0}, Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager$3;-><init>(Lcom/transsion/vishaplayersdk/download/OnlineDownloadManager;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V

    return-void
.end method
