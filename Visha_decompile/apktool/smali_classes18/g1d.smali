.class public Lg1d;
.super Lh1d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1d$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Lh1d;-><init>()V

    iput-object p1, p0, Lg1d;->b:Ljava/util/Set;

    iput-object p2, p0, Lg1d;->c:Ljava/util/Set;

    return-void
.end method

.method public static synthetic b(Lg1d;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lg1d;->b:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic c(Lg1d;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lg1d;->c:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg1d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lg1d;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lg1d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg1d$a;-><init>(Lg1d;Lf1d;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lg1d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object p0, p0, Lg1d;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
