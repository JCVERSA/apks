.class public final Lar8;
.super Lqq0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/reflect/Member;

.field public final b:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lqq0;-><init>()V

    .line 5
    iput-object p1, p0, Lar8;->a:Ljava/lang/reflect/Member;

    .line 6
    iput-object p2, p0, Lar8;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqq0;-><init>()V

    .line 2
    iput-object p1, p0, Lar8;->a:Ljava/lang/reflect/Member;

    .line 3
    iput-object p2, p0, Lar8;->b:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lar8;->a:Ljava/lang/reflect/Member;

    invoke-static {p0}, Lu0d;->p(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lar8;->b:[Ljava/lang/Class;

    return-object p0
.end method

.method public c(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lar8;->a:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lfreemarker/ext/beans/b;Ljava/lang/Object;[Ljava/lang/Object;)Lzfa;
    .locals 0

    iget-object p0, p0, Lar8;->a:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2, p0, p3}, Lfreemarker/ext/beans/b;->y(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lar8;->a:Ljava/lang/reflect/Member;

    instance-of p0, p0, Ljava/lang/reflect/Constructor;

    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lar8;->a:Ljava/lang/reflect/Member;

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lar8;->a:Ljava/lang/reflect/Member;

    invoke-static {p0}, Lu0d;->i(Ljava/lang/reflect/Member;)Z

    move-result p0

    return p0
.end method
