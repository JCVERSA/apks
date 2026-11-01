.class Lapp/fast/ssh/dialog/RenewAccessDialog$1;
.super Ljava/lang/Object;
.source "RenewAccessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/RenewAccessDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/RenewAccessDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$1;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    :try_start_0
    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$1;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-virtual {p1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
