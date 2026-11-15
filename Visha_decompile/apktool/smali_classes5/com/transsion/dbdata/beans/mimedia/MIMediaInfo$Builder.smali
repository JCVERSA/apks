.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0014\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;",
        "",
        "<init>",
        "()V",
        "mediaInfo",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;",
        "setNeedRecordPlayInfo",
        "collectFlag",
        "",
        "setMediaLibraryId",
        "mediaLibraryId",
        "",
        "setMediaLibraryTitle",
        "mediaLibraryTitle",
        "setVideoId",
        "videoId",
        "setCoverUri",
        "coverUri",
        "setVideoTitle",
        "videoTitle",
        "build",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method


# virtual methods
.method public final build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-object p0
.end method

.method public final setCoverUri(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->access$setCoverUri$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->access$setMediaLibraryId$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setMediaLibraryTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->access$setMediaLibraryTitle$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNeedRecordPlayInfo(Z)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->access$setMediaNeedRecordPlayInfo$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Z)V

    return-object p0
.end method

.method public final setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->access$setVideoId$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->mediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->access$setVideoTitle$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method
