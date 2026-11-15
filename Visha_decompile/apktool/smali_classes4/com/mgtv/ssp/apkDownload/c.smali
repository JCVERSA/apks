.class Lcom/mgtv/ssp/apkDownload/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/ssp/apkDownload/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/apkDownload/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/apkDownload/d;

    if-eqz p0, :cond_d

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v1, 0x3

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    if-eq v0, v1, :cond_4

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/mgtv/ssp/apkDownload/a/a;

    if-eqz p0, :cond_d

    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/mgtv/ssp/apkDownload/a/a;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p0

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/apkDownload/b;->a(Ljava/lang/String;)Lcom/mgtv/ssp/apkDownload/e;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object v0

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    iget p0, p0, Lcom/mgtv/ssp/apkDownload/a/a;->e:I

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/ssp/apkDownload/b;->a(Ljava/lang/String;I)Lcom/mgtv/ssp/apkDownload/e;

    move-result-object p0

    goto :goto_0

    :goto_1
    iget-object p0, p1, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, v5

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p0, v0

    mul-float/2addr p0, v4

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p0, v0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    move v12, p0

    goto :goto_2

    :cond_2
    move v12, v2

    :goto_2
    if-eqz v7, :cond_d

    invoke-virtual {v7, v2, v2}, Lcom/mgtv/ssp/apkDownload/e;->a(ZZ)V

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_3

    iget-object v8, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u5df2\u6682\u505c\u4e0b\u8f7d\uff0c\u70b9\u51fb\u7ee7\u7eed"

    invoke-virtual/range {v7 .. v12}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_3
    iget-object v8, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->apk_download_click_resume:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mgtv/ssp/apkDownload/a/a;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/apkDownload/d;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p0

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/apkDownload/b;->a(Ljava/lang/String;)Lcom/mgtv/ssp/apkDownload/e;

    move-result-object v7

    iget-object p0, p1, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, v5

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p0, v0

    mul-float/2addr p0, v4

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p0, v0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    move v12, p0

    goto :goto_3

    :cond_5
    move v12, v2

    :goto_3
    if-eqz v7, :cond_d

    invoke-virtual {v7, v2, v2}, Lcom/mgtv/ssp/apkDownload/e;->a(ZZ)V

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_6

    iget-object v8, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u4e0b\u8f7d\u5931\u8d25,\u8bf7\u91cd\u8bd5!"

    invoke-virtual/range {v7 .. v12}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_6
    iget-object v8, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->str_retry_download:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mgtv/ssp/apkDownload/a/a;

    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mgtv/ssp/download/dao3/c;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {v0}, Lcom/mgtv/ssp/download/dao3/c;->b()Ljava/lang/String;

    move-result-object v4

    iget v0, p1, Lcom/mgtv/ssp/apkDownload/a/a;->c:I

    invoke-virtual {p0, v4, v0}, Lcom/mgtv/ssp/apkDownload/d;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mgtv/ssp/apkDownload/b;->a(Ljava/lang/String;)Lcom/mgtv/ssp/apkDownload/e;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2, v1}, Lcom/mgtv/ssp/apkDownload/e;->a(ZZ)V

    const/4 v7, 0x0

    iget v8, p1, Lcom/mgtv/ssp/apkDownload/a/a;->c:I

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    invoke-virtual {p0}, Lcom/mgtv/ssp/apkDownload/d;->c()Z

    move-result p1

    if-nez p1, :cond_9

    sget p1, Lcom/mgtv/ssp/R$string;->start_download:I

    invoke-static {p1}, Lcom/hunantv/imgo/util/v;->b(I)V

    :cond_9
    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/apkDownload/d;->a(Z)V

    goto :goto_4

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mgtv/ssp/apkDownload/a/a;

    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    if-eqz v0, :cond_d

    iget-object v5, v0, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mgtv/ssp/apkDownload/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mgtv/ssp/apkDownload/b;->a(Ljava/lang/String;)Lcom/mgtv/ssp/apkDownload/e;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2, v1}, Lcom/mgtv/ssp/apkDownload/e;->a(ZZ)V

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$string;->apk_download_finish:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/mgtv/ssp/apkDownload/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/apkDownload/d;->a(Z)V

    iget-object p0, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object p0, p0, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    iget-object p0, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object p0, p0, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/ssp/apkDownload/a;->a(Ljava/lang/String;)V

    :cond_c
    sget p0, Lcom/mgtv/ssp/R$string;->apk_download_finish:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/v;->a(I)V

    :cond_d
    :goto_4
    return-void
.end method
