.class public Lcom/amazonaws/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/io/InputStream;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/http/HttpResponse;
    .locals 7

    .line 1
    new-instance v6, Lcom/amazonaws/http/HttpResponse;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/amazonaws/http/HttpResponse$Builder;->b:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/amazonaws/http/HttpResponse$Builder;->c:Ljava/io/InputStream;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, v6

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazonaws/http/HttpResponse$1;)V

    .line 18
    .line 19
    .line 20
    return-object v6
.end method

.method public b(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(I)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
