.class public final Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;
.super Landroid/widget/Toast;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;

.field private static final TAG:Ljava/lang/String; = "SystemToast"


# instance fields
.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public findIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;->findIconView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public findMessageView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;->findMessageView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "SystemToast"

    .line 11
    .line 12
    const-string v1, "super.setText failed!"

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->findMessageView(Landroid/view/View;)Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method
