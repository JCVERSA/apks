.class public abstract Lmq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0}, Lmq;->b(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->visha_try_to_click:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x800035

    invoke-static {p0, v0, v1}, Lea7;->p(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_show_audio_smart_edit_btn_tip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_show_audio_smart_edit_btn_tip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p0, Llq;

    invoke-direct {p0, v0}, Llq;-><init>(Ljava/lang/ref/WeakReference;)V

    const-wide/16 v0, 0x12c

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
