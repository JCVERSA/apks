.class public Leld;
.super Ljhd;
.source "SourceFile"


# instance fields
.field public m:Z

.field public n:Landroid/content/Context;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;ZZ)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Ljhd;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/request/HttpMethod;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V

    move/from16 v0, p3

    iput-boolean v0, v12, Leld;->m:Z

    move-object v0, p1

    iput-object v0, v12, Leld;->n:Landroid/content/Context;

    move/from16 v0, p13

    iput-boolean v0, v12, Leld;->o:Z

    sget-object v0, Lhf1;->a:Lup5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin image url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lhnd;
    .locals 2

    iget-object v0, p0, Ljhd;->l:Lhnd$a;

    iget-boolean v1, p0, Leld;->m:Z

    invoke-virtual {v0, v1}, Lhnd$a;->r(Z)Lhnd$a;

    move-result-object v0

    iget-boolean v1, p0, Leld;->o:Z

    invoke-virtual {v0, v1}, Lhnd$a;->k(Z)Lhnd$a;

    move-result-object v0

    iget-object p0, p0, Leld;->n:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lhnd$a;->c(Landroid/content/Context;)Lhnd$a;

    move-result-object p0

    invoke-virtual {p0}, Lhnd$a;->l()Lhnd;

    move-result-object p0

    return-object p0
.end method
