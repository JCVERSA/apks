.class public Ls7/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls7/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Z

.field public final h:Lw7/b;

.field public final i:Lz7/b;

.field public final j:Ly7/b;

.field public final k:Lb8/b;

.field public final l:La8/b;

.field public final m:Lv7/a;

.field private final n:Ljava/util/Map;

.field public final o:Ljava/util/List;


# direct methods
.method constructor <init>(Ls7/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ls7/a$a;->a(Ls7/a$a;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Ls7/a;->a:I

    .line 9
    .line 10
    invoke-static {p1}, Ls7/a$a;->b(Ls7/a$a;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Ls7/a;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Ls7/a$a;->h(Ls7/a$a;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Ls7/a;->c:Z

    .line 21
    .line 22
    invoke-static {p1}, Ls7/a$a;->i(Ls7/a$a;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Ls7/a;->d:Z

    .line 27
    .line 28
    invoke-static {p1}, Ls7/a$a;->j(Ls7/a$a;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Ls7/a;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Ls7/a$a;->k(Ls7/a$a;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Ls7/a;->f:I

    .line 39
    .line 40
    invoke-static {p1}, Ls7/a$a;->l(Ls7/a$a;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Ls7/a;->g:Z

    .line 45
    .line 46
    invoke-static {p1}, Ls7/a$a;->m(Ls7/a$a;)Lw7/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Ls7/a;->h:Lw7/b;

    .line 51
    .line 52
    invoke-static {p1}, Ls7/a$a;->n(Ls7/a$a;)Lz7/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Ls7/a;->i:Lz7/b;

    .line 57
    .line 58
    invoke-static {p1}, Ls7/a$a;->o(Ls7/a$a;)Ly7/b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Ls7/a;->j:Ly7/b;

    .line 63
    .line 64
    invoke-static {p1}, Ls7/a$a;->c(Ls7/a$a;)Lb8/b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Ls7/a;->k:Lb8/b;

    .line 69
    .line 70
    invoke-static {p1}, Ls7/a$a;->d(Ls7/a$a;)La8/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Ls7/a;->l:La8/b;

    .line 75
    .line 76
    invoke-static {p1}, Ls7/a$a;->e(Ls7/a$a;)Lv7/a;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Ls7/a;->m:Lv7/a;

    .line 81
    .line 82
    invoke-static {p1}, Ls7/a$a;->f(Ls7/a$a;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Ls7/a;->n:Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {p1}, Ls7/a$a;->g(Ls7/a$a;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Ls7/a;->o:Ljava/util/List;

    .line 93
    .line 94
    return-void
.end method

.method static synthetic a(Ls7/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method
