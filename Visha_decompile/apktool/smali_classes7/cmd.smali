.class public Lcmd;
.super Ljhd;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:Lcom/transsion/http/request/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;Ljava/lang/String;ZIIZLcom/transsion/http/request/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 14

    move-object v12, p0

    move-object/from16 v13, p5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Ljhd;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V

    iput-object v13, v12, Lcmd;->m:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v12, Lcmd;->n:Lcom/transsion/http/request/a;

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lhf1;->a:Lup5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-interface {v0, v2, v1}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lhf1;->a:Lup5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post content:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the content can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Lhnd;
    .locals 2

    iget-object v0, p0, Ljhd;->l:Lhnd$a;

    iget-object v1, p0, Lcmd;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhnd$a;->g(Ljava/lang/String;)Lhnd$a;

    move-result-object v0

    iget-object p0, p0, Lcmd;->n:Lcom/transsion/http/request/a;

    invoke-virtual {v0, p0}, Lhnd$a;->e(Lcom/transsion/http/request/a;)Lhnd$a;

    move-result-object p0

    invoke-virtual {p0}, Lhnd$a;->l()Lhnd;

    move-result-object p0

    return-object p0
.end method
