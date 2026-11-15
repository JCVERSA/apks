.class public Lel/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lhl/a;

.field private b:Lfl/h;

.field private final c:Lil/e;


# direct methods
.method public constructor <init>(Lil/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lil/c;->c()Lil/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lel/b;->c:Lil/e;

    .line 9
    .line 10
    new-instance p1, Lhl/a;

    .line 11
    .line 12
    invoke-direct {p1}, Lhl/a;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lel/b;->a:Lhl/a;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/http/impl/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lel/b;->a:Lhl/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lhl/a;->a(Lel/b;Lcom/transsion/http/impl/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Lfl/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lel/b;->c:Lil/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lil/e;->e()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Lfl/c;

    .line 10
    .line 11
    iget-object v1, p0, Lel/b;->c:Lil/e;

    .line 12
    .line 13
    invoke-virtual {v1}, Lil/e;->e()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lfl/c;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lel/a;->b:I

    .line 21
    .line 22
    if-gtz v1, :cond_0

    .line 23
    .line 24
    const-wide/32 v1, 0x6400000

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/high16 v2, 0x100000

    .line 29
    .line 30
    mul-int/2addr v1, v2

    .line 31
    int-to-long v1, v1

    .line 32
    :goto_0
    sget v3, Lel/a;->a:I

    .line 33
    .line 34
    if-gtz v3, :cond_1

    .line 35
    .line 36
    const-wide/32 v3, 0x337f9800

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v4, 0x36ee80

    .line 41
    .line 42
    .line 43
    mul-int/2addr v3, v4

    .line 44
    int-to-long v3, v3

    .line 45
    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lfl/c;->a(JJ)Lfl/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lel/b;->b:Lfl/h;

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lel/b;->b:Lfl/h;

    .line 52
    .line 53
    return-object v0
.end method

.method public c()Lil/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lel/b;->c:Lil/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lil/f;
    .locals 2

    .line 1
    new-instance v0, Lil/f;

    .line 2
    .line 3
    iget-object v1, p0, Lel/b;->c:Lil/e;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lil/f;-><init>(Lil/e;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
