.class Lcom/transsion/tranplayer/VLCObject$1EventRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/VLCObject;->dispatchEventFromNative(IJJJJFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRunnable"
.end annotation


# instance fields
.field private final event:Lcom/transsion/tranplayer/VLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Lcom/transsion/tranplayer/VLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/tranplayer/VLCEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/tranplayer/VLCObject;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/VLCObject;Lcom/transsion/tranplayer/VLCEvent$Listener;Lcom/transsion/tranplayer/VLCEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/tranplayer/VLCEvent$Listener<",
            "TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;->this$0:Lcom/transsion/tranplayer/VLCObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;->listener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    iput-object p3, p0, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;->event:Lcom/transsion/tranplayer/VLCEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;->listener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    iget-object v1, p0, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;->event:Lcom/transsion/tranplayer/VLCEvent;

    invoke-interface {v0, v1}, Lcom/transsion/tranplayer/VLCEvent$Listener;->onEvent(Lcom/transsion/tranplayer/VLCEvent;)V

    iget-object p0, p0, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;->event:Lcom/transsion/tranplayer/VLCEvent;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/VLCEvent;->release()V

    return-void
.end method
