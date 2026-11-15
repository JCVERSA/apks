.class Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->addWebViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$2;->this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$100()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$200()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$300()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$400()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$2;->this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$500(Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$600()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$2;->this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$700(Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    const-string p2, "Unexpected method in JavaScriptSessionService: "

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/iab/omid/library/bytedance2/utils/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_0
    const-string p2, "Error parsing JS message in JavaScriptSessionService."

    .line 79
    .line 80
    invoke-static {p2, p1}, Lcom/iab/omid/library/bytedance2/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
