.class public final Lorg/libtorrent4j/swig/announce_entry$tracker_source;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/swig/announce_entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tracker_source"
.end annotation


# static fields
.field public static final source_client:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

.field public static final source_magnet_link:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

.field public static final source_tex:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

.field public static final source_torrent:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/announce_entry$tracker_source;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    const-string v1, "source_torrent"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_entry_source_torrent_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/swig/announce_entry$tracker_source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->source_torrent:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    new-instance v1, Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    const-string v2, "source_client"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_entry_source_client_get()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/libtorrent4j/swig/announce_entry$tracker_source;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->source_client:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    new-instance v2, Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    const-string v3, "source_magnet_link"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_entry_source_magnet_link_get()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/libtorrent4j/swig/announce_entry$tracker_source;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->source_magnet_link:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    new-instance v3, Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    const-string v4, "source_tex"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_entry_source_tex_get()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/libtorrent4j/swig/announce_entry$tracker_source;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->source_tex:Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    filled-new-array {v0, v1, v2, v3}, [Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValues:[Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/announce_entry$tracker_source;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/announce_entry$tracker_source;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValues:[Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValues:[Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/libtorrent4j/swig/announce_entry$tracker_source;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/announce_entry$tracker_source;->swigName:Ljava/lang/String;

    return-object p0
.end method
