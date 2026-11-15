.class public final Lbd1;
.super Lad1;
.source "SourceFile"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lsc5;Z)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lad1;-><init>(Lsc5;)V

    iput-boolean p2, p0, Lbd1;->c:Z

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lbd1;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lad1;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lad1;->j(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
