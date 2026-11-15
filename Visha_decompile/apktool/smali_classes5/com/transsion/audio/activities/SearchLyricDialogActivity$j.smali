.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->g0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "search_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "show_hide_loading_lyric_view"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
