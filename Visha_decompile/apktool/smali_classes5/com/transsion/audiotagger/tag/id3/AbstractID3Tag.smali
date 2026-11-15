.class public abstract Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTag;
.source "SourceFile"


# static fields
.field protected static final TAG_RELEASE:Ljava/lang/String; = "ID3v"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID3v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getRelease()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getRevision()B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoggingFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getMajorVersion()B
.end method

.method public abstract getRelease()B
.end method

.method public abstract getRevision()B
.end method

.method public setLoggingFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->loggingFilename:Ljava/lang/String;

    return-void
.end method
