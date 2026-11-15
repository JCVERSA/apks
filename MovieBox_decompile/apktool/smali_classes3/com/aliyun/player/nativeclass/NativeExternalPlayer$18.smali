.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;


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
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    int-to-long v3, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSubtitleHide(IJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    int-to-long v3, p1

    .line 8
    const/4 v5, 0x0

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSubtitleShow(IJLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    int-to-long v3, p1

    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
