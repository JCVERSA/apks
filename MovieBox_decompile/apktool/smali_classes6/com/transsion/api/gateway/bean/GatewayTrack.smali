.class public Lcom/transsion/api/gateway/bean/GatewayTrack;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SAVE_FLAG_NONE:I = -0x1

.field public static final SAVE_FLAG_TO_DB:I = 0x1

.field public static final SAVE_FLAG_TO_FILE:I


# instance fields
.field private eventName:Ljava/lang/String;

.field private flag:I

.field private hasSent:Z

.field private jsonData:Lorg/json/JSONObject;

.field private tid:J

.field private trackFlag:I


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
    iput-boolean v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->hasSent:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->eventName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->flag:I

    .line 2
    .line 3
    return v0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->jsonData:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->tid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrackFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->trackFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public isHasSent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->hasSent:Z

    .line 2
    .line 3
    return v0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->eventName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->flag:I

    .line 2
    .line 3
    return-void
.end method

.method public setHasSent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->hasSent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->jsonData:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setTid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->tid:J

    .line 2
    .line 3
    return-void
.end method

.method public setTrackFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->trackFlag:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tid = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->tid:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",event = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/api/gateway/bean/GatewayTrack;->jsonData:Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
