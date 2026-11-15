.class Lcom/just/agentweb/filechooser/FileChooser$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/AgentActionFragment$ChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/filechooser/FileChooser;->getChooserListener()Lcom/just/agentweb/AgentActionFragment$ChooserListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/filechooser/FileChooser;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/filechooser/FileChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$3;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoiceResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$3;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/just/agentweb/filechooser/FileChooser;->onIntentResult(IILandroid/content/Intent;)V

    return-void
.end method
