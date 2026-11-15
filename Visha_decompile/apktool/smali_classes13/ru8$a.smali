.class public Lru8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru8;->b(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final b:[Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Lru8;


# direct methods
.method public constructor <init>(Lru8;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lru8$a;->d:Lru8;

    iput-object p2, p0, Lru8$a;->c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lru8$a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lru8$a;->b:[Ljava/lang/Object;

    :goto_0
    sget-object v0, Lu18;->b:Lyq8;

    invoke-virtual {v0, p2}, Lyq8;->c(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lru8$a;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2, p0, p1, p3}, Lyq8;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lru8$a;->d:Lru8;

    iget-object p0, p0, Lru8$a;->c:Ljava/lang/Class;

    invoke-virtual {v0, p0, p2}, Lru8;->c(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lfe9;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lfe9;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
