.class public final Lvuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/b6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/b6;)V
    .locals 0

    iput-object p1, p0, Lvuh;->a:Lcom/google/android/gms/internal/ads/b6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "data"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "adSessionId"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "startSession"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "finishSession"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lmuh;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lvuh;->a:Lcom/google/android/gms/internal/ads/b6;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/b6;->c(Lcom/google/android/gms/internal/ads/b6;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lvuh;->a:Lcom/google/android/gms/internal/ads/b6;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/b6;->e(Lcom/google/android/gms/internal/ads/b6;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string p1, "Error parsing JS message in JavaScriptSessionService."

    invoke-static {p1, p0}, Lwvh;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
