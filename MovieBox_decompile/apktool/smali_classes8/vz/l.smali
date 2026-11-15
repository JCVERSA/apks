.class public abstract Lvz/l;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected final a:I

.field protected b:Lvz/l;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lvz/l;-><init>(ILvz/l;)V

    return-void
.end method

.method public constructor <init>(ILvz/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

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
    iput p1, p0, Lvz/l;->a:I

    .line 5
    iput-object p2, p0, Lvz/l;->b:Lvz/l;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Z)Lvz/a;
.end method

.method public abstract b(Lvz/c;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(ILvz/z;Ljava/lang/String;Z)Lvz/a;
.end method
