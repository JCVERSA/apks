.class public Lydb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lydb;->i(Landroid/content/Context;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lydb;


# direct methods
.method public constructor <init>(Lydb;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lydb$a;->b:Lydb;

    iput-object p2, p0, Lydb$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCollectionRule onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtError;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UBTTask"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "mmkv_key_init_ubt"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lydb$a;->b:Lydb;

    iget-object v1, p0, Lydb$a;->a:Landroid/content/Context;

    const-wide/32 p0, 0xa00000

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 p0, 0x36ee80

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v2, "x1yBlXoCD4qvv9fR"

    const-string v3, "x1yBlXoCD4qvv9fR"

    const-string v4, "vishaLogFile"

    invoke-static/range {v0 .. v6}, Lydb;->h(Lydb;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {v1}, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen()Z

    move-result v1

    const-string v2, "mmkv_key_init_ubt"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {v0}, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {v0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getAppSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {v0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {v0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getIv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lydb$a;->b:Lydb;

    iget-object v2, p0, Lydb$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {p0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {p0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getIv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {p0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getAppSign()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {p0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getMaxFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/log/upload/data/RuleRequestModel;

    invoke-virtual {p0}, Lcom/transsion/log/upload/data/RuleRequestModel;->getCollectionLength()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lydb;->h(Lydb;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_2
    :goto_0
    return-void
.end method
