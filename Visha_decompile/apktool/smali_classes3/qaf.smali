.class public final Lqaf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lqaf;->a:Z

    iput-object p2, p0, Lqaf;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lqaf;->c:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lqaf;
    .locals 4

    const-string v0, "enable_prewarming"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "prefetch_url"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "skip_offline_notification_flow"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v1, Lqaf;

    invoke-direct {v1, v0, v2, p0}, Lqaf;-><init>(ZLjava/lang/String;Z)V

    return-object v1
.end method
