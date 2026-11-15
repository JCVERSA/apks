.class public abstract Lvz/t;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected final a:I

.field protected b:Lvz/t;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lvz/t;-><init>(ILvz/t;)V

    return-void
.end method

.method public constructor <init>(ILvz/t;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput p1, p0, Lvz/t;->a:I

    .line 5
    iput-object p2, p0, Lvz/t;->b:Lvz/t;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public varargs abstract b(Ljava/lang/String;I[Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public varargs abstract d(Ljava/lang/String;I[Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public varargs abstract f(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract g(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract h(Ljava/lang/String;)V
.end method
