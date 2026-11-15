.class Lcom/mgmi/ads/api/a/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfnd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/o;-><init>(Lcom/mgmi/ads/api/a/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfnd$a;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/o;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/o$1;->a:Lcom/mgmi/ads/api/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mgmi/ads/api/a/o$1;->a:Lcom/mgmi/ads/api/a/o;

    invoke-static {v0}, Lcom/mgmi/ads/api/a/o;->a(Lcom/mgmi/ads/api/a/o;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/o$1;->a:Lcom/mgmi/ads/api/a/o;

    invoke-static {v0}, Lcom/mgmi/ads/api/a/o;->a(Lcom/mgmi/ads/api/a/o;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/o$1;->a:Lcom/mgmi/ads/api/a/o;

    invoke-static {p0}, Lcom/mgmi/ads/api/a/o;->a(Lcom/mgmi/ads/api/a/o;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ads/api/a/o$a;

    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/o$a;->b(Lcom/mgmi/model/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/mgmi/model/r;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/o$1;->a(Lcom/mgmi/model/r;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Float;)V
    .locals 0

    .line 3
    return-void
.end method

.method public bridge synthetic a([Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/o$1;->a([Ljava/lang/Float;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
