.class Lcom/just/agentweb/DefaultUIController$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onShowSslCertificateErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$14;->this$0:Lcom/just/agentweb/DefaultUIController;

    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController$14;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController$14;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
