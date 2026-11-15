.class public Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/TAdRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdRequestBodyBuild"
.end annotation


# instance fields
.field private additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

.field private mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

.field private scheduleTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 8
    .line 9
    const v0, 0xea60

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->getScheduleTime()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getScheduleTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public build()Lcom/hisavana/common/bean/TAdRequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/TAdRequestBody;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hisavana/common/bean/TAdRequestBody;-><init>(Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getAdListener()Lcom/hisavana/common/interfacz/TAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdListener(Lcom/hisavana/common/interfacz/TAdListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setScheduleTime(I)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AdRequestBodyBuild{, scheduleTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x7d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
