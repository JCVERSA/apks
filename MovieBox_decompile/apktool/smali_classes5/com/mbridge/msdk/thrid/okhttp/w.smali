.class public final Lcom/mbridge/msdk/thrid/okhttp/w;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/w$a;
    }
.end annotation


# instance fields
.field final a:Lcom/mbridge/msdk/thrid/okhttp/q;

.field final b:Ljava/lang/String;

.field final c:Lcom/mbridge/msdk/thrid/okhttp/p;

.field final d:Lcom/mbridge/msdk/thrid/okhttp/x;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/mbridge/msdk/thrid/okhttp/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/w$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a()Lcom/mbridge/msdk/thrid/okhttp/p;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->e:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->e:Ljava/util/Map;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/thrid/okhttp/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->f:Lcom/mbridge/msdk/thrid/okhttp/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/c;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->f:Lcom/mbridge/msdk/thrid/okhttp/c;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public c()Lcom/mbridge/msdk/thrid/okhttp/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/q;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/w;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public g()Lcom/mbridge/msdk/thrid/okhttp/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Request{method="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", url="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", tags="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->e:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
