.class public Lcom/transsion/athena/data/Track;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final SAVE_FLAG_NONE:I = -0x1

.field public static final SAVE_FLAG_TO_DB:I = 0x1

.field public static final SAVE_FLAG_TO_FILE:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/athena/data/TrackData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBootId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/Track;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/Track;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginJsonData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/Track;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrackData()Lcom/transsion/athena/data/TrackData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/Track;->i:Lcom/transsion/athena/data/TrackData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackErTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrackFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/athena/data/Track;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrackTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setBootId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJsonData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginJsonData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setTid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public setTrackData(Lcom/transsion/athena/data/TrackData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->i:Lcom/transsion/athena/data/TrackData;

    .line 2
    .line 3
    return-void
.end method

.method public setTrackErTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public setTrackFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/data/Track;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrackTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    iget-wide v1, p0, Lcom/transsion/athena/data/Track;->d:J

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
    iget-object v1, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

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
