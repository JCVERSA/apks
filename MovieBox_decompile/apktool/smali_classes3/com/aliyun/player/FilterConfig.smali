.class public Lcom/aliyun/player/FilterConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/FilterConfig$FilterOptions;,
        Lcom/aliyun/player/FilterConfig$Filter;
    }
.end annotation


# instance fields
.field private filters:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONArray;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/FilterConfig;->filters:Lorg/json/JSONArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/aliyun/player/FilterConfig$Filter;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig$Filter;->getFilter()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig;->filters:Lorg/json/JSONArray;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig$Filter;->getFilter()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig;->filters:Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
