.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p5, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, " drm Event = "

    .line 11
    .line 12
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " , extra = "

    .line 19
    .line 20
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p4, " , sessionId =  "

    .line 27
    .line 28
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-static {p1, p4}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 42
    .line 43
    invoke-static {p1, p3, p2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$300(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;I[B)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
