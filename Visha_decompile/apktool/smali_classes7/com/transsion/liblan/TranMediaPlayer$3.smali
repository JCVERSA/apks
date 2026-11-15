.class Lcom/transsion/liblan/TranMediaPlayer$3;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranMediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mEncodedDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/liblan/TranMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    return-void
.end method

.method private onAudioDevicesChanged()V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    iget-object v5, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const-string v0, "stereo"

    goto :goto_1

    :cond_1
    const-string v0, "pcm"

    :goto_1
    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-static {p0, v3, v4, v0}, Lcom/transsion/liblan/TranMediaPlayer;->e(Lcom/transsion/liblan/TranMediaPlayer;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/liblan/TranMediaPlayer;->d(Lcom/transsion/liblan/TranMediaPlayer;[I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer$3;->onAudioDevicesChanged()V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/transsion/liblan/TranMediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer$3;->onAudioDevicesChanged()V

    return-void
.end method
