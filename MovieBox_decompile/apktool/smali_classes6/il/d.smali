.class public Lil/d;
.super Lil/c;
.source "source.java"


# instance fields
.field private l:Z

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p5

    .line 7
    .line 8
    move-object/from16 v4, p6

    .line 9
    .line 10
    move/from16 v5, p7

    .line 11
    .line 12
    move/from16 v6, p8

    .line 13
    .line 14
    move/from16 v7, p9

    .line 15
    .line 16
    move/from16 v8, p10

    .line 17
    .line 18
    move-object/from16 v9, p11

    .line 19
    .line 20
    move-object/from16 v10, p12

    .line 21
    .line 22
    invoke-direct/range {v0 .. v10}, Lil/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    .line 23
    .line 24
    .line 25
    move v0, p3

    .line 26
    iput-boolean v0, v11, Lil/d;->l:Z

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    iput-object v0, v11, Lil/d;->m:Landroid/content/Context;

    .line 30
    .line 31
    sget-object v0, Ljl/a;->a:Ljl/c;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "origin image url:"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-object v2, p2

    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "image"

    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Ljl/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method protected b()Lil/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lil/c;->k:Lil/e$a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lil/d;->l:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lil/e$a;->m(Z)Lil/e$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lil/d;->m:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lil/e$a;->c(Landroid/content/Context;)Lil/e$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lil/e$a;->j()Lil/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
