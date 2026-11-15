.class public final La3/f;
.super La3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/f$c;,
        La3/f$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La3/b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, La3/f;->a:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method static b(Landroidx/media3/common/util/j0;)La3/f;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, La3/f$c;->a(Landroidx/media3/common/util/j0;)La3/f$c;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, La3/f;

    .line 24
    .line 25
    invoke-direct {p0, v1}, La3/f;-><init>(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method
