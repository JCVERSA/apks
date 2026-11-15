.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->create(JLcom/aliyun/player/nativeclass/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OnStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1800(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
