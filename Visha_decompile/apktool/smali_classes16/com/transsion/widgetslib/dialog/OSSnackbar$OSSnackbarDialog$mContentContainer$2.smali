.class final Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mContentContainer$2;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mContentContainer$2;->this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mContentContainer$2;->this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    sget v0, Lcom/transsion/widgetslib/R$id;->content_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mContentContainer$2;->invoke()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
