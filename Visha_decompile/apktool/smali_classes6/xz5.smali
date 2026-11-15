.class public abstract Lxz5;
.super Lhb0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxz5$a;
    }
.end annotation


# static fields
.field public static a:Lxz5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxz5$a;

    invoke-direct {v0}, Lxz5$a;-><init>()V

    sput-object v0, Lxz5;->a:Lxz5$a;

    return-void
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lxz5;->a:Lxz5$a;

    const/4 v1, 0x0

    iput v1, v0, Lxz5$a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lxz5$a;->a:J

    return-void
.end method

.method public static c(IJJ)V
    .locals 0

    return-void
.end method

.method public static d()V
    .locals 7

    sget-object v0, Lxz5;->a:Lxz5$a;

    iget v1, v0, Lxz5$a;->b:I

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lxz5;->a:Lxz5$a;

    iget-wide v5, v5, Lxz5$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lxz5$a;->b:I

    return-void
.end method

.method public static e()V
    .locals 3

    sget-object v0, Lxz5;->a:Lxz5$a;

    const/4 v1, 0x0

    iput v1, v0, Lxz5$a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lxz5$a;->a:J

    return-void
.end method

.method public static f(IJJ)V
    .locals 5

    sget-object p0, Lxz5;->a:Lxz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lxz5;->a:Lxz5$a;

    iget-wide v3, v2, Lxz5$a;->a:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lxz5$a;->b:I

    iput-wide p1, v2, Lxz5$a;->c:J

    iput-wide p3, v2, Lxz5$a;->d:J

    iget p0, v2, Lxz5$a;->b:I

    invoke-static {p0, p1, p2, p3, p4}, Lxz5;->c(IJJ)V

    sget-object p0, Lxz5;->a:Lxz5$a;

    const/4 p1, 0x0

    iput p1, p0, Lxz5$a;->b:I

    return-void
.end method
