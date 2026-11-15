.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$4;
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


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$4;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$4;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

    iget-object v0, v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$callback:Ltv4;

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-interface {v0, v1, v2}, Ltv4;->a(D)V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2$4;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;->val$callback:Ltv4;

    invoke-interface {p0}, Ltv4;->j()V

    :cond_0
    return-void
.end method
