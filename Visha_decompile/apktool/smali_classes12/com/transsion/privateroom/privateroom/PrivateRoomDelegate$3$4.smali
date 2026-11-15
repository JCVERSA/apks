.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$4;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3$4;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;->val$callback:Ltv4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltv4;->c()V

    :cond_0
    return-void
.end method
