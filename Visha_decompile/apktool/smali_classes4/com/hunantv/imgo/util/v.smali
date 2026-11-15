.class public Lcom/hunantv/imgo/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/util/v$a;
    }
.end annotation


# static fields
.field private static a:Landroid/widget/Toast;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static a()Landroid/os/Looper;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0}, Lcom/hunantv/imgo/util/v;->a(IIZ)V

    return-void
.end method

.method public static a(IIZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 6
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->c(Ljava/lang/String;I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->b(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private static a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/hunantv/imgo/util/v$1;

    invoke-direct {v0, p0, p1, p0, p1}, Lcom/hunantv/imgo/util/v$1;-><init>(JJ)V

    .line 9
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/v;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/hunantv/imgo/util/v;->a(IIZ)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/v;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/hunantv/imgo/util/v;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/v;->a()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/mgtv/ssp/R$layout;->toast_black:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7
    sget v2, Lcom/mgtv/ssp/R$id;->tvToast:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    const/4 v0, 0x0

    const/16 v3, 0x12c

    const/16 v4, 0x50

    .line 10
    invoke-virtual {v2, v4, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 11
    sget-object v0, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 12
    sget-object v0, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 13
    sget-object v0, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 14
    sput-object p0, Lcom/hunantv/imgo/util/v;->b:Ljava/lang/String;

    if-nez p1, :cond_2

    const-wide/16 p0, 0x7d0

    .line 15
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(J)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    const-wide/16 p0, 0xdac

    .line 16
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(J)V

    goto :goto_0

    :cond_3
    int-to-long p0, p1

    .line 17
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/hunantv/imgo/util/v;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Ljava/lang/String;I)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/hunantv/imgo/util/v;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/hunantv/imgo/util/v;->a()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/mgtv/ssp/R$layout;->toast_center_black:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6
    sget v2, Lcom/mgtv/ssp/R$id;->tvToast:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    const/16 v0, 0x11

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v0, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 10
    sget-object v0, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 11
    sget-object v0, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 12
    sget-object v0, Lcom/hunantv/imgo/util/v;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 13
    sput-object p0, Lcom/hunantv/imgo/util/v;->b:Ljava/lang/String;

    if-nez p1, :cond_2

    const-wide/16 p0, 0x7d0

    .line 14
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(J)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    const-wide/16 p0, 0xdac

    .line 15
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(J)V

    goto :goto_0

    :cond_3
    int-to-long p0, p1

    .line 16
    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(J)V

    :cond_4
    :goto_0
    return-void
.end method
