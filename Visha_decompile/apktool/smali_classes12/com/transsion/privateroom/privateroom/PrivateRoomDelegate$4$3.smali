.class Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->doInBackground()Lcom/transsion/privateroom/api/beans/PrivateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$3;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4$3;->this$1:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;->val$callback:Ltv4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltv4;->h()V

    :cond_0
    return-void
.end method
