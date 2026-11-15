.class public Lcom/transsion/aicore/nexusflow/bean/NotificationMode;
.super Lcom/transsion/aicore/nexusflow/bean/LLMBean;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mContent:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private mGroupKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupKey"
    .end annotation
.end field

.field private mNotiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiKey"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packageName"
    .end annotation
.end field

.field private mSummary:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "summary"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/bean/LLMBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getmContent()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mContent:[Ljava/lang/String;

    return-object p0
.end method

.method public getmGroupKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public getmNotiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mNotiKey:Ljava/lang/String;

    return-object p0
.end method

.method public getmPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getmSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setmContent([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mContent:[Ljava/lang/String;

    return-void
.end method

.method public setmGroupKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method public setmNotiKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mNotiKey:Ljava/lang/String;

    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setmSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationMode{notiKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mNotiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', groupKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mContent:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', summary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/bean/NotificationMode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/LLMBean;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
