.class public abstract Lx/x;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/x$a;
    }
.end annotation


# static fields
.field public static final a:Lx/x$a;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx/x$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lx/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx/x;->a:Lx/x$a;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lx/x;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lx/x;->b:I

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-static {v0}, Lx/x;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Lx/x;->c:I

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-static {v0}, Lx/x;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sput v0, Lx/x;->d:I

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-static {v0}, Lx/x;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Lx/x;->e:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lx/x;->b(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sput v0, Lx/x;->f:I

    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Lx/x;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static b(I)I
    .locals 0

    .line 1
    return p0
.end method
