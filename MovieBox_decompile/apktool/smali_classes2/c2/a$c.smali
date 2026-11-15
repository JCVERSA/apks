.class public final Lc2/a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc2/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final b:Lc2/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc2/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lc2/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc2/a$c;->b:Lc2/a$b;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c([BI)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc2/a$c;->e([BI)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic e([BI)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc2/a;->t([BI)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/common/r;)I
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/media3/common/util/a1;->E0(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    return p1

    .line 32
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 33
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public bridge synthetic b()Lc2/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc2/a$c;->d()Lc2/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Lc2/a;
    .locals 3

    .line 1
    new-instance v0, Lc2/a;

    .line 2
    .line 3
    iget-object v1, p0, Lc2/a$c;->b:Lc2/a$b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lc2/a;-><init>(Lc2/a$b;Lc2/a$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
