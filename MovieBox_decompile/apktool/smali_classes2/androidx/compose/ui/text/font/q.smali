.class public final Landroidx/compose/ui/text/font/q;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Landroidx/compose/ui/text/font/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/q;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/font/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/font/q;->a:Landroidx/compose/ui/text/font/q;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/text/font/r;->a:Landroidx/compose/ui/text/font/r;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/font/r;->a(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method
