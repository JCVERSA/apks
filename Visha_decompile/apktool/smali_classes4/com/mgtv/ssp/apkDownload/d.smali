.class public Lcom/mgtv/ssp/apkDownload/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/apkDownload/d$b;,
        Lcom/mgtv/ssp/apkDownload/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/imgo/b/b;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/ssp/apkDownload/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mgtv/ssp/apkDownload/c;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/ssp/apkDownload/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/mgtv/ssp/download/d$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/mgtv/ssp/apkDownload/d$2;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/apkDownload/d$2;-><init>(Lcom/mgtv/ssp/apkDownload/d;)V

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->h:Lcom/mgtv/ssp/download/d$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgtv/ssp/apkDownload/d$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/apkDownload/d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/apkDownload/d;)Lcom/hunantv/imgo/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->a:Lcom/hunantv/imgo/b/b;

    return-object p0
.end method

.method public static a()Lcom/mgtv/ssp/apkDownload/d;
    .locals 1

    .line 4
    sget-object v0, Lcom/mgtv/ssp/apkDownload/d$a;->a:Lcom/mgtv/ssp/apkDownload/d;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->c:Lcom/mgtv/ssp/apkDownload/c;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 59
    iput p1, v0, Landroid/os/Message;->what:I

    .line 60
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->c:Lcom/mgtv/ssp/apkDownload/c;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->a:Lcom/hunantv/imgo/b/b;

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/app/Dialog;)V

    .line 49
    new-instance v0, Lcom/hunantv/imgo/b/b;

    invoke-direct {v0, p1}, Lcom/hunantv/imgo/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->a:Lcom/hunantv/imgo/b/b;

    .line 50
    sget p1, Lcom/mgtv/ssp/R$string;->apk_download_no_permission_title:I

    invoke-virtual {v0, p1}, Lcom/hunantv/imgo/b/b;->a(I)Lcom/hunantv/imgo/b/b;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$string;->download_no_permission_cancel:I

    .line 51
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/b/b;->b(I)Lcom/hunantv/imgo/b/b;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$string;->download_no_permission_sure:I

    .line 52
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/b/b;->c(I)Lcom/hunantv/imgo/b/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/b/b;->b(Z)Lcom/hunantv/imgo/b/b;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/b/b;->a(Z)Lcom/hunantv/imgo/b/b;

    move-result-object p1

    new-instance v0, Lcom/mgtv/ssp/apkDownload/d$1;

    iget-object v1, p0, Lcom/mgtv/ssp/apkDownload/d;->a:Lcom/hunantv/imgo/b/b;

    invoke-direct {v0, p0, v1}, Lcom/mgtv/ssp/apkDownload/d$1;-><init>(Lcom/mgtv/ssp/apkDownload/d;Lcom/hunantv/imgo/b/b;)V

    .line 55
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/b/b;->a(Lcom/hunantv/imgo/b/b$a;)Lcom/hunantv/imgo/b/b;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/hunantv/imgo/b/b;->b()Z

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/apkDownload/d;ILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/apkDownload/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/apkDownload/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/apkDownload/d;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/apkDownload/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/apkDownload/d;->f:Z

    return p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/apkDownload/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/download/d;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/d;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p2}, Lcom/mgtv/ssp/download/d;->c(Ljava/lang/String;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    .line 22
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v3, v1, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v1, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_8

    .line 23
    iget-object p2, v1, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_5

    iget-object p2, v1, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    goto :goto_2

    .line 24
    :cond_0
    iget-object p2, v1, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 25
    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;)Z

    .line 26
    new-instance p1, Lcom/mgtv/ssp/apkDownload/a/a;

    invoke-direct {p1}, Lcom/mgtv/ssp/apkDownload/a/a;-><init>()V

    const/4 p2, -0x1

    if-eq p4, p2, :cond_1

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p1, Lcom/mgtv/ssp/apkDownload/a/a;->d:Z

    .line 28
    iput p4, p1, Lcom/mgtv/ssp/apkDownload/a/a;->e:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    .line 29
    :cond_1
    :goto_0
    iput-object v1, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    .line 30
    invoke-direct {p0, p3, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(ILjava/lang/Object;)V

    goto :goto_6

    .line 31
    :cond_2
    iget-object p2, v1, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_b

    .line 32
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/hunantv/imgo/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 33
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 34
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 35
    :cond_3
    sget p0, Lcom/mgtv/ssp/R$string;->apk_download_no_permission_title:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->b(I)V

    :goto_1
    return-void

    .line 36
    :cond_4
    iget-object p1, v1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object p2, v1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->h:Lcom/mgtv/ssp/download/d$b;

    invoke-virtual {v0, p1, p2, p0}, Lcom/mgtv/ssp/download/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/download/d$b;)Ljava/lang/String;

    goto :goto_6

    .line 37
    :cond_5
    :goto_2
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/hunantv/imgo/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 38
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_6

    .line 39
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;)V

    goto :goto_3

    .line 40
    :cond_6
    sget p0, Lcom/mgtv/ssp/R$string;->apk_download_no_permission_title:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->b(I)V

    :goto_3
    return-void

    .line 41
    :cond_7
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->h:Lcom/mgtv/ssp/download/d$b;

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;Lcom/mgtv/ssp/download/d$b;)Ljava/lang/String;

    goto :goto_6

    .line 42
    :cond_8
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v2}, Lcom/hunantv/imgo/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_a

    .line 43
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_9

    .line 44
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 45
    :cond_9
    sget p0, Lcom/mgtv/ssp/R$string;->apk_download_no_permission_title:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->b(I)V

    :goto_4
    return-void

    .line 46
    :cond_a
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->h:Lcom/mgtv/ssp/download/d$b;

    invoke-virtual {v0, p2, p3, p0}, Lcom/mgtv/ssp/download/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/download/d$b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 47
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_6
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/apkDownload/d$b;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->g:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/mgtv/ssp/apkDownload/b;->c(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/mgtv/ssp/download/d;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/d;

    move-result-object p4

    .line 9
    invoke-virtual {p4, p3}, Lcom/mgtv/ssp/download/d;->b(Ljava/lang/String;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 10
    iget-object p0, p4, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p0, p4, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 13
    iget-object p0, p4, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/ssp/apkDownload/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 14
    :cond_3
    :goto_0
    sget p0, Lcom/mgtv/ssp/R$string;->start_download:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->b(I)V

    return-void

    :cond_4
    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Lcom/mgtv/ssp/apkDownload/d;->f:Z

    .line 16
    const-string p4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p4}, Lcom/hunantv/imgo/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 17
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;)V

    return-void

    .line 18
    :cond_5
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ssp/download/d;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->h:Lcom/mgtv/ssp/download/d$b;

    invoke-virtual {p1, p2, p3, p0}, Lcom/mgtv/ssp/download/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/download/d$b;)Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/hunantv/imgo/util/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/apkDownload/b/a;

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0, p1}, Lcom/mgtv/ssp/apkDownload/b/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/hunantv/imgo/util/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/apkDownload/b/a;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/apkDownload/b/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/mgtv/ssp/apkDownload/d;->d:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->e:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/mgtv/ssp/apkDownload/c;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/apkDownload/c;-><init>(Lcom/mgtv/ssp/apkDownload/d;)V

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->c:Lcom/mgtv/ssp/apkDownload/c;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/d;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/hunantv/imgo/util/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/apkDownload/b/a;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lcom/mgtv/ssp/apkDownload/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/download/d;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/download/d;->b(Ljava/lang/String;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/mgtv/ssp/apkDownload/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d;->e:Landroid/content/Context;

    sget p1, Lcom/mgtv/ssp/R$string;->file_not_exists:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mgtv/ssp/apkDownload/d;->d:Z

    return p0
.end method
