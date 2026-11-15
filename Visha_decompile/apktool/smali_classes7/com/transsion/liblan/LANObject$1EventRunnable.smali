.class Lcom/transsion/liblan/LANObject$1EventRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/LANObject;->dispatchEventFromNative(IJJFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRunnable"
.end annotation


# instance fields
.field private final event:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/liblan/LANObject;


# direct methods
.method private constructor <init>(Lcom/transsion/liblan/LANObject;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/transsion/liblan/LANObject$1EventRunnable;->this$0:Lcom/transsion/liblan/LANObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/transsion/liblan/LANObject$1EventRunnable;->listener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    .line 4
    iput-object p3, p0, Lcom/transsion/liblan/LANObject$1EventRunnable;->event:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/liblan/LANObject;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;Lzh5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/LANObject$1EventRunnable;-><init>(Lcom/transsion/liblan/LANObject;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/LANObject$1EventRunnable;->listener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    iget-object v1, p0, Lcom/transsion/liblan/LANObject$1EventRunnable;->event:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;

    invoke-interface {v0, v1}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;->onEvent(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;)V

    iget-object p0, p0, Lcom/transsion/liblan/LANObject$1EventRunnable;->event:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;

    invoke-virtual {p0}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->release()V

    return-void
.end method
