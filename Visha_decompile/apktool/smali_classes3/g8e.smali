.class public final Lg8e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lg8e;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lg8e;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lg8e;-><init>(IJJ)V

    sput-object v6, Lg8e;->d:Lg8e;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg8e;->a:I

    iput-wide p2, p0, Lg8e;->b:J

    iput-wide p4, p0, Lg8e;->c:J

    return-void
.end method

.method public static bridge synthetic a(Lg8e;)I
    .locals 0

    iget p0, p0, Lg8e;->a:I

    return p0
.end method

.method public static bridge synthetic b(Lg8e;)J
    .locals 2

    iget-wide v0, p0, Lg8e;->c:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lg8e;)J
    .locals 2

    iget-wide v0, p0, Lg8e;->b:J

    return-wide v0
.end method

.method public static d(JJ)Lg8e;
    .locals 7

    new-instance v6, Lg8e;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lg8e;-><init>(IJJ)V

    return-object v6
.end method

.method public static e(J)Lg8e;
    .locals 7

    new-instance v6, Lg8e;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lg8e;-><init>(IJJ)V

    return-object v6
.end method

.method public static f(JJ)Lg8e;
    .locals 7

    new-instance v6, Lg8e;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lg8e;-><init>(IJJ)V

    return-object v6
.end method
