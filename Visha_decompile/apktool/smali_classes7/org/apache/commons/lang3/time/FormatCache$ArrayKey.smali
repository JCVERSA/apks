.class final Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayKey"
.end annotation


# instance fields
.field private final hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->computeHashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->hashCode:I

    return-void
.end method

.method private static computeHashCode([Ljava/lang/Object;)I
    .locals 1

    const/16 v0, 0x1f

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;

    if-eq v2, v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->hashCode:I

    return p0
.end method
