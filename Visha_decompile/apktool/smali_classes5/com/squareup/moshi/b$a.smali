.class public Lcom/squareup/moshi/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/moshi/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/j;)Lcom/squareup/moshi/e;
    .locals 0

    invoke-static {p1}, Lkdb;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Lkdb;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p0}, Lcom/squareup/moshi/j;->d(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/e;

    move-result-object p0

    new-instance p2, Lcom/squareup/moshi/b;

    invoke-direct {p2, p1, p0}, Lcom/squareup/moshi/b;-><init>(Ljava/lang/Class;Lcom/squareup/moshi/e;)V

    invoke-virtual {p2}, Lcom/squareup/moshi/e;->nullSafe()Lcom/squareup/moshi/e;

    move-result-object p0

    return-object p0
.end method
