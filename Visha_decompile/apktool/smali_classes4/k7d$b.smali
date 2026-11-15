.class public Lk7d$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lk7d;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lk7d$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object p0, p0, Lk7d$b;->a:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7d;

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv5d;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lv5d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk7d;->l(Ljava/lang/String;)Ld6d;

    move-result-object v9

    invoke-virtual {p1}, Lv5d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v9, v1, v2}, Ld6d;->e(ZZ)V

    const-string v7, "\u4e0b\u8f7d\u5b8c\u6210"

    const/16 v8, 0x64

    const/4 v6, 0x0

    move-object v3, v9

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Ld6d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p1, Lv5d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lv5d;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lk7d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v2

    invoke-static {}, Lk7d;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lv5d;->d:Ljava/lang/String;

    sget-object v5, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_COMPLETE:Lcom/mgmi/e/c;

    iget-object v7, p1, Lv5d;->e:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v9}, Ld6d;->g()V

    invoke-virtual {p0, v0}, Lk7d;->m(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lk7d;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-virtual {v9, v1, v2}, Ld6d;->e(ZZ)V

    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Lv5d;->h()I

    move-result v8

    const/4 v6, 0x0

    move-object v3, v9

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Ld6d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v9, v2, v1}, Ld6d;->e(ZZ)V

    const-string v7, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1}, Lv5d;->h()I

    move-result v8

    const/4 v6, 0x0

    move-object v3, v9

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Ld6d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv5d;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lv5d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lk7d;->l(Ljava/lang/String;)Ld6d;

    move-result-object v3

    invoke-virtual {p1}, Lv5d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2}, Ld6d;->e(ZZ)V

    const/4 v7, 0x0

    invoke-virtual {p1}, Lv5d;->h()I

    move-result v8

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Ld6d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_0
    return-void
.end method
