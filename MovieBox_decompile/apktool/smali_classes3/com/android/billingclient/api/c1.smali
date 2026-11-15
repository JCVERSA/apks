.class public final Lcom/android/billingclient/api/c1;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "startTimeMillis"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    const-string v0, "endTimeMillis"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    return-void
.end method
