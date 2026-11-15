.class public abstract Lae3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lae3;->a:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lae3;->b:Ly7a;

    return-void
.end method

.method public static final synthetic a()Ly7a;
    .locals 1

    sget-object v0, Lae3;->b:Ly7a;

    return-object v0
.end method

.method public static final synthetic b()Ly7a;
    .locals 1

    sget-object v0, Lae3;->a:Ly7a;

    return-object v0
.end method

.method public static final c(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    :goto_0
    return-wide v0
.end method
