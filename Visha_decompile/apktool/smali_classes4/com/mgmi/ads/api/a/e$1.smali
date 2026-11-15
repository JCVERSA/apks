.class Lcom/mgmi/ads/api/a/e$1;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/e;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/netlib/base/b<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/mgmi/ads/api/a/e;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/e;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/e$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgmi/ads/api/a/e$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Lcom/mgadplus/netlib/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/e;->m()V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "request error reason="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "BaseAdsLoader"

    invoke-static {p4, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v1

    move-object v2, p0

    move-object v3, p5

    move-object v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/e;->j()V

    return-void
.end method

.method public a(Lcom/google/gson/JsonElement;)V
    .locals 7
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->m()V

    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 2
    iget-object v6, p0, Lcom/mgmi/ads/api/a/e$1;->a:Ljava/lang/String;

    const/4 v2, -0x1

    const v3, 0x19640

    const-string v4, "http vast format error"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/ads/api/a/e$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "BaseAdsLoader"

    const-string v1, "request success data"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/json/b;->a(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e$1;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e$1;->c:Lcom/mgmi/ads/api/a/e;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/mgmi/ads/api/a/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;)V

    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e$1;->a(Lcom/google/gson/JsonElement;)V

    return-void
.end method
