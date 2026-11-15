.class public Lcom/mgadplus/netlib/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/mgadplus/netlib/base/c;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/netlib/a/a;->a:I

    iput v0, p0, Lcom/mgadplus/netlib/a/a;->b:I

    iput-object p1, p0, Lcom/mgadplus/netlib/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/mgadplus/netlib/a/a;
    .locals 0

    .line 6
    iput p1, p0, Lcom/mgadplus/netlib/a/a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgadplus/netlib/a/a;->d:Lcom/mgadplus/netlib/base/c;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgadplus/netlib/base/c;

    invoke-direct {v0}, Lcom/mgadplus/netlib/base/c;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/a/a;->d:Lcom/mgadplus/netlib/base/c;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/netlib/a/a;->d:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/mgadplus/netlib/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgadplus/netlib/a/a;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mgadplus/netlib/a/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/netlib/a/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lcom/mgadplus/netlib/a/a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgadplus/netlib/a/a;->b:I

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/mgadplus/netlib/a/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public c()Lcom/mgadplus/netlib/base/c;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/a/a;->d:Lcom/mgadplus/netlib/base/c;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/mgadplus/netlib/a/a;->a:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/mgadplus/netlib/a/a;->b:I

    return p0
.end method
