.class public Ln5i;
.super Lu3i;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lw2i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu3i;-><init>(Ljava/util/Collection;Lw2i;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ls5i;->d(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Ls5i;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
