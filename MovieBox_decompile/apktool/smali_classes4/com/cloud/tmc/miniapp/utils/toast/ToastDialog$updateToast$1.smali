.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "window.attributes"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->access$getMGlobalShow$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v3, 0x1a

    .line 31
    .line 32
    if-lt v0, v3, :cond_0

    .line 33
    .line 34
    const/16 v0, 0x7f6

    .line 35
    .line 36
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v0, 0x7d3

    .line 40
    .line 41
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getVerticalMargin()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getHorizontalMargin()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 54
    .line 55
    const/16 v0, 0x80

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getMask()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x1

    .line 71
    if-ne v0, v1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/16 v0, 0x8

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 77
    .line 78
    .line 79
    const/16 v0, 0x10

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method
