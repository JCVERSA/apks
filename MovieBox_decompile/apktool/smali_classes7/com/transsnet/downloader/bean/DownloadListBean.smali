.class public final Lcom/transsnet/downloader/bean/DownloadListBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008[\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0087\u0002\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u000e\u00a2\u0006\u0004\u0008!\u0010\"J\u0011\u0010`\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010f\u001a\u00020\u000eH\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0010\u0010h\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010>J\u0010\u0010i\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010>J\u0010\u0010j\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010>J\u0011\u0010k\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0011\u0010n\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u0010\u0010p\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010>J\u000b\u0010q\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010s\u001a\u00020\u001eH\u00c6\u0003J\t\u0010t\u001a\u00020\u000eH\u00c6\u0003J\t\u0010u\u001a\u00020\u000eH\u00c6\u0003J\u00a0\u0002\u0010v\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010 \u001a\u00020\u000eH\u00c6\u0001\u00a2\u0006\u0002\u0010wJ\u0013\u0010x\u001a\u00020\u001e2\u0008\u0010y\u001a\u0004\u0018\u00010zH\u00d6\u0003J\t\u0010{\u001a\u00020\u000eH\u00d6\u0001J\t\u0010|\u001a\u00020\nH\u00d6\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R \u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R \u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00100\"\u0004\u00084\u00102R \u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00100\"\u0004\u00086\u00102R\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R \u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00100\"\u0004\u0008<\u00102R\"\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010A\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010A\u001a\u0004\u0008B\u0010>\"\u0004\u0008C\u0010@R\"\u0010\u0012\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010A\u001a\u0004\u0008D\u0010>\"\u0004\u0008E\u0010@R&\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010$\"\u0004\u0008G\u0010&R \u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00100\"\u0004\u0008I\u00102R \u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00100\"\u0004\u0008K\u00102R&\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010$\"\u0004\u0008M\u0010&R \u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\"\u0010\u001a\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010A\u001a\u0004\u0008R\u0010>\"\u0004\u0008S\u0010@R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u00100\"\u0004\u0008U\u00102R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u00100\"\u0004\u0008W\u00102R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R\u001a\u0010\u001f\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u00108\"\u0004\u0008]\u0010:R\u001a\u0010 \u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u00108\"\u0004\u0008_\u0010:\u00a8\u0006}"
    }
    d2 = {
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
        "Ljava/io/Serializable;",
        "items",
        "",
        "Lcom/transsion/moviedetailapi/DownloadItem;",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "cover",
        "Lcom/transsion/moviedetailapi/bean/Cover;",
        "subjectId",
        "",
        "groupId",
        "title",
        "subjectType",
        "",
        "subjectTitle",
        "position",
        "totalEpisode",
        "resolution",
        "resolutionList",
        "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
        "description",
        "genre",
        "tags",
        "shortTVFavInfo",
        "Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;",
        "durationSeconds",
        "releaseDate",
        "countryName",
        "loadMore",
        "",
        "startPosition",
        "endPosition",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "getCover",
        "()Lcom/transsion/moviedetailapi/bean/Cover;",
        "setCover",
        "(Lcom/transsion/moviedetailapi/bean/Cover;)V",
        "getSubjectId",
        "()Ljava/lang/String;",
        "setSubjectId",
        "(Ljava/lang/String;)V",
        "getGroupId",
        "setGroupId",
        "getTitle",
        "setTitle",
        "getSubjectType",
        "()I",
        "setSubjectType",
        "(I)V",
        "getSubjectTitle",
        "setSubjectTitle",
        "getPosition",
        "()Ljava/lang/Integer;",
        "setPosition",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getTotalEpisode",
        "setTotalEpisode",
        "getResolution",
        "setResolution",
        "getResolutionList",
        "setResolutionList",
        "getDescription",
        "setDescription",
        "getGenre",
        "setGenre",
        "getTags",
        "setTags",
        "getShortTVFavInfo",
        "()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;",
        "setShortTVFavInfo",
        "(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V",
        "getDurationSeconds",
        "setDurationSeconds",
        "getReleaseDate",
        "setReleaseDate",
        "getCountryName",
        "setCountryName",
        "getLoadMore",
        "()Z",
        "setLoadMore",
        "(Z)V",
        "getStartPosition",
        "setStartPosition",
        "getEndPosition",
        "setEndPosition",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "copy",
        "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/transsnet/downloader/bean/DownloadListBean;",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "Downloader_psRelease"
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
.field private countryName:Ljava/lang/String;

.field private cover:Lcom/transsion/moviedetailapi/bean/Cover;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private durationSeconds:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "durationSeconds"
    .end annotation
.end field

.field private transient endPosition:I

.field private genre:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genre"
    .end annotation
.end field

.field private groupId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupId"
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private transient loadMore:Z

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pager"
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private releaseDate:Ljava/lang/String;

.field private resolution:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field private resolutionList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collectionResolutions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;"
        }
    .end annotation
.end field

.field private shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favInfo"
    .end annotation
.end field

.field private transient startPosition:I

.field private subjectId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subjectId"
    .end annotation
.end field

.field private subjectTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subjectTitle"
    .end annotation
.end field

.field private subjectType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subjectType"
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private totalEpisode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalEpisode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Lcom/transsion/moviedetailapi/bean/Cover;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    move v1, p7

    .line 8
    iput v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    move/from16 v1, p20

    .line 21
    iput-boolean v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    move/from16 v1, p21

    .line 22
    iput v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_0

    move v11, v2

    goto :goto_0

    :cond_0
    move/from16 v11, p7

    :goto_0
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    move-object v15, v3

    goto :goto_1

    :cond_1
    move-object/from16 v15, p11

    :goto_1
    and-int/lit16 v1, v0, 0x800

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object/from16 v16, v4

    goto :goto_2

    :cond_2
    move-object/from16 v16, p12

    :goto_2
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3

    move-object/from16 v17, v4

    goto :goto_3

    :cond_3
    move-object/from16 v17, p13

    :goto_3
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4

    move-object/from16 v18, v4

    goto :goto_4

    :cond_4
    move-object/from16 v18, p14

    :goto_4
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_5

    move-object/from16 v19, v4

    goto :goto_5

    :cond_5
    move-object/from16 v19, p15

    :goto_5
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move-object/from16 v20, v4

    goto :goto_6

    :cond_6
    move-object/from16 v20, p16

    :goto_6
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move-object/from16 v21, v3

    goto :goto_7

    :cond_7
    move-object/from16 v21, p17

    :goto_7
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move-object/from16 v22, v4

    goto :goto_8

    :cond_8
    move-object/from16 v22, p18

    :goto_8
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move-object/from16 v23, v4

    goto :goto_9

    :cond_9
    move-object/from16 v23, p19

    :goto_9
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move/from16 v24, v1

    goto :goto_a

    :cond_a
    move/from16 v24, p20

    :goto_a
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move/from16 v25, v2

    goto :goto_b

    :cond_b
    move/from16 v25, p21

    :goto_b
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move/from16 v26, v2

    goto :goto_c

    :cond_c
    move/from16 v26, p22

    :goto_c
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 25
    invoke-direct/range {v4 .. v26}, Lcom/transsnet/downloader/bean/DownloadListBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsnet/downloader/bean/DownloadListBean;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/Object;)Lcom/transsnet/downloader/bean/DownloadListBean;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-boolean v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    goto :goto_13

    :cond_13
    move/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_14

    iget v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    goto :goto_14

    :cond_14
    move/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v1, v1, v16

    if-eqz v1, :cond_15

    iget v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    goto :goto_15

    :cond_15
    move/from16 v1, p22

    :goto_15
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p21, v15

    move/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/transsnet/downloader/bean/DownloadListBean;->copy(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/transsnet/downloader/bean/DownloadListBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component21()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final component22()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Lcom/transsion/moviedetailapi/bean/Cover;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/transsnet/downloader/bean/DownloadListBean;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Lcom/transsion/moviedetailapi/bean/Cover;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)",
            "Lcom/transsnet/downloader/bean/DownloadListBean;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    new-instance v23, Lcom/transsnet/downloader/bean/DownloadListBean;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lcom/transsnet/downloader/bean/DownloadListBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-object v23
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 80
    .line 81
    iget v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 82
    .line 83
    if-eq v1, v3, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 109
    .line 110
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 120
    .line 121
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 133
    .line 134
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_f

    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 164
    .line 165
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 166
    .line 167
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_10

    .line 172
    .line 173
    return v2

    .line 174
    :cond_10
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 175
    .line 176
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 177
    .line 178
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_11

    .line 183
    .line 184
    return v2

    .line 185
    :cond_11
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 186
    .line 187
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_12

    .line 194
    .line 195
    return v2

    .line 196
    :cond_12
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_13

    .line 205
    .line 206
    return v2

    .line 207
    :cond_13
    iget-object v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_14

    .line 216
    .line 217
    return v2

    .line 218
    :cond_14
    iget-boolean v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 219
    .line 220
    iget-boolean v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 221
    .line 222
    if-eq v1, v3, :cond_15

    .line 223
    .line 224
    return v2

    .line 225
    :cond_15
    iget v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 226
    .line 227
    iget v3, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 228
    .line 229
    if-eq v1, v3, :cond_16

    .line 230
    .line 231
    return v2

    .line 232
    :cond_16
    iget v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 233
    .line 234
    iget p1, p1, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 235
    .line 236
    if-eq v1, p1, :cond_17

    .line 237
    .line 238
    return v2

    .line 239
    :cond_17
    return v0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCover()Lcom/transsion/moviedetailapi/bean/Cover;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGenre()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPosition()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReleaseDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolution()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolutionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalEpisode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 80
    .line 81
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    move v2, v1

    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :goto_6
    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 98
    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    move v2, v1

    .line 102
    goto :goto_7

    .line 103
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    :goto_7
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    .line 110
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 111
    .line 112
    if-nez v2, :cond_8

    .line 113
    .line 114
    move v2, v1

    .line 115
    goto :goto_8

    .line 116
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    :goto_8
    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    .line 122
    .line 123
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 124
    .line 125
    if-nez v2, :cond_9

    .line 126
    .line 127
    move v2, v1

    .line 128
    goto :goto_9

    .line 129
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    :goto_9
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    .line 135
    .line 136
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 137
    .line 138
    if-nez v2, :cond_a

    .line 139
    .line 140
    move v2, v1

    .line 141
    goto :goto_a

    .line 142
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    :goto_a
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    .line 148
    .line 149
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 150
    .line 151
    if-nez v2, :cond_b

    .line 152
    .line 153
    move v2, v1

    .line 154
    goto :goto_b

    .line 155
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_b
    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    .line 162
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 163
    .line 164
    if-nez v2, :cond_c

    .line 165
    .line 166
    move v2, v1

    .line 167
    goto :goto_c

    .line 168
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    :goto_c
    add-int/2addr v0, v2

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    .line 174
    .line 175
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 176
    .line 177
    if-nez v2, :cond_d

    .line 178
    .line 179
    move v2, v1

    .line 180
    goto :goto_d

    .line 181
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    :goto_d
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    .line 187
    .line 188
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 189
    .line 190
    if-nez v2, :cond_e

    .line 191
    .line 192
    move v2, v1

    .line 193
    goto :goto_e

    .line 194
    :cond_e
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->hashCode()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    :goto_e
    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    .line 200
    .line 201
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 202
    .line 203
    if-nez v2, :cond_f

    .line 204
    .line 205
    move v2, v1

    .line 206
    goto :goto_f

    .line 207
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    :goto_f
    add-int/2addr v0, v2

    .line 212
    mul-int/lit8 v0, v0, 0x1f

    .line 213
    .line 214
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 215
    .line 216
    if-nez v2, :cond_10

    .line 217
    .line 218
    move v2, v1

    .line 219
    goto :goto_10

    .line 220
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    :goto_10
    add-int/2addr v0, v2

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    .line 226
    .line 227
    iget-object v2, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 228
    .line 229
    if-nez v2, :cond_11

    .line 230
    .line 231
    goto :goto_11

    .line 232
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    :goto_11
    add-int/2addr v0, v1

    .line 237
    mul-int/lit8 v0, v0, 0x1f

    .line 238
    .line 239
    iget-boolean v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 240
    .line 241
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    add-int/2addr v0, v1

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 249
    .line 250
    add-int/2addr v0, v1

    .line 251
    mul-int/lit8 v0, v0, 0x1f

    .line 252
    .line 253
    iget v1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 254
    .line 255
    add-int/2addr v0, v1

    .line 256
    return v0
.end method

.method public final setCountryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCover(Lcom/transsion/moviedetailapi/bean/Cover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 2
    .line 3
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDurationSeconds(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setEndPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGenre(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-void
.end method

.method public final setPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setReleaseDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setResolution(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setResolutionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortTVFavInfo(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalEpisode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->items:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->cover:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->groupId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->title:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectType:I

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->subjectTitle:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->position:Ljava/lang/Integer;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->totalEpisode:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolution:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->resolutionList:Ljava/util/List;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->description:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->genre:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->tags:Ljava/util/List;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->shortTVFavInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->durationSeconds:Ljava/lang/Integer;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->releaseDate:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->countryName:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-boolean v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->loadMore:Z

    .line 52
    .line 53
    move/from16 v21, v15

    .line 54
    .line 55
    iget v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->startPosition:I

    .line 56
    .line 57
    move/from16 v22, v15

    .line 58
    .line 59
    iget v15, v0, Lcom/transsnet/downloader/bean/DownloadListBean;->endPosition:I

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    move/from16 v23, v15

    .line 67
    .line 68
    const-string v15, "DownloadListBean(items="

    .line 69
    .line 70
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", pager="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", cover="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", subjectId="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", groupId="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", title="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", subjectType="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", subjectTitle="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", position="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", totalEpisode="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", resolution="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", resolutionList="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", description="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", genre="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", tags="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-object/from16 v1, v16

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", shortTVFavInfo="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-object/from16 v1, v17

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", durationSeconds="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-object/from16 v1, v18

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ", releaseDate="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-object/from16 v1, v19

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ", countryName="

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    move-object/from16 v1, v20

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v1, ", loadMore="

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move/from16 v1, v21

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", startPosition="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move/from16 v1, v22

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", endPosition="

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move/from16 v1, v23

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ")"

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    return-object v0
.end method
