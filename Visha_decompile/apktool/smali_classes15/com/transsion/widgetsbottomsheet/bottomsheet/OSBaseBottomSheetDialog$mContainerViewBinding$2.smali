.class final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mContainerViewBinding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;-><init>()V
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
        "Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;",
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
.field final synthetic this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mContainerViewBinding$2;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mContainerViewBinding$2;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    const-string v0, "inflate(\n               \u2026          false\n        )"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$mContainerViewBinding$2;->invoke()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    return-object p0
.end method
