.class final Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/filechooser/FileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AboveLCallback"
.end annotation


# instance fields
.field private final controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/AbsAgentWebUIController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUris:[Landroid/net/Uri;

.field private final mValueCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/webkit/ValueCallback;[Landroid/net/Uri;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;[",
            "Landroid/net/Uri;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/AbsAgentWebUIController;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->mValueCallback:Landroid/webkit/ValueCallback;

    .line 4
    iput-object p2, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->mUris:[Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->controller:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/webkit/ValueCallback;[Landroid/net/Uri;Ljava/lang/ref/WeakReference;Lhq3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;-><init>(Landroid/webkit/ValueCallback;[Landroid/net/Uri;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->safeHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private safeHandleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->mValueCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->mUris:[Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/just/agentweb/filechooser/FileChooser;->j([Landroid/net/Uri;Landroid/webkit/ValueCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->controller:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/AbsAgentWebUIController;

    invoke-virtual {p0}, Lcom/just/agentweb/AbsAgentWebUIController;->onCancelLoading()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    new-instance v0, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback$1;-><init>(Lcom/just/agentweb/filechooser/FileChooser$AboveLCallback;Landroid/os/Message;)V

    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->runInUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method
