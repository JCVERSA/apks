.class Lcom/just/agentweb/UrlLoaderImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/UrlLoaderImpl;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/UrlLoaderImpl;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/UrlLoaderImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->this$0:Lcom/just/agentweb/UrlLoaderImpl;

    iput-object p2, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->val$encoding:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->this$0:Lcom/just/agentweb/UrlLoaderImpl;

    iget-object v1, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->val$data:Ljava/lang/String;

    iget-object v2, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->val$mimeType:Ljava/lang/String;

    iget-object p0, p0, Lcom/just/agentweb/UrlLoaderImpl$5;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/just/agentweb/UrlLoaderImpl;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
