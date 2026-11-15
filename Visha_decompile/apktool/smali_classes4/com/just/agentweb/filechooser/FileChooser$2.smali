.class Lcom/just/agentweb/filechooser/FileChooser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/AgentActionFragment$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/filechooser/FileChooser;
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

    iput-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$2;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/just/agentweb/filechooser/FileChooser$2;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {p2}, Lcom/just/agentweb/filechooser/FileChooser;->a(Lcom/just/agentweb/filechooser/FileChooser;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/just/agentweb/AgentWebUtils;->hasPermission(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$2;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    const-string p2, "KEY_FROM_INTENTION"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/just/agentweb/filechooser/FileChooser;->h(Lcom/just/agentweb/filechooser/FileChooser;ZI)V

    return-void
.end method
