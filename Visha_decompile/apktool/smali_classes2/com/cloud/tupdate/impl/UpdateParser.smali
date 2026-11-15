.class public final Lcom/cloud/tupdate/impl/UpdateParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxw4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/cloud/tupdate/bean/UpdateEntity;
    .locals 6

    const-string p0, "0"

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v2

    const-string/jumbo v3, "update"

    const-string v4, "response  ->  "

    invoke-static {v4, p1}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "error_code"

    const/4 v3, 0x2

    invoke-static {p1, v2, v1, v3, v0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "code"

    invoke-static {p1, v2, v1, v3, v0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "data"

    invoke-static {p1, v2, v1, v3, v0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/cloud/tupdate/impl/UpdateParser$parseJson$responseResult$1;

    invoke-direct {v3}, Lcom/cloud/tupdate/impl/UpdateParser$parseJson$responseResult$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tupdate/bean/BaseResponse;

    sget-object v2, Lvk;->a:Lvk;

    if-nez p1, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tupdate/bean/UpdateEntity;

    move-object v0, p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    sget-object p1, Lvk;->a:Lvk;

    const-string v2, "fail"

    invoke-virtual {p1, v1, p0, v2}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v2, Lvk;->a:Lvk;

    const-string v3, "exception fail"

    invoke-virtual {v2, v1, p0, v3}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lia1;->a(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-object v0
.end method
