.class public Lcom/transsion/dbdata/beans/questionnaire/PageCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;
    }
.end annotation


# instance fields
.field conditionS61:Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_s61"
    .end annotation
.end field

.field pageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page_name"
    .end annotation
.end field

.field subPageNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_page_names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field versionCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditionS61()Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->conditionS61:Lcom/transsion/dbdata/beans/questionnaire/PageCondition$ConditionS61;

    return-object p0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->pageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSubPageNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->subPageNames:Ljava/util/List;

    return-object p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->versionCode:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageCondition{pageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", subPageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->subPageNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/questionnaire/PageCondition;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
