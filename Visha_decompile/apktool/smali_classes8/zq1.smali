.class public Lzq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0;
.implements Lyy4;


# instance fields
.field public b:Lu1;


# direct methods
.method public constructor <init>(Lu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzq1;->b:Lu1;

    return-void
.end method


# virtual methods
.method public b()Lp1;
    .locals 0

    iget-object p0, p0, Lzq1;->b:Lu1;

    invoke-virtual {p0}, Lu1;->h()Ly0;

    move-result-object p0

    invoke-static {p0}, Lvq1;->a(Ly0;)Lyq1;

    move-result-object p0

    return-object p0
.end method

.method public j()Lp1;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lzq1;->b()Lp1;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
