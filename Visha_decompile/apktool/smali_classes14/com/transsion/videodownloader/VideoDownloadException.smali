.class public Lcom/transsion/videodownloader/VideoDownloadException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadException;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadException;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadException;->mMsg:Ljava/lang/String;

    return-object p0
.end method
