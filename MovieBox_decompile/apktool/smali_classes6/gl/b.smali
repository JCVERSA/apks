.class public abstract Lgl/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/util/Map;

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Ljavax/net/ssl/SSLSocketFactory;

.field protected i:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgl/b;->c:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lgl/b;->d:Z

    .line 13
    .line 14
    const/16 v0, 0x2710

    .line 15
    .line 16
    iput v0, p0, Lgl/b;->e:I

    .line 17
    .line 18
    iput v0, p0, Lgl/b;->f:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lgl/b;->g:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(I)Lgl/b;
    .locals 0

    .line 1
    iput p1, p0, Lgl/b;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public b(Z)Lgl/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lgl/b;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public c(I)Lgl/b;
    .locals 0

    .line 1
    iput p1, p0, Lgl/b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lgl/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lgl/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
