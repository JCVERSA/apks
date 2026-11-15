.class public abstract Lpea;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lqea;
    .locals 1

    sget-object v0, Lrea;->c:Lrea;

    invoke-static {p0, v0}, Lpea;->b(Landroid/content/Context;Lrea;)Lqea;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lrea;)Lqea;
    .locals 1

    new-instance v0, Lf2e;

    invoke-direct {v0, p0, p1}, Lf2e;-><init>(Landroid/content/Context;Lrea;)V

    return-object v0
.end method
