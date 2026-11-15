.class public Lcom/transsion/onlinevideo/history/HistoryManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/HistoryManager;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager$d;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->setIsUploaded()V

    invoke-interface {v0, v1}, Lsg7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "syncLocalHistory onFailure "

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "HistoryManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    const-string p1, "syncLocalHistory:onResponse"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "HistoryManager"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/HistoryManager$d;->b:Ljava/util/List;

    new-instance p1, Ler4;

    invoke-direct {p1, p0}, Ler4;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
