.class final Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;->this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;
    .locals 1

    .line 2
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;->this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;->invoke()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object p0

    return-object p0
.end method
