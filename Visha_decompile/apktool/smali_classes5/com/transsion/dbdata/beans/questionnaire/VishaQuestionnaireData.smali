.class public Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/questionnaire/PageCondition;",
            ">;"
        }
    .end annotation
.end field

.field private resultData:Lcom/questionnaire/sdk/QuestionnaireClient$d;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getVersionCodes(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    const-string v4, "isConditionValid: "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_2
    return-object p0
.end method


# virtual methods
.method public getConditions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/questionnaire/PageCondition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->conditions:Ljava/util/List;

    return-object p0
.end method

.method public getResultData()Lcom/questionnaire/sdk/QuestionnaireClient$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->resultData:Lcom/questionnaire/sdk/QuestionnaireClient$d;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public isConditionValid(Ljava/lang/String;)Z
    .locals 10

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->conditions:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getConditionS61()Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;

    move-result-object v3

    const-string v4, "isConditionValid condition = "

    const-string v5, "isConditionValid subpage condition = "

    const-string v6, " versionCode not match current versionCode="

    const/4 v7, 0x1

    const-string v8, "isConditionValid: "

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getConditionS61()Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getVersionCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    invoke-static {}, Lge;->b()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lge;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->isCloseGP()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lge;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " closeGP and current version is isGP"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->isClosePreInstall()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lpp3;->b:Z

    if-eqz v3, :cond_6

    sget-object p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " close PreInstall and current version is PreInstall"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->setTag(Ljava/lang/String;)V

    return v7

    :cond_8
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->setTag(Ljava/lang/String;)V

    return v7

    :cond_9
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getVersionCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    invoke-static {}, Lge;->b()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lge;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_a
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_b

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->setTag(Ljava/lang/String;)V

    return v7

    :cond_c
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getSubPageNames()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->setTag(Ljava/lang/String;)V

    return v7

    :cond_d
    :goto_1
    return v1
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/questionnaire/PageCondition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->conditions:Ljava/util/List;

    return-void
.end method

.method public setResultData(Lcom/questionnaire/sdk/QuestionnaireClient$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->resultData:Lcom/questionnaire/sdk/QuestionnaireClient$d;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->tag:Ljava/lang/String;

    return-void
.end method
