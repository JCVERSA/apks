.class public abstract Lpx5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lpx5;->e(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lpx5;->f(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/dialog/d;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lpx5;->d(Lcom/transsion/widgetslib/dialog/d;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/widgetslib/dialog/d;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0}, Lpk0;->q()V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->x(Z)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/bt_download/R$string;->bt_sync_ing:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/b;->c(I)Lcom/transsion/widgetslib/dialog/b;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/b;->b()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/bt_download/R$string;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmx5;

    invoke-direct {v3, v1}, Lmx5;-><init>(Lcom/transsion/widgetslib/dialog/d;)V

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/widgetslib/dialog/d;->k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d;->show()V

    new-instance v2, Lnx5;

    invoke-direct {v2}, Lnx5;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v2

    new-instance v3, Lpx5$a;

    invoke-direct {v3, p2, p1, p0, v1}, Lpx5$a;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v2, p0, p1, v3}, Lpk0;->c(Landroid/content/Context;Landroid/net/Uri;Lgu1;)V

    const-string p0, "video_url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vd_dl_brower_rp_bt_alstart"

    const-string v2, "main_url"

    invoke-static {v1, v2, p2, p0, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_magnet_init"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Llx5;

    invoke-direct {v0, p0, p2, p3}, Llx5;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
