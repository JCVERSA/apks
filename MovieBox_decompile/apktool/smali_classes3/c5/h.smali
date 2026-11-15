.class public Lc5/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;


# static fields
.field public static final a:Lc5/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/h;->a:Lc5/h;

    .line 7
    .line 8
    return-void
.end method

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
.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1

    .line 1
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    invoke-static {p2}, Lc5/b;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/16 p4, 0x7d

    .line 8
    .line 9
    const-string p5, "value"

    .line 10
    .line 11
    const/16 v0, 0x7b

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-static {p2}, Lc5/c;->a(Ljava/lang/Object;)Ljava/util/concurrent/atomic/LongAdder;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lc5/d;->a(Ljava/util/concurrent/atomic/LongAdder;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    invoke-virtual {p1, v0, p5, p2, p3}, Lc5/j1;->y(CLjava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4}, Lc5/j1;->write(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p2}, Lc5/e;->a(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lc5/f;->a(Ljava/lang/Object;)Ljava/util/concurrent/atomic/DoubleAdder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Lc5/g;->a(Ljava/util/concurrent/atomic/DoubleAdder;)D

    .line 41
    .line 42
    .line 43
    move-result-wide p2

    .line 44
    invoke-virtual {p1, v0, p5, p2, p3}, Lc5/j1;->w(CLjava/lang/String;D)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p4}, Lc5/j1;->write(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
