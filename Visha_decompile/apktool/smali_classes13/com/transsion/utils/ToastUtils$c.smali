.class public abstract Lcom/transsion/utils/ToastUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/utils/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 4

    const-string v0, "Xiaomi"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "layout"

    const-string v2, "android"

    const-string v3, "transient_notification"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->f(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    const p2, 0x102000b

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/utils/ToastUtils$a;
    .locals 2

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/utils/ToastUtils$b;

    invoke-static {p0, p1, p2}, Lcom/transsion/utils/ToastUtils$c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/utils/ToastUtils$b;-><init>(Landroid/widget/Toast;)V

    return-object v0

    :cond_0
    const-string v0, "ToastUtils"

    const-string v1, "Toast is GG. In fact, next step is useless."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/utils/ToastUtils$b;

    invoke-static {p0, p1, p2}, Lcom/transsion/utils/ToastUtils$c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/utils/ToastUtils$b;-><init>(Landroid/widget/Toast;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/transsion/utils/ToastUtils$a;
    .locals 2

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/utils/ToastUtils$b;

    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/transsion/utils/ToastUtils$b;-><init>(Landroid/widget/Toast;)V

    return-object v0

    :cond_0
    const-string v0, "ToastUtils"

    const-string v1, "Toast is GG. In fact, next step is useless."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/utils/ToastUtils$b;

    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/transsion/utils/ToastUtils$b;-><init>(Landroid/widget/Toast;)V

    return-object v0
.end method
