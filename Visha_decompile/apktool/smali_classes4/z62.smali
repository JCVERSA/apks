.class public final synthetic Lz62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/just/agentweb/DefaultWebClient;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/just/agentweb/DefaultWebClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz62;->b:Lcom/just/agentweb/DefaultWebClient;

    iput-object p2, p0, Lz62;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lz62;->b:Lcom/just/agentweb/DefaultWebClient;

    iget-object p0, p0, Lz62;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/just/agentweb/DefaultWebClient;->a(Lcom/just/agentweb/DefaultWebClient;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
