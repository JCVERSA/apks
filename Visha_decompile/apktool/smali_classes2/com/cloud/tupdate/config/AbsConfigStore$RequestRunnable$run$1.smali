.class public final Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;
.super Lcom/transsion/http/impl/StringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;


# direct methods
.method public constructor <init>(Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;->e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/http/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p3

    const-string v0, "-------- message = "

    invoke-static {v0, p2}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-virtual {p3, v1, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;->e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    invoke-static {p3}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->access$getStore$p(Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;)Lcom/cloud/tupdate/config/AbsConfigStore;

    move-result-object p3

    invoke-static {p3}, Lcom/cloud/tupdate/config/AbsConfigStore;->b(Lcom/cloud/tupdate/config/AbsConfigStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;->e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    invoke-virtual {p0}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->getConfigResultListener()Lre1;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lre1;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public E(ILjava/lang/String;)V
    .locals 3

    const-string p1, "response"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p1

    const-string v0, "-------- response = "

    invoke-static {v0, p2}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-virtual {p1, v1, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_code"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "code"

    invoke-static {p2, p1, v0, v1, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "data"

    invoke-static {p2, p1, v0, v1, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1$onSuccess$responseResult$1;

    invoke-direct {v0}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1$onSuccess$responseResult$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tupdate/bean/BaseResponse;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getCode()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;->e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    invoke-virtual {p0}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->getConfigResultListener()Lre1;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tupdate/bean/SdkConfigInfo;

    invoke-interface {p0, p1}, Lre1;->b(Lcom/cloud/tupdate/bean/SdkConfigInfo;)V

    goto :goto_3

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    move-object p2, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string v2, "code isn\'t 0"

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;->e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    invoke-virtual {p0}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->getConfigResultListener()Lre1;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const/16 p1, 0x3e9

    invoke-interface {p0, p1, v2}, Lre1;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;->e:Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    invoke-virtual {p0}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->getConfigResultListener()Lre1;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    const/16 p1, 0x3ea

    const-string p2, "gateway failure"

    invoke-interface {p0, p1, p2}, Lre1;->a(ILjava/lang/String;)V

    :goto_3
    return-void
.end method
