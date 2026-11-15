.class public Lcom/mgadplus/netlib/base/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/netlib/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lokhttp3/CookieJar;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/a$a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/a$a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/a$a;->c:Ljava/util/HashMap;

    const-string v0, "okhttp/imgotv"

    iput-object v0, p0, Lcom/mgadplus/netlib/base/a$a;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/netlib/base/a$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)Lcom/mgadplus/netlib/base/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgadplus/netlib/base/a$a;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/mgadplus/netlib/base/a$a;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method public a(Lokhttp3/Interceptor;)Lcom/mgadplus/netlib/base/a$a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgadplus/netlib/base/a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/netlib/base/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgadplus/netlib/base/a$a;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Lokhttp3/CookieJar;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/a$a;->e:Lokhttp3/CookieJar;

    return-object p0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgadplus/netlib/base/a$a;->a:Ljava/util/ArrayList;

    return-object p0
.end method
