.class final Lretrofit2/i0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/i0$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Lokhttp3/HttpUrl;

.field final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lokhttp3/Headers;

.field private final g:Lokhttp3/MediaType;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[Lretrofit2/a0;

.field final l:Z


# direct methods
.method constructor <init>(Lretrofit2/i0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lretrofit2/i0$a;->b:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object v0, p0, Lretrofit2/i0;->a:Ljava/lang/Class;

    .line 7
    .line 8
    iget-object v0, p1, Lretrofit2/i0$a;->c:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iput-object v0, p0, Lretrofit2/i0;->b:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    iget-object v0, p1, Lretrofit2/i0$a;->a:Lretrofit2/k0;

    .line 13
    .line 14
    iget-object v0, v0, Lretrofit2/k0;->c:Lokhttp3/HttpUrl;

    .line 15
    .line 16
    iput-object v0, p0, Lretrofit2/i0;->c:Lokhttp3/HttpUrl;

    .line 17
    .line 18
    iget-object v0, p1, Lretrofit2/i0$a;->o:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lretrofit2/i0;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p1, Lretrofit2/i0$a;->s:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lretrofit2/i0;->e:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lretrofit2/i0$a;->t:Lokhttp3/Headers;

    .line 27
    .line 28
    iput-object v0, p0, Lretrofit2/i0;->f:Lokhttp3/Headers;

    .line 29
    .line 30
    iget-object v0, p1, Lretrofit2/i0$a;->u:Lokhttp3/MediaType;

    .line 31
    .line 32
    iput-object v0, p0, Lretrofit2/i0;->g:Lokhttp3/MediaType;

    .line 33
    .line 34
    iget-boolean v0, p1, Lretrofit2/i0$a;->p:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lretrofit2/i0;->h:Z

    .line 37
    .line 38
    iget-boolean v0, p1, Lretrofit2/i0$a;->q:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lretrofit2/i0;->i:Z

    .line 41
    .line 42
    iget-boolean v0, p1, Lretrofit2/i0$a;->r:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lretrofit2/i0;->j:Z

    .line 45
    .line 46
    iget-object v0, p1, Lretrofit2/i0$a;->w:[Lretrofit2/a0;

    .line 47
    .line 48
    iput-object v0, p0, Lretrofit2/i0;->k:[Lretrofit2/a0;

    .line 49
    .line 50
    iget-boolean p1, p1, Lretrofit2/i0$a;->x:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Lretrofit2/i0;->l:Z

    .line 53
    .line 54
    return-void
.end method

.method static b(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/i0;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/i0$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lretrofit2/i0$a;-><init>(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lretrofit2/i0$a;->b()Lretrofit2/i0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Object;[Ljava/lang/Object;)Lokhttp3/Request;
    .locals 12

    .line 1
    iget-object v0, p0, Lretrofit2/i0;->k:[Lretrofit2/a0;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    array-length v2, v0

    .line 5
    if-ne v1, v2, :cond_2

    .line 6
    .line 7
    new-instance v2, Lretrofit2/h0;

    .line 8
    .line 9
    iget-object v4, p0, Lretrofit2/i0;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lretrofit2/i0;->c:Lokhttp3/HttpUrl;

    .line 12
    .line 13
    iget-object v6, p0, Lretrofit2/i0;->e:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lretrofit2/i0;->f:Lokhttp3/Headers;

    .line 16
    .line 17
    iget-object v8, p0, Lretrofit2/i0;->g:Lokhttp3/MediaType;

    .line 18
    .line 19
    iget-boolean v9, p0, Lretrofit2/i0;->h:Z

    .line 20
    .line 21
    iget-boolean v10, p0, Lretrofit2/i0;->i:Z

    .line 22
    .line 23
    iget-boolean v11, p0, Lretrofit2/i0;->j:Z

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    invoke-direct/range {v3 .. v11}, Lretrofit2/h0;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p0, Lretrofit2/i0;->l:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-ge v4, v1, :cond_1

    .line 42
    .line 43
    aget-object v5, p2, v4

    .line 44
    .line 45
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    aget-object v5, v0, v4

    .line 49
    .line 50
    aget-object v6, p2, v4

    .line 51
    .line 52
    invoke-virtual {v5, v2, v6}, Lretrofit2/a0;->a(Lretrofit2/h0;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2}, Lretrofit2/h0;->k()Lokhttp3/Request$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance v0, Lretrofit2/v;

    .line 63
    .line 64
    iget-object v1, p0, Lretrofit2/i0;->a:Ljava/lang/Class;

    .line 65
    .line 66
    iget-object v2, p0, Lretrofit2/i0;->b:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    invoke-direct {v0, v1, p1, v2, v3}, Lretrofit2/v;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    const-class p1, Lretrofit2/v;

    .line 72
    .line 73
    invoke-virtual {p2, p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "Argument count ("

    .line 90
    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ") doesn\'t match expected count ("

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    array-length v0, v0

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method
