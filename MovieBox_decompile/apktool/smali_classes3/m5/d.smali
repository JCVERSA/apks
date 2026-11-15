.class public Lm5/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Hashtable;

.field public h:Ljava/util/Hashtable;

.field public i:Ljava/util/TreeMap;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lm5/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lm5/d;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lm5/d;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lm5/d;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lm5/d;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lm5/d;->f:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lm5/d;->k:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lm5/d;->l:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lm5/d;->m:Z

    .line 25
    .line 26
    new-instance v0, Ljava/util/Hashtable;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lm5/d;->g:Ljava/util/Hashtable;

    .line 32
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lm5/d;->h:Ljava/util/Hashtable;

    .line 39
    .line 40
    new-instance v0, Ljava/util/TreeMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lm5/d;->i:Ljava/util/TreeMap;

    .line 46
    .line 47
    const-string v0, "List of non fatal errors produced during parsing:\n\n"

    .line 48
    .line 49
    iput-object v0, p0, Lm5/d;->j:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm5/d;->i:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lm5/b;

    .line 27
    .line 28
    iget-object v3, v2, Lm5/b;->a:Lm5/a;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v3, v3, Lm5/a;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    iget-object v2, v2, Lm5/b;->a:Lm5/a;

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-object v0, p0, Lm5/d;->g:Ljava/util/Hashtable;

    .line 47
    .line 48
    return-void
.end method
