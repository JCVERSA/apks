.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;


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
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoRendered(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    move-wide v3, p1

    .line 8
    move-wide v5, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
