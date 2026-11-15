.class public final Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;
.super Lcom/transsion/http/impl/StringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tupdate/net/network/HttpRequestor;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/cloud/tupdate/net/network/HttpRequestor$postJSON$1",
        "Lcom/transsion/http/impl/StringCallback;",
        "",
        "statusCode",
        "",
        "responseStr",
        "Lzfb;",
        "E",
        "(ILjava/lang/String;)V",
        "response",
        "",
        "e",
        "D",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/http/impl/StringCallback;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/cloud/tupdate/net/network/HttpRequestor;

.field public final synthetic h:Ljava/util/Map;

.field public final synthetic i:Ljava/util/Map;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/transsion/http/impl/StringCallback;Ljava/lang/String;Lcom/cloud/tupdate/net/network/HttpRequestor;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->e:Lcom/transsion/http/impl/StringCallback;

    iput-object p2, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->g:Lcom/cloud/tupdate/net/network/HttpRequestor;

    iput-object p4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->h:Ljava/util/Map;

    iput-object p5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->i:Ljava/util/Map;

    iput-object p6, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->j:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/http/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {p1, p2}, Lcom/cloud/tupdate/net/sign/HttpSigner;->f(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->f:Ljava/lang/String;

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->g:Lcom/cloud/tupdate/net/network/HttpRequestor;

    iget-object v2, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->i:Ljava/util/Map;

    iget-object v5, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->j:Ljava/lang/Object;

    iget-object v6, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->e:Lcom/transsion/http/impl/StringCallback;

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tupdate/net/network/HttpRequestor;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->e:Lcom/transsion/http/impl/StringCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/http/impl/StringCallback;->D(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public E(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/net/network/HttpRequestor$postJSON$1;->e:Lcom/transsion/http/impl/StringCallback;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/http/impl/StringCallback;->E(ILjava/lang/String;)V

    return-void
.end method
