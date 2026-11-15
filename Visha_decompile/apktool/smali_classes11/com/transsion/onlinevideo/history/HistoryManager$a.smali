.class public Lcom/transsion/onlinevideo/history/HistoryManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/HistoryManager;->o([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$a;->b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    iput-object p2, p0, Lcom/transsion/onlinevideo/history/HistoryManager$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/history/HistoryManager$a;->c([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;Lgu8;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/history/HistoryManager$a;->d([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;Lgu8;)V

    return-void
.end method

.method public static synthetic c([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoIsTact()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v0, v4, v5}, Lsg7;->getHistoryUserBeanByVideoIdIntact(J)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Lsg7;->deleteHistories(Ljava/util/List;)I

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    :goto_1
    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    const/4 v4, 0x1

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    invoke-interface {v0, v3}, Lsg7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic d([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;Lgu8;)V
    .locals 7

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoIsTact()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v0, v5, v6}, Lsg7;->getHistoryUserBeanByVideoIdIntact(J)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Lsg7;->deleteHistories(Ljava/util/List;)I

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    :goto_1
    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v5}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    iput v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    invoke-interface {v0, v4}, Lsg7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "uploadUserHistory: onFailure"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "HistoryManager"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$a;->b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/HistoryManager$a;->c:Ljava/lang/String;

    new-instance p2, Lbr4;

    invoke-direct {p2, p1, p0}, Lbr4;-><init>([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V

    invoke-static {p2}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$a;->b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/HistoryManager$a;->c:Ljava/lang/String;

    new-instance v0, Lar4;

    invoke-direct {v0, p1, p0, p2}, Lar4;-><init>([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;Lgu8;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
