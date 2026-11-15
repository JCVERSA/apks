.class public final Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->showCameraPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniDialogManager;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniDialogManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/miniapp/utils/MiniDialogManager;->addDialog(Ljava/lang/String;Landroidx/appcompat/app/w;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
