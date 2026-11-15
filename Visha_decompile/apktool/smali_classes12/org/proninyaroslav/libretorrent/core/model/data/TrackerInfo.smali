.class public Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;
.super Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;,
        Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public message:Ljava/lang/String;

.field public status:I

.field public tier:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    .line 11
    iput p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    .line 12
    iput p4, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/AnnounceEntry;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/libtorrent4j/AnnounceEntry;->url()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lorg/libtorrent4j/AnnounceEntry;->url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lorg/libtorrent4j/AnnounceEntry;->tier()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    .line 4
    invoke-virtual {p1}, Lorg/libtorrent4j/AnnounceEntry;->endpoints()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->getMessageAndStatus(Lorg/libtorrent4j/AnnounceEntry;Ljava/util/List;)Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    move-result-object p1

    .line 6
    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    .line 7
    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;->a:I

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->lambda$getMessageAndStatus$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private calcStatusCount(Lorg/libtorrent4j/AnnounceEntry;Lorg/libtorrent4j/AnnounceInfohash;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/AnnounceEntry;",
            "Lorg/libtorrent4j/AnnounceInfohash;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->infoHashStatus(Lorg/libtorrent4j/AnnounceEntry;Lorg/libtorrent4j/AnnounceInfohash;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getMessageAndStatus(Lorg/libtorrent4j/AnnounceEntry;Ljava/util/List;)Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/AnnounceEntry;",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/AnnounceEndpoint;",
            ">;)",
            "Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;"
        }
    .end annotation

    const/4 v0, -0x1

    const-string v1, ""

    if-eqz p1, :cond_c

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, v1

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libtorrent4j/AnnounceEndpoint;

    invoke-virtual {v5}, Lorg/libtorrent4j/AnnounceEndpoint;->infohashV1()Lorg/libtorrent4j/AnnounceInfohash;

    move-result-object v6

    invoke-direct {p0, p1, v6, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->calcStatusCount(Lorg/libtorrent4j/AnnounceEntry;Lorg/libtorrent4j/AnnounceInfohash;Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/libtorrent4j/AnnounceEndpoint;->infohashV2()Lorg/libtorrent4j/AnnounceInfohash;

    move-result-object v6

    invoke-direct {p0, p1, v6, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->calcStatusCount(Lorg/libtorrent4j/AnnounceEntry;Lorg/libtorrent4j/AnnounceInfohash;Ljava/util/Map;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/libtorrent4j/AnnounceEndpoint;->infohashV1()Lorg/libtorrent4j/AnnounceInfohash;

    move-result-object v6

    invoke-virtual {v6}, Lorg/libtorrent4j/AnnounceInfohash;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/libtorrent4j/AnnounceEndpoint;->infohashV2()Lorg/libtorrent4j/AnnounceInfohash;

    move-result-object v7

    invoke-virtual {v7}, Lorg/libtorrent4j/AnnounceInfohash;->message()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v3, v6

    goto :goto_1

    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v7

    :cond_3
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/libtorrent4j/AnnounceEndpoint;->infohashV1()Lorg/libtorrent4j/AnnounceInfohash;

    move-result-object v6

    invoke-virtual {v6}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/libtorrent4j/swig/announce_infohash;

    invoke-virtual {v6}, Lorg/libtorrent4j/swig/announce_infohash;->getLast_error()Lorg/libtorrent4j/swig/error_code;

    move-result-object v6

    invoke-virtual {v5}, Lorg/libtorrent4j/AnnounceEndpoint;->infohashV2()Lorg/libtorrent4j/AnnounceInfohash;

    move-result-object v5

    invoke-virtual {v5}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libtorrent4j/swig/announce_infohash;

    invoke-virtual {v5}, Lorg/libtorrent4j/swig/announce_infohash;->getLast_error()Lorg/libtorrent4j/swig/error_code;

    move-result-object v5

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ltva;

    invoke-direct {v6}, Ltva;-><init>()V

    invoke-interface {p1, v5, v6}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    invoke-direct {p1, p0, v5, v1}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V

    return-object p1

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    invoke-direct {p1, p0, p2, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V

    return-object p1

    :cond_7
    if-eqz v9, :cond_9

    invoke-virtual {v9, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    move-object v3, v4

    :cond_8
    invoke-direct {p1, p0, v8, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V

    return-object p1

    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    move-object v3, v4

    :cond_a
    invoke-direct {p1, p0, v10, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V

    return-object p1

    :cond_b
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    invoke-direct {p1, p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V

    return-object p1

    :cond_c
    :goto_2
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;

    invoke-direct {p1, p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V

    return-object p1
.end method

.method private infoHashStatus(Lorg/libtorrent4j/AnnounceEntry;Lorg/libtorrent4j/AnnounceInfohash;)I
    .locals 0

    invoke-virtual {p2}, Lorg/libtorrent4j/AnnounceInfohash;->updating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p2}, Lorg/libtorrent4j/AnnounceInfohash;->fails()S

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    invoke-virtual {p1}, Lorg/libtorrent4j/AnnounceEntry;->isVerified()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method private static synthetic lambda$getMessageAndStatus$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->sum(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    if-ne v2, v3, :cond_4

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    if-ne p0, p1, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v0, "NOT_WORKING"

    goto :goto_0

    :cond_1
    const-string v0, "NOT_CONTACTED"

    goto :goto_0

    :cond_2
    const-string v0, "UPDATING"

    goto :goto_0

    :cond_3
    const-string v0, "WORKING"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackerInfo{url=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", message=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", status="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->tier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;->status:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
