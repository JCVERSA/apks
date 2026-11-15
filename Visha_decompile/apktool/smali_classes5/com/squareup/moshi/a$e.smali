.class public Lcom/squareup/moshi/a$e;
.super Lcom/squareup/moshi/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/a;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/squareup/moshi/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public h:Lcom/squareup/moshi/e;

.field public final synthetic i:[Ljava/lang/reflect/Type;

.field public final synthetic j:Ljava/lang/reflect/Type;

.field public final synthetic k:Ljava/util/Set;

.field public final synthetic l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p8, p0, Lcom/squareup/moshi/a$e;->i:[Ljava/lang/reflect/Type;

    iput-object p9, p0, Lcom/squareup/moshi/a$e;->j:Ljava/lang/reflect/Type;

    iput-object p10, p0, Lcom/squareup/moshi/a$e;->k:Ljava/util/Set;

    iput-object p11, p0, Lcom/squareup/moshi/a$e;->l:Ljava/util/Set;

    invoke-direct/range {p0 .. p7}, Lcom/squareup/moshi/a$f;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/moshi/j;Lcom/squareup/moshi/e$e;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/squareup/moshi/a$f;->a(Lcom/squareup/moshi/j;Lcom/squareup/moshi/e$e;)V

    iget-object v0, p0, Lcom/squareup/moshi/a$e;->i:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/squareup/moshi/a$e;->j:Ljava/lang/reflect/Type;

    invoke-static {v0, v2}, Lkdb;->d(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/a$e;->k:Ljava/util/Set;

    iget-object v2, p0, Lcom/squareup/moshi/a$e;->l:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/a$e;->i:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/squareup/moshi/a$e;->k:Ljava/util/Set;

    invoke-virtual {p1, p2, v0, v1}, Lcom/squareup/moshi/j;->h(Lcom/squareup/moshi/e$e;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/squareup/moshi/a$e;->i:[Ljava/lang/reflect/Type;

    aget-object p2, p2, v1

    iget-object v0, p0, Lcom/squareup/moshi/a$e;->k:Ljava/util/Set;

    invoke-virtual {p1, p2, v0}, Lcom/squareup/moshi/j;->e(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/squareup/moshi/a$e;->h:Lcom/squareup/moshi/e;

    return-void
.end method

.method public b(Lcom/squareup/moshi/j;Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/squareup/moshi/a$e;->h:Lcom/squareup/moshi/e;

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/a$f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
