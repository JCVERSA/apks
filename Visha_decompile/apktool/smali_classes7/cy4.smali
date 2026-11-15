.class public Lcy4;
.super Lbt8;
.source "SourceFile"


# instance fields
.field public l:Z

.field public m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lbt8;-><init>()V

    iput-object p1, p0, Lcy4;->m:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public g()Lct8;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Leld;

    iget-object v1, v0, Lcy4;->m:Landroid/content/Context;

    iget-object v2, v0, Lbt8;->a:Ljava/lang/String;

    iget-boolean v3, v0, Lcy4;->l:Z

    iget-object v4, v0, Lbt8;->b:Ljava/lang/Object;

    sget-object v5, Lcom/transsion/http/request/HttpMethod;->GET:Lcom/transsion/http/request/HttpMethod;

    iget-object v6, v0, Lbt8;->c:Ljava/util/Map;

    iget-boolean v7, v0, Lbt8;->d:Z

    iget v8, v0, Lbt8;->e:I

    iget v9, v0, Lbt8;->f:I

    iget-boolean v10, v0, Lbt8;->g:Z

    iget-object v11, v0, Lbt8;->h:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v12, v0, Lbt8;->i:Ljavax/net/ssl/HostnameVerifier;

    iget-boolean v13, v0, Lbt8;->j:Z

    iget-boolean v14, v0, Lbt8;->k:Z

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Leld;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;ZZ)V

    invoke-virtual {v15}, Ljhd;->a()Lct8;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)Lcy4;
    .locals 0

    iput-boolean p1, p0, Lcy4;->l:Z

    return-object p0
.end method
