.class Lcom/transsion/widgetslib/preference/OSDialogPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/preference/OSDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/preference/OSDialogPreference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/preference/OSDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSDialogPreference;

    invoke-static {v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->a(Lcom/transsion/widgetslib/preference/OSDialogPreference;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSDialogPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->a(Lcom/transsion/widgetslib/preference/OSDialogPreference;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
