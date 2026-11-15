.class public Lcom/aliyun/liveshift/bean/TimeLineContent;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeLineContent"


# instance fields
.field public current:J

.field public timelines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/liveshift/bean/TimeLineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineContent;
    .locals 3

    .line 1
    new-instance v0, Lcom/aliyun/liveshift/bean/TimeLineContent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/aliyun/liveshift/bean/TimeLineContent;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v1, "current"

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0, v1}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->current:J

    .line 20
    .line 21
    :try_start_0
    const-string v1, "timeline"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/aliyun/liveshift/bean/TimeLineInfo;->getInfoArrayFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iput-object p0, v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    :catch_0
    return-object v0
.end method
