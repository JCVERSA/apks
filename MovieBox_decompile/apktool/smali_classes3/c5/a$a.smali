.class Lc5/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static h:I = 0x6

.field static i:I = 0x7

.field static j:I = 0x8


# instance fields
.field private final a:[Lcom/alibaba/fastjson/util/d;

.field private final b:Ljava/lang/String;

.field private final c:Lc5/f1;

.field private final d:Z

.field private e:Ljava/util/Map;

.field private f:I

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>([Lcom/alibaba/fastjson/util/d;Lc5/f1;Ljava/lang/String;ZZ)V
    .locals 1

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
    iput-object v0, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    iput v0, p0, Lc5/a$a;->f:I

    .line 14
    .line 15
    iput-object p1, p0, Lc5/a$a;->a:[Lcom/alibaba/fastjson/util/d;

    .line 16
    .line 17
    iput-object p3, p0, Lc5/a$a;->b:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p2, p0, Lc5/a$a;->c:Lc5/f1;

    .line 20
    .line 21
    iput-boolean p4, p0, Lc5/a$a;->d:Z

    .line 22
    .line 23
    if-nez p5, :cond_1

    .line 24
    .line 25
    iget-object p1, p2, Lc5/f1;->a:Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    iput-boolean p1, p0, Lc5/a$a;->g:Z

    .line 38
    .line 39
    return-void
.end method

.method static synthetic a(Lc5/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc5/a$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lc5/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc5/a$a;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lc5/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc5/a$a;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lc5/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc5/a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lc5/a$a;)Lc5/f1;
    .locals 0

    .line 1
    iget-object p0, p0, Lc5/a$a;->c:Lc5/f1;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/a$a;->a:[Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lc5/a$a;->a:[Lcom/alibaba/fastjson/util/d;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, -0x1

    .line 24
    :goto_1
    return v1
.end method

.method public g(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 12
    .line 13
    iget v1, p0, Lc5/a$a;->f:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lc5/a$a;->f:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public h(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 12
    .line 13
    iget v1, p0, Lc5/a$a;->f:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lc5/a$a;->f:I

    .line 23
    .line 24
    add-int/2addr v0, p2

    .line 25
    iput v0, p0, Lc5/a$a;->f:I

    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Lc5/a$a;->e:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method
