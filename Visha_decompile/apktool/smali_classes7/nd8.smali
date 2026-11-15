.class public Lnd8;
.super Lbt8;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbt8;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lct8;
    .locals 15

    iget-object v0, p0, Lnd8;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnd8;->l:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcmd;

    iget-object v2, p0, Lbt8;->a:Ljava/lang/String;

    iget-object v3, p0, Lbt8;->b:Ljava/lang/Object;

    sget-object v4, Lcom/transsion/http/request/HttpMethod;->POST:Lcom/transsion/http/request/HttpMethod;

    iget-object v5, p0, Lbt8;->c:Ljava/util/Map;

    iget-object v6, p0, Lnd8;->l:Ljava/lang/String;

    iget-boolean v7, p0, Lbt8;->d:Z

    iget v8, p0, Lbt8;->e:I

    iget v9, p0, Lbt8;->f:I

    iget-boolean v10, p0, Lbt8;->g:Z

    sget-object v11, Lcom/transsion/http/request/a;->b:Lcom/transsion/http/request/a;

    iget-object v12, p0, Lbt8;->h:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v13, p0, Lbt8;->i:Ljavax/net/ssl/HostnameVerifier;

    iget-boolean v14, p0, Lbt8;->k:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcmd;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;Ljava/lang/String;ZIIZLcom/transsion/http/request/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V

    invoke-virtual {v0}, Ljhd;->a()Lct8;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lnd8;
    .locals 0

    iput-object p1, p0, Lnd8;->l:Ljava/lang/String;

    return-object p0
.end method
