.class public Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;
.super Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MangoResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;,
        Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;
    }
.end annotation


# instance fields
.field public code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field public data:Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field public msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getSimpleMediaBean()Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;
    .locals 5

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;-><init>()V

    iget v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;->code:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->ERROR:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->resultState:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;->msg:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->errMsg:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;->data:Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;->items:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->SUCESS:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->resultState:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;->data:Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;->items:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->data:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;->data:Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Data;->items:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->convert(Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;)Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    move-result-object v3

    iget-boolean v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->flag:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->addFirst(Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->addLast(Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->EMPTY:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->resultState:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    const-string p0, ""

    iput-object p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->errMsg:Ljava/lang/String;

    return-object v0
.end method
