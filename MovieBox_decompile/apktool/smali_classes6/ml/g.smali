.class public Lml/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/json/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/json/m;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of p4, p2, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p3, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p4, Lcom/transsion/json/k;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aput-object p1, v0, v1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    aput-object p2, v0, p1

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p3, v0, p1

    .line 33
    .line 34
    const-string p1, "%s:  Don\'t know how to convert %s to enumerated constant of %s"

    .line 35
    .line 36
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p4, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p4
.end method
