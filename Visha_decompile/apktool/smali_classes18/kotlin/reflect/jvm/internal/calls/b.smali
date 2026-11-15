.class public abstract Lkotlin/reflect/jvm/internal/calls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/calls/b$d;,
        Lkotlin/reflect/jvm/internal/calls/b$e;,
        Lkotlin/reflect/jvm/internal/calls/b$c;,
        Lkotlin/reflect/jvm/internal/calls/b$b;,
        Lkotlin/reflect/jvm/internal/calls/b$a;,
        Lkotlin/reflect/jvm/internal/calls/b$h;,
        Lkotlin/reflect/jvm/internal/calls/b$f;,
        Lkotlin/reflect/jvm/internal/calls/b$g;
    }
.end annotation


# static fields
.field public static final e:Lkotlin/reflect/jvm/internal/calls/b$d;


# instance fields
.field public final a:Ljava/lang/reflect/Member;

.field public final b:Ljava/lang/reflect/Type;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/calls/b$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/b;->e:Lkotlin/reflect/jvm/internal/calls/b$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/b;->a:Ljava/lang/reflect/Member;

    .line 4
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/b;->b:Ljava/lang/reflect/Type;

    .line 5
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/calls/b;->c:Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 6
    new-instance p1, Liv9;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Liv9;-><init>(I)V

    invoke-virtual {p1, p3}, Liv9;->a(Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Liv9;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Liv9;->c()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Liv9;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {p4}, Lhi;->c1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/b;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/calls/b;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/b;->d:Ljava/util/List;

    return-object p0
.end method

.method public final b()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/b;->a:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method public c([Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/calls/a$a;->a(Lkotlin/reflect/jvm/internal/calls/a;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/b;->a:Ljava/lang/reflect/Member;

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An object member requires the object instance passed as the first argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/b;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public final getReturnType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/b;->b:Ljava/lang/reflect/Type;

    return-object p0
.end method
