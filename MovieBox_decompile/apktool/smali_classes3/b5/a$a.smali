.class Lb5/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/alibaba/fastjson/util/h;

.field private final e:Ljava/lang/String;

.field private f:[Lcom/alibaba/fastjson/util/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;La5/h;Lcom/alibaba/fastjson/util/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lb5/a$a;->a:I

    .line 6
    .line 7
    new-instance p2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lb5/a$a;->b:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p1, p0, Lb5/a$a;->e:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p3, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    .line 17
    .line 18
    iput-object p1, p0, Lb5/a$a;->c:Ljava/lang/Class;

    .line 19
    .line 20
    iput p4, p0, Lb5/a$a;->a:I

    .line 21
    .line 22
    iput-object p3, p0, Lb5/a$a;->d:Lcom/alibaba/fastjson/util/h;

    .line 23
    .line 24
    iget-object p1, p3, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 25
    .line 26
    iput-object p1, p0, Lb5/a$a;->f:[Lcom/alibaba/fastjson/util/d;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic a(Lb5/a$a;)Lcom/alibaba/fastjson/util/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lb5/a$a;->d:Lcom/alibaba/fastjson/util/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lb5/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb5/a$a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb5/a$a;->f:[Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lb5/a$a;[Lcom/alibaba/fastjson/util/d;)[Lcom/alibaba/fastjson/util/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lb5/a$a;->f:[Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lb5/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb5/a$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lb5/a$a;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lb5/a$a;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public g(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lb5/a$a;->j(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "_asm_deser__"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    return-object p1
.end method

.method public h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lb5/a$a;->j(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, "_asm_prefix__"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "asm_field_"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    return-object p1
.end method

.method public i()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lb5/a$a;->d:Lcom/alibaba/fastjson/util/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->b:Ljava/lang/Class;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lb5/a$a;->c:Ljava/lang/Class;

    .line 8
    .line 9
    :cond_0
    return-object v0
.end method

.method j(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->g(C)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->k(C)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method public k(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lb5/a$a;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lb5/a$a;->b:Ljava/util/Map;

    .line 12
    .line 13
    iget v1, p0, Lb5/a$a;->a:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lb5/a$a;->a:I

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
    iget-object v0, p0, Lb5/a$a;->b:Ljava/util/Map;

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

.method public l(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb5/a$a;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lb5/a$a;->b:Ljava/util/Map;

    .line 12
    .line 13
    iget v1, p0, Lb5/a$a;->a:I

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
    iget v0, p0, Lb5/a$a;->a:I

    .line 23
    .line 24
    add-int/2addr v0, p2

    .line 25
    iput v0, p0, Lb5/a$a;->a:I

    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Lb5/a$a;->b:Ljava/util/Map;

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

.method public m(Lcom/alibaba/fastjson/util/d;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "_asm"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public n(Lcom/alibaba/fastjson/util/d;I)I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "_asm"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lb5/a$a;->l(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method
