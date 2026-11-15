.class public Lit8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit8$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit8;->c(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lit8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/Request;

.field public final synthetic b:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

.field public final synthetic c:Lit8;


# direct methods
.method public constructor <init>(Lit8;Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lit8$a;->c:Lit8;

    iput-object p2, p0, Lit8$a;->a:Lokhttp3/Request;

    iput-object p3, p0, Lit8$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/Response;
    .locals 2

    iget-object v0, p0, Lit8$a;->c:Lit8;

    invoke-static {v0}, Lit8;->a(Lit8;)Liu8;

    move-result-object v0

    iget-object v1, p0, Lit8$a;->a:Lokhttp3/Request;

    iget-object p0, p0, Lit8$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-virtual {v0, v1, p0}, Liu8;->g(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
