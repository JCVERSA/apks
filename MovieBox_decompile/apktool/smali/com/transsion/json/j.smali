.class public Lcom/transsion/json/j;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final f:[C


# instance fields
.field private final a:Lcom/transsion/json/b/p;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/List;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/transsion/json/j;->f:[C

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/json/j;->b:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/json/j;->c:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/json/b/p;

    .line 19
    .line 20
    invoke-static {}, Lcom/transsion/json/w;->a()Lcom/transsion/json/b/p;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/transsion/json/b/p;-><init>(Lcom/transsion/json/b/p;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsion/json/j;->a:Lcom/transsion/json/b/p;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/transsion/json/j;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/json/j;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/transsion/json/j;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/transsion/json/j;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/json/t;->b:Lcom/transsion/json/t;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/json/s;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/transsion/json/s;-><init>(Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/json/j;->d(Ljava/lang/Object;Lcom/transsion/json/t;Lcom/transsion/json/p;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method protected d(Ljava/lang/Object;Lcom/transsion/json/t;Lcom/transsion/json/p;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/transsion/json/h;->q()Lcom/transsion/json/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/json/j;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/json/h;->k(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/transsion/json/j;->d:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/json/h;->m(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lcom/transsion/json/h;->g(Lcom/transsion/json/p;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/transsion/json/h;->h(Lcom/transsion/json/t;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/json/j;->a:Lcom/transsion/json/b/p;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/transsion/json/h;->e(Lcom/transsion/json/b/p;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/json/j;->b:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/transsion/json/h;->l(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/json/j;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/transsion/json/h;->s(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/json/h;->y()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string v1, ""

    .line 47
    .line 48
    :try_start_1
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/json/h;->H()Lcom/transsion/json/u;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/transsion/json/h;->u(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/transsion/json/h;->j(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/json/h;->D()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/transsion/json/h;->j(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/json/h;->v()Lcom/transsion/json/p;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/transsion/json/h;->c()V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :goto_2
    invoke-static {}, Lcom/transsion/json/h;->c()V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method protected e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-instance v2, Lcom/transsion/json/r;

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v0, v3}, Lcom/transsion/json/r;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/json/r;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/json/j;->c:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transsion/json/j;->c:Ljava/util/List;

    .line 32
    .line 33
    new-instance v2, Lcom/transsion/json/r;

    .line 34
    .line 35
    invoke-direct {v2, p1, v1}, Lcom/transsion/json/r;-><init>(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
