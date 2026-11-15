.class public final synthetic Lcom/cloud/hisavana/net/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lokhttp3/Request;

.field public final synthetic c:Lcom/cloud/hisavana/net/impl/IHttpCallback;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/net/a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/net/a;->b:Lokhttp3/Request;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/net/a;->c:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/net/a;->b:Lokhttp3/Request;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/net/a;->c:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/net/HttpRequest;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
