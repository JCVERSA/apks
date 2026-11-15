.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroid/view/Window;",
        "Lzfb;",
        "invoke",
        "(Landroid/view/Window;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $it:Z

.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->$it:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->invoke(Landroid/view/Window;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .locals 4

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->o(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->k(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneHungOnStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mParentStopped = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->o(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->o(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lolb;->U0(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->k(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->$it:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->c(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    :cond_1
    :goto_0
    return-void
.end method
