.class public Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz9d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/jsbridge/BridgeWebView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lued;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lued;

    invoke-virtual {v1}, Lued;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    iget-object v3, v3, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz9d;

    invoke-virtual {v1}, Lued;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lz9d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    iget-object v1, v1, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lued;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;

    invoke-direct {v3, p0, v2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$b;

    invoke-direct {v3, p0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$b;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;)V

    :goto_1
    invoke-virtual {v1}, Lued;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    iget-object v2, v2, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lued;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2d;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    iget-object v2, v2, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->h:Ld2d;

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lued;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Ld2d;->a(Ljava/lang/String;Lz9d;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
