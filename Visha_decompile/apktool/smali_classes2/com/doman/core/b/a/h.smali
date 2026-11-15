.class public final Lcom/doman/core/b/a/h;
.super Lcom/doman/core/b/a/d;
.source "SourceFile"


# static fields
.field protected static l:Lcom/android/net/p$a;


# instance fields
.field private n:Lcom/doman/core/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/b/a/h$1;

    invoke-direct {v0}, Lcom/doman/core/b/a/h$1;-><init>()V

    sput-object v0, Lcom/doman/core/b/a/h;->l:Lcom/android/net/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/doman/core/b/e;)V
    .locals 2

    invoke-virtual {p2}, Lcom/doman/core/b/e;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/doman/core/b/a/h;->l:Lcom/android/net/p$a;

    invoke-direct {p0, v0, v1}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/doman/core/b/a/h;->n:Lcom/doman/core/b/e;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/doman/core/b/a/h;->n:Lcom/doman/core/b/e;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/net/n;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, v0, Lcom/doman/core/b/e;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public final i()Lcom/android/net/n$b;
    .locals 0

    sget-object p0, Lcom/android/net/n$b;->a:Lcom/android/net/n$b;

    return-object p0
.end method

.method public final n()Lcom/android/net/p$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/net/p$b<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
