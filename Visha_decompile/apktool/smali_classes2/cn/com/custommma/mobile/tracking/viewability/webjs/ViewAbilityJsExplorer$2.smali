.class Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsExplorer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/b;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "The webview is initializing,and this monitoring frame is discarded."

    invoke-static {p0}, Lrq5;->d(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->f(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->f(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->f(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "javascript:sendViewabilityMessage(%s)"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->f(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
