.class Lcom/mgmi/ads/api/a/f$a$1;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/f$a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/netlib/base/b<",
        "Lcom/mgmi/net/bean/BootAdBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mgmi/ads/api/a/f$a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/f$a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/f$a$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mgmi/ads/api/a/f$a$1;->b:I

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

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "requestAds error reason="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "BootAdsloader"

    invoke-static {p4, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p1, p1, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/f;->m()V

    .line 10
    iget-object p1, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, p1, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v1

    move-object v2, p0

    move-object v3, p5

    move-object v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const/4 p1, 0x0

    const p2, 0xaae62

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 7
    .param p1    # Lcom/mgmi/net/bean/BootAdBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/trace/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/f;->m()V

    if-nez p1, :cond_0

    .line 3
    const-string v4, "http vast format error"

    iget-object v6, p0, Lcom/mgmi/ads/api/a/f$a$1;->a:Ljava/lang/String;

    const/4 v2, -0x1

    const v3, 0x19640

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/ads/api/a/f$a$1;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "lyzzzzzz"

    const-string v1, "parseBootadBean-start"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgmi/ads/api/a/f;->x:J

    .line 6
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f$a$1;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/f$a$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/mgmi/ads/api/a/f$a$1;->b:I

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/mgmi/ads/api/a/f;->a(Lcom/mgmi/net/bean/BootAdBean;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/f$a$1;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method
