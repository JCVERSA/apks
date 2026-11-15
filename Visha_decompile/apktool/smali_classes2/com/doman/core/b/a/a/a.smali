.class public final Lcom/doman/core/b/a/a/a;
.super Lcom/android/net/toolbox/o;
.source "SourceFile"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/doman/core/b/a/a/a$1;

    invoke-direct {v0}, Lcom/doman/core/b/a/a/a$1;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/net/toolbox/o;-><init>(ILjava/lang/String;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iput-object p2, p0, Lcom/doman/core/b/a/a/a;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/doman/core/b/a/a/a;->m:Ljava/lang/String;

    new-instance p1, Lcom/android/net/e;

    const/4 p2, 0x1

    const/high16 p3, 0x3f800000    # 1.0f

    const/16 v0, 0x1388

    invoke-direct {p1, v0, p2, p3}, Lcom/android/net/e;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/net/n;->j:Lcom/android/net/r;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/doman/core/b/a/a/a;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/doman/core/b/a/a/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/doman/core/b/a/a/a;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "referer"

    iget-object p0, p0, Lcom/doman/core/b/a/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final i()Lcom/android/net/n$b;
    .locals 0

    sget-object p0, Lcom/android/net/n$b;->d:Lcom/android/net/n$b;

    return-object p0
.end method
