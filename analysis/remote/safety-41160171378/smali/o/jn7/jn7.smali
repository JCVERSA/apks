.class public abstract Lo/jn7;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v8, 0x0

    aput-object v1, v0, v8

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    aput-object v6, v0, v2

    aput-object v7, v0, v4

    invoke-static {v0}, Lo/xu0;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/jn7;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(ZZ)I
    .locals 1

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x5

    move v0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final b(I)I
    .locals 2

    invoke-static {p0}, Lo/jn7;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 p0, 0x4e4

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const/4 v1, 0x5

    const/16 p0, 0x4e5

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    const/16 p0, 0x4ed

    :goto_0
    return p0
.end method

.method public static final c(I)Z
    .locals 2

    const/4 v1, 0x3

    sget-object v0, Lo/jn7;->a:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    return p0
.end method
