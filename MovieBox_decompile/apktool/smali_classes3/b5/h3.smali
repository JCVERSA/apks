.class public final Lb5/h3;
.super Lb5/l;
.source "source.java"


# instance fields
.field private final c:I

.field private final d:Ljava/util/List;

.field private final e:La5/a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Collection;


# direct methods
.method public constructor <init>(La5/a;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lb5/l;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    .line 2
    iput-object p1, p0, Lb5/h3;->e:La5/a;

    .line 3
    iput p3, p0, Lb5/h3;->c:I

    .line 4
    iput-object p2, p0, Lb5/h3;->d:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lb5/h3;->f:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lb5/h3;->g:Ljava/util/Map;

    .line 7
    iput-object v0, p0, Lb5/h3;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0}, Lb5/l;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    .line 16
    iput-object v0, p0, Lb5/h3;->e:La5/a;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lb5/h3;->c:I

    .line 18
    iput-object v0, p0, Lb5/h3;->d:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lb5/h3;->f:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lb5/h3;->g:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lb5/h3;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Lb5/l;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    .line 9
    iput-object v0, p0, Lb5/h3;->e:La5/a;

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lb5/h3;->c:I

    .line 11
    iput-object v0, p0, Lb5/h3;->d:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lb5/h3;->f:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lb5/h3;->g:Ljava/util/Map;

    .line 14
    iput-object v0, p0, Lb5/h3;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public d(La5/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lb5/h3;->g:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lb5/h3;->f:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lb5/h3;->h:Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p1, p0, Lb5/h3;->d:Ljava/util/List;

    .line 20
    .line 21
    iget v0, p0, Lb5/h3;->c:I

    .line 22
    .line 23
    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lb5/h3;->d:Ljava/util/List;

    .line 27
    .line 28
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget v2, p0, Lb5/h3;->c:I

    .line 45
    .line 46
    if-le v1, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v1, p0, Lb5/h3;->e:La5/a;

    .line 59
    .line 60
    invoke-virtual {v1}, La5/a;->l()La5/h;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p2, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :cond_2
    iget p1, p0, Lb5/h3;->c:I

    .line 69
    .line 70
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method
