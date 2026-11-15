.class public Ldk7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldk7;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Ldk7;


# direct methods
.method public constructor <init>(Ldk7;Landroid/content/Context;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ldk7$a;->l:Ldk7;

    iput-object p4, p0, Ldk7$a;->k:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "com.palm.id.log"

    :try_start_0
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldk7$a;->l:Ldk7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldk7$a;->l:Ldk7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lfm7;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const v0, 0x9ca8

    invoke-interface {p0, v0, p2}, Lfm7;->c0(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    const-string p1, "palmid refreshToken error"

    const-string v0, "com.palm.id.log"

    const v1, 0x9ca8

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshToken code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    sget-object v2, Lao7$a;->a:Lao7;

    iget-object v3, p0, Ldk7$a;->k:Landroid/content/Context;

    iget-object v4, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->accessToken:Ljava/lang/String;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p2}, Lao7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Ldk7$a;->k:Landroid/content/Context;

    invoke-static {p2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ltl7;->d(J)V

    invoke-virtual {p2}, Lkk7;->b()V

    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p2, Lfm7;

    invoke-interface {p2}, Lfm7;->I()V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " refreshToken -----> ERROR_PARAM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " refreshToken -----> data.code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v2, 0x61a86

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Ldk7$a;->k:Landroid/content/Context;

    invoke-static {p2}, Lvo7;->a(Landroid/content/Context;)V

    iget-object p2, p0, Ldk7$a;->k:Landroid/content/Context;

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p2, Lfm7;

    invoke-interface {p2}, Lfm7;->P()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p2, Lfm7;

    invoke-interface {p2, v1, p1}, Lfm7;->c0(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Ldk7$a;->l:Ldk7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Ldk7$a;->l:Ldk7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lfm7;

    invoke-interface {p0, v1, p1}, Lfm7;->c0(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
