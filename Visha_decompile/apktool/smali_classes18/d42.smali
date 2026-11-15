.class public final Ld42;
.super Lh29;
.source "SourceFile"


# static fields
.field public static final h:Ld42;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld42;

    invoke-direct {v0}, Ld42;-><init>()V

    sput-object v0, Ld42;->h:Ld42;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget v1, Lkotlinx/coroutines/scheduling/a;->c:I

    sget v2, Lkotlinx/coroutines/scheduling/a;->d:I

    sget-wide v3, Lkotlinx/coroutines/scheduling/a;->e:J

    sget-object v5, Lkotlinx/coroutines/scheduling/a;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lh29;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 1

    invoke-static {p1}, Lbl5;->a(I)V

    sget v0, Lkotlinx/coroutines/scheduling/a;->c:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lbl5;->b(Lkotlinx/coroutines/c;Ljava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/c;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
