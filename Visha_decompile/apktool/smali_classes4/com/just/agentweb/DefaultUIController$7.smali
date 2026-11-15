.class Lcom/just/agentweb/DefaultUIController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$7;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController$7;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {p0}, Lcom/just/agentweb/DefaultUIController;->c(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsResult;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/just/agentweb/DefaultUIController;->e(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/JsResult;)V

    return-void
.end method
