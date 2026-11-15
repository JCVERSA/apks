.class public Lcom/transsion/json/b/b;
.super Lcom/transsion/json/b/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/json/b/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/json/h;->G()Lcom/transsion/json/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/json/u;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/transsion/json/h;->E()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/json/u;->d()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/transsion/json/h;->j(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/transsion/json/h;->C()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
