.class public Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/hunantv/imgo/entity/JsonInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final HARDWARE:I = 0x0

.field public static final SOFTWARE:I = 0x1

.field public static final SURFACEVIEW:Ljava/lang/String; = "0"

.field public static final TEXTUREVIEW:Ljava/lang/String; = "1"

.field public static final TYPE_IMGO:Ljava/lang/String; = "2"


# instance fields
.field public accurate_seek:Ljava/lang/String;

.field public addrinfo_timeout:Ljava/lang/String;

.field public addrinfo_type:Ljava/lang/String;

.field public buffer_timeout:Ljava/lang/String;

.field public datasource_async:Ljava/lang/String;

.field public decodetype:Ljava/lang/String;

.field public dns_family_type:Ljava/lang/String;

.field public http_multiple:Ljava/lang/String;

.field public http_persistent:Ljava/lang/String;

.field public is_soft:Ljava/lang/String;

.field public load_retry_time:Ljava/lang/String;

.field public m3u8_gzip:Ljava/lang/String;

.field public mp_type:Ljava/lang/String;

.field public open_timeout:Ljava/lang/String;

.field public player_support:Ljava/lang/String;

.field public render_type:Ljava/lang/String;

.field public rw_timeout:Ljava/lang/String;

.field public ts_not_skip:Ljava/lang/String;

.field public weak_net_speed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig$1;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig$1;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->mp_type:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->is_soft:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->render_type:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->accurate_seek:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->open_timeout:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->rw_timeout:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->addrinfo_type:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->addrinfo_timeout:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->buffer_timeout:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->ts_not_skip:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->load_retry_time:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->datasource_async:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->weak_net_speed:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->decodetype:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->dns_family_type:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->http_persistent:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->http_multiple:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->m3u8_gzip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->mp_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->is_soft:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->render_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->accurate_seek:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->open_timeout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->rw_timeout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->addrinfo_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->addrinfo_timeout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->buffer_timeout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->ts_not_skip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->load_retry_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->datasource_async:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->weak_net_speed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->decodetype:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->dns_family_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->http_persistent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->http_multiple:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->m3u8_gzip:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
