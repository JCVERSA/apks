.class public abstract Los1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lns1;

    invoke-direct {v0, p1, p0, p2}, Lns1;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0
.end method
