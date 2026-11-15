.class public abstract Lhsb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/ArrayList;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lhsb;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lhsb;->b:I

    const/4 v1, 0x1

    invoke-static {v1}, Lhsb;->a(I)V

    invoke-static {v0}, Lhsb;->a(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lhsb;->a(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lhsb;->a(I)V

    return-void
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Lhsb;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lhsb;->b:I

    return v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lhsb;->b:I

    invoke-static {v0}, Lhsb;->d(I)I

    move-result v0

    sput v0, Lhsb;->b:I

    return v0
.end method

.method public static d(I)I
    .locals 2

    sget-object v0, Lhsb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    sget-object v0, Lhsb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    sget-object p0, Lhsb;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    sget-object v0, Lhsb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lhsb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object p0, Lhsb;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public static e(I)V
    .locals 0

    sput p0, Lhsb;->b:I

    return-void
.end method
