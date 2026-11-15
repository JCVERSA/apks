.class public final Lfl0;
.super Lsi1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfl0$d;,
        Lfl0$a;,
        Lfl0$c;,
        Lfl0$b;,
        Lfl0$e;,
        Lfl0$f;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsi1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0

    const-class p0, Lokhttp3/RequestBody;

    invoke-static {p1}, Lulb;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfl0$b;->a:Lfl0$b;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0

    const-class p0, Lokhttp3/ResponseBody;

    if-ne p1, p0, :cond_1

    const-class p0, Lwy9;

    invoke-static {p2, p0}, Lulb;->l([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfl0$c;->a:Lfl0$c;

    goto :goto_0

    :cond_0
    sget-object p0, Lfl0$a;->a:Lfl0$a;

    :goto_0
    return-object p0

    :cond_1
    const-class p0, Ljava/lang/Void;

    if-ne p1, p0, :cond_2

    sget-object p0, Lfl0$f;->a:Lfl0$f;

    return-object p0

    :cond_2
    invoke-static {p1}, Lulb;->m(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lfl0$e;->a:Lfl0$e;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
