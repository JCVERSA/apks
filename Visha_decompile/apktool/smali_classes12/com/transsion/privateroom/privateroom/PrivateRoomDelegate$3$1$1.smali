.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;

.field final synthetic val$currentMoveSize:J

.field final synthetic val$progress:D


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;DJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;->this$2:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;

    iput-wide p2, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;->val$progress:D

    iput-wide p4, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;->val$currentMoveSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;->this$2:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;

    iget-object v1, v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;->c:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;

    iget-object v2, v1, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    iget-object v3, v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;->a:Lcom/transsion/privateroom/api/beans/PrivateFile;

    iget-wide v4, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;->val$progress:D

    iget-wide v6, v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$a;->b:J

    iget-wide v8, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$1$1;->val$currentMoveSize:J

    iget-object v10, v1, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$callback:Ltv4;

    iget-object p0, v1, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$files:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    move v11, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v11, p0

    :goto_0
    invoke-static/range {v2 .. v11}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->d(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Lcom/transsion/privateroom/api/beans/PrivateFile;DJJLtv4;Z)V

    return-void
.end method
