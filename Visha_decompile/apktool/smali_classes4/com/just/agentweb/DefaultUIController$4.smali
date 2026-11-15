.class Lcom/just/agentweb/DefaultUIController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onForceDownloadAlertInternal(Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;

.field final synthetic val$callback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$4;->this$0:Lcom/just/agentweb/DefaultUIController;

    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController$4;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController$4;->val$callback:Landroid/os/Handler$Callback;

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
