.class public Lc5/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/u$a;
    }
.end annotation


# static fields
.field public static final a:Lc5/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/u;->a:Lc5/u;

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
.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 8
    .line 9
    const/16 p4, 0x7b

    .line 10
    .line 11
    invoke-virtual {p1, p4}, Lc5/j1;->write(I)V

    .line 12
    .line 13
    .line 14
    const-string p4, "array"

    .line 15
    .line 16
    invoke-virtual {p1, p4}, Lc5/j1;->u(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc5/j1;->r([B)V

    .line 20
    .line 21
    .line 22
    const-string p3, "limit"

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    const/16 p5, 0x2c

    .line 29
    .line 30
    invoke-virtual {p1, p5, p3, p4}, Lc5/j1;->x(CLjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string p3, "position"

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p5, p3, p2}, Lc5/j1;->x(CLjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x7d

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lc5/j1;->write(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p2, Lc5/u$a;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, La5/a;->j0(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc5/u$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lc5/u$a;->a()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
