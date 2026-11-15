.class Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnVerifyTimeExpireCallback"
.end annotation


# instance fields
.field private avpBaseWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/ApsaraVideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->access$100(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    .line 17
    .line 18
    return-object p1
.end method

.method public onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->access$000(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    .line 17
    .line 18
    return-object p1
.end method
