.class public Lcom/transsion/dbdata/beans/sniff/StartAdGuide;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activateType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activate_type"
    .end annotation
.end field

.field private days:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days"
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private onlineTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_time"
    .end annotation
.end field

.field private picUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic_url"
    .end annotation
.end field

.field private time:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->days:I

    iput p2, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->time:I

    iput-object p3, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->picUrl:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->activateType:I

    iput-wide p5, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->duration:J

    iput-object p7, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->onlineTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivateType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->activateType:I

    return p0
.end method

.method public getDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->days:I

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->duration:J

    return-wide v0
.end method

.method public getOnlineTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->onlineTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->picUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->time:I

    return p0
.end method

.method public setActivateType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->activateType:I

    return-void
.end method

.method public setDays(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->days:I

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->duration:J

    return-void
.end method

.method public setOnlineTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->onlineTime:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/StartAdGuide;->time:I

    return-void
.end method
