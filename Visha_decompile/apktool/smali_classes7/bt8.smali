.class public abstract Lbt8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Map;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljavax/net/ssl/SSLSocketFactory;

.field public i:Ljavax/net/ssl/HostnameVerifier;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbt8;->c:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbt8;->d:Z

    const/16 v1, 0x2710

    iput v1, p0, Lbt8;->e:I

    iput v1, p0, Lbt8;->f:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbt8;->g:Z

    iput-boolean v1, p0, Lbt8;->j:Z

    iput-boolean v0, p0, Lbt8;->k:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lbt8;
    .locals 1

    iget-object v0, p0, Lbt8;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(I)Lbt8;
    .locals 0

    iput p1, p0, Lbt8;->e:I

    return-object p0
.end method

.method public c(Z)Lbt8;
    .locals 0

    iput-boolean p1, p0, Lbt8;->d:Z

    return-object p0
.end method

.method public d(I)Lbt8;
    .locals 0

    iput p1, p0, Lbt8;->f:I

    return-object p0
.end method

.method public e(Ljavax/net/ssl/SSLSocketFactory;)Lbt8;
    .locals 0

    iput-object p1, p0, Lbt8;->h:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lbt8;
    .locals 0

    iput-object p1, p0, Lbt8;->a:Ljava/lang/String;

    return-object p0
.end method
