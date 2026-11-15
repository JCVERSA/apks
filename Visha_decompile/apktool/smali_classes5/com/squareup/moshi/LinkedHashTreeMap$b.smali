.class public Lcom/squareup/moshi/LinkedHashTreeMap$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/squareup/moshi/LinkedHashTreeMap$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/moshi/LinkedHashTreeMap$f;
    .locals 4

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$b;->a:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iput-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$f;->d:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    iput-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$f;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$f;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$b;->a:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    return-object v0
.end method

.method public b(Lcom/squareup/moshi/LinkedHashTreeMap$f;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$f;->b:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$f;->c:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$b;->a:Lcom/squareup/moshi/LinkedHashTreeMap$f;

    return-void
.end method
