.class Lq3/e$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field private final a:Lq3/e$c;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq3/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lq3/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq3/e$b;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lq3/e$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lq3/e$b;->a:Lq3/e$c;

    .line 4
    iput p2, p0, Lq3/e$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lq3/e$c;ILq3/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/e$b;-><init>(Lq3/e$c;I)V

    return-void
.end method

.method public static synthetic a(Lq3/e$b;Lq3/e$b;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq3/e$b;->e(Lq3/e$b;Lq3/e$b;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lq3/e$b;->c:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lq3/e$b;)Lq3/e$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lq3/e$b;->a:Lq3/e$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lq3/e$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lq3/e$b;->b:I

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic e(Lq3/e$b;Lq3/e$b;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lq3/e$b;->a:Lq3/e$c;

    .line 2
    .line 3
    iget p0, p0, Lq3/e$c;->b:I

    .line 4
    .line 5
    iget-object p1, p1, Lq3/e$b;->a:Lq3/e$c;

    .line 6
    .line 7
    iget p1, p1, Lq3/e$c;->b:I

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
