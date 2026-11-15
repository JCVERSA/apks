.class public Lcom/transsion/palmsdk/data/PalmTokenInfo;
.super Lcom/transsion/palmsdk/data/PalmAuthInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/palmsdk/data/PalmTokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_token:Ljava/lang/String;

.field public expires_in:I

.field public openid:Ljava/lang/String;

.field public refresh_token:Ljava/lang/String;

.field public uniqueId:Ljava/lang/String;

.field private update_time:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/palmsdk/data/PalmTokenInfo$1;

    invoke-direct {v0}, Lcom/transsion/palmsdk/data/PalmTokenInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/transsion/palmsdk/data/PalmAuthInfo;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/palmsdk/data/PalmTokenInfo;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/transsion/palmsdk/data/PalmAuthInfo;-><init>()V

    .line 14
    iget-object v0, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->expires_in:I

    iput v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->expires_in:I

    .line 16
    iget-object v0, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    .line 18
    iget-wide v0, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->update_time:J

    iput-wide v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->update_time:J

    .line 19
    iget-object p1, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->uniqueId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "token"

    invoke-direct {p0}, Lcom/transsion/palmsdk/data/PalmAuthInfo;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    .line 5
    const-string p1, "refreshToken"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "access_token"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    .line 7
    const-string p1, "refresh_token"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    .line 8
    const-string p1, "expires_in"

    const/16 v0, 0x1c1f

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->expires_in:I

    .line 9
    const-string p1, "open_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    .line 10
    const-string p1, "update_time"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->update_time:J

    .line 11
    const-string p1, "unique_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->uniqueId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :goto_0
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExpireTime()J
    .locals 4

    iget p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->expires_in:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->update_time:J

    return-wide v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "open_id"

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
