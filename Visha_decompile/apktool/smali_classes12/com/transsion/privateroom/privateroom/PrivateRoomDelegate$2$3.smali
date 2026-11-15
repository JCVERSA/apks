.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

.field final synthetic val$file:Lcom/transsion/privateroom/api/beans/PrivateFile;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;->val$file:Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

    iget-object v0, v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$callback:Ltv4;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$3;->val$file:Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-interface {v0, p0}, Ltv4;->f(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    :cond_0
    return-void
.end method
