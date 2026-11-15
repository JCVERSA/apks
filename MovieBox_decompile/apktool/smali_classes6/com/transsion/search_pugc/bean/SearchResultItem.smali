.class public final Lcom/transsion/search_pugc/bean/SearchResultItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JQ\u0010,\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0006\u0010-\u001a\u00020.J\u0013\u0010/\u001a\u00020\u001b2\u0008\u00100\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020.H\u00d6\u0001J\t\u00103\u001a\u00020\u0003H\u00d6\u0001J\u0016\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020.R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0010\"\u0004\u0008$\u0010%\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/search_pugc/bean/SearchResultItem;",
        "Landroid/os/Parcelable;",
        "topicType",
        "",
        "video",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "collection",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;",
        "verticalRank",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;",
        "hashTag",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;",
        "showType",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)V",
        "getTopicType",
        "()Ljava/lang/String;",
        "getVideo",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "getCollection",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;",
        "getVerticalRank",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;",
        "getHashTag",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;",
        "getShowType",
        "showTypeExpand",
        "",
        "getShowTypeExpand",
        "()Z",
        "searchType",
        "Lcom/transsion/search_pugc/constant/SearchType;",
        "getSearchType",
        "()Lcom/transsion/search_pugc/constant/SearchType;",
        "ops",
        "getOps",
        "setOps",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/search_pugc/bean/SearchResultItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collection"
    .end annotation
.end field

.field private final hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hashTag"
    .end annotation
.end field

.field private ops:Ljava/lang/String;

.field private final showType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showType"
    .end annotation
.end field

.field private final topicType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topicType"
    .end annotation
.end field

.field private final verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verticalRank"
    .end annotation
.end field

.field private final video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/bean/SearchResultItem$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/search_pugc/bean/SearchResultItem$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/search_pugc/bean/SearchResultItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/search_pugc/bean/SearchResultItem;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 5
    iput-object p3, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 6
    iput-object p4, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 7
    iput-object p5, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 8
    iput-object p6, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->ops:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 10
    invoke-direct/range {p1 .. p7}, Lcom/transsion/search_pugc/bean/SearchResultItem;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search_pugc/bean/SearchResultItem;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/search_pugc/bean/SearchResultItem;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 12
    .line 13
    :cond_1
    move-object p8, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    move-object p2, p0

    .line 43
    move-object p3, p1

    .line 44
    move-object p4, p8

    .line 45
    move-object p5, v0

    .line 46
    move-object p6, v1

    .line 47
    move-object p7, v2

    .line 48
    move-object p8, v3

    .line 49
    invoke-virtual/range {p2 .. p8}, Lcom/transsion/search_pugc/bean/SearchResultItem;->copy(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)Lcom/transsion/search_pugc/bean/SearchResultItem;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)Lcom/transsion/search_pugc/bean/SearchResultItem;
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/search_pugc/bean/SearchResultItem;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/transsion/search_pugc/bean/SearchResultItem;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
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
    instance-of v1, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;

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
    check-cast p1, Lcom/transsion/search_pugc/bean/SearchResultItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

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
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

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
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

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
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

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
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    return v0
.end method

.method public final getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHashTag()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSearchType()Lcom/transsion/search_pugc/constant/SearchType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v1, "VERTICAL_RANK"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getShowTypeExpand()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    const-string v1, "HASH_TAG"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :sswitch_2
    const-string v1, "UGC_COLLECTION"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getShowTypeExpand()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v1, "UGC_VIDEO"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    :goto_0
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

    .line 79
    .line 80
    :goto_1
    return-object v0

    .line 81
    :sswitch_data_0
    .sparse-switch
        -0x7697b173 -> :sswitch_3
        0x1e76f7ac -> :sswitch_2
        0x378ef4c9 -> :sswitch_1
        0x7938df55 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getShowType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowTypeExpand()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ShowTypeOne"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "ShowTypeTwo"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public final getTopicType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

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
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

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
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

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
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

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
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_5
    add-int/2addr v0, v1

    .line 76
    return v0
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->ops:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "SearchResultItem(topicType="

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", video="

    .line 27
    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", collection="

    .line 35
    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", verticalRank="

    .line 43
    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", hashTag="

    .line 51
    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", showType="

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ")"

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->topicType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->video:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->collection:Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->hashTag:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/search_pugc/bean/SearchResultItem;->showType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
