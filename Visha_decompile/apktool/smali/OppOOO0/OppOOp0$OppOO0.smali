.class public LOppOOO0/OppOOp0$OppOO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOppOOO0/OppOOp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OppOO0"
.end annotation


# instance fields
.field public final synthetic b:LOppOOO0/OppOOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UploadPortraitPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    new-instance p2, LOppOOO0/OppOOp0$OppOO0$OppO00p;

    invoke-direct {p2, p0}, LOppOOO0/OppOOp0$OppOO0$OppO00p;-><init>(LOppOOO0/OppOOp0$OppOO0;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    iget-object p1, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    iget-object p2, p2, LOppOOO0/OppOOp0;->e:Ljava/lang/String;

    const-string v0, "avatarUrl"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    const-string p2, "avatar"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LOppOOO0/OppOOp0;->e(Ljava/util/HashMap;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    new-instance p2, LOppOOO0/OppOOp0$OppOO0$OppO0O0;

    invoke-direct {p2, p0}, LOppOOO0/OppOOp0$OppOO0$OppO0O0;-><init>(LOppOOO0/OppOOp0$OppOO0;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
