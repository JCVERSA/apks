.class public final Lls8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lls8;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lls8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lls8;-><init>(Z)V

    sput-object v0, Lls8;->b:Lls8;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lls8;->a:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lls8;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lls8;

    iget-boolean p0, p0, Lls8;->a:Z

    iget-boolean p1, p1, Lls8;->a:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lls8;->a:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
