.class public Lcom/transsion/onlinevideo/history/HistoryManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/HistoryManager;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lgu8;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager$c;->b(Lgu8;)V

    return-void
.end method

.method public static synthetic b(Lgu8;)V
    .locals 2

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistory count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HistoryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    invoke-interface {v0}, Lsg7;->deleteSyncUserHistory()I

    invoke-interface {v0, p0}, Lsg7;->insertHistories(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    new-instance p0, Ldr4;

    invoke-direct {p0, p2}, Ldr4;-><init>(Lgu8;)V

    invoke-static {p0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
