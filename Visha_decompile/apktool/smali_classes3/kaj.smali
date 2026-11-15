.class public final Lkaj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lkaj;

.field public static final d:Lkaj;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkaj;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lkaj;-><init>(JJ)V

    sput-object v0, Lkaj;->c:Lkaj;

    new-instance v3, Lkaj;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Lkaj;-><init>(JJ)V

    new-instance v3, Lkaj;

    invoke-direct {v3, v4, v5, v1, v2}, Lkaj;-><init>(JJ)V

    new-instance v3, Lkaj;

    invoke-direct {v3, v1, v2, v4, v5}, Lkaj;-><init>(JJ)V

    sput-object v0, Lkaj;->d:Lkaj;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ln7g;->d(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ln7g;->d(Z)V

    iput-wide p1, p0, Lkaj;->a:J

    iput-wide p3, p0, Lkaj;->b:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lkaj;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkaj;

    iget-wide v2, p0, Lkaj;->a:J

    iget-wide v4, p1, Lkaj;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lkaj;->b:J

    iget-wide p0, p1, Lkaj;->b:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lkaj;->a:J

    long-to-int v0, v0

    iget-wide v1, p0, Lkaj;->b:J

    mul-int/lit8 v0, v0, 0x1f

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
