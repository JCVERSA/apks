.class public final synthetic Lkt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lokhttp3/Request;

.field public final synthetic d:Lcom/cloud/hisavana/net/impl/IHttpCallback;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt4;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lkt4;->c:Lokhttp3/Request;

    iput-object p3, p0, Lkt4;->d:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkt4;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lkt4;->c:Lokhttp3/Request;

    iget-object p0, p0, Lkt4;->d:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/net/HttpRequest;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    return-void
.end method
