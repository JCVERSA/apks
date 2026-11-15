.class public Lcom/mgtv/downloader/p2p/ImgoP2pTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HUNAN_REF:Ljava/lang/String; = "hunantv.com"

.field private static final NORMAL_REF:Ljava/lang/String; = ""

.field public static final STATUS_DELETE:I = -0x1

.field public static final STATUS_NONE:I = -0x1

.field public static final STATUS_PAUSE:I = 0x1

.field public static final STATUS_RUNNING:I


# instance fields
.field private final MAX_SIZE:I

.field public attachedUrlPara:Ljava/lang/String;

.field public dnsPro:I

.field public mDefinition:Ljava/lang/String;

.field public mHash:[B

.field public mHostPath:Ljava/lang/String;

.field public mIsOtherCdn:Ljava/lang/String;

.field public mKeyUrl:Ljava/lang/String;

.field public mOrgUrl:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mSaveStatus:I

.field private mStatus:I

.field private mStrHash:Ljava/lang/String;

.field public mVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->MAX_SIZE:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHash:[B

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHostPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mKeyUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mReferer:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->dnsPro:I

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->attachedUrlPara:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mIsOtherCdn:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mVideoId:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mDefinition:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mStatus:I

    iput v3, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mSaveStatus:I

    iput-object v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mStrHash:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->parseOrgUrl(Ljava/lang/String;)V

    const-string p1, "hunantv.com"

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mReferer:Ljava/lang/String;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHash:[B

    const/4 p1, 0x1

    if-nez p2, :cond_0

    iput p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->dnsPro:I

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    iput v2, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->dnsPro:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->dnsPro:I

    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->attachedUrlPara:Ljava/lang/String;

    return-void
.end method

.method private parseOrgUrl(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    const-string v1, "txy"

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseOrgUrl orgUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseOrgUrl getPath():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseOrgUrl getFile():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseOrgUrl getQuery():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHostPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseOrgUrl mHostPath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHostPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getHostPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHostPath:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mStatus:I

    return p0
.end method

.method public getStrHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mStrHash:Ljava/lang/String;

    return-object p0
.end method

.method public resumeStatus()I
    .locals 2

    iget v0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mSaveStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mSaveStatus:I

    return v0
.end method

.method public saveStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mSaveStatus:I

    return-void
.end method

.method public setHostPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHostPath:Ljava/lang/String;

    return-void
.end method

.method public setKeyParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/downloader/p2p/ImgoP2pTask;
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mIsOtherCdn:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mVideoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mDefinition:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mStatus:I

    return-void
.end method

.method public setStrHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mStrHash:Ljava/lang/String;

    return-void
.end method
