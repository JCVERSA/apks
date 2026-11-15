.class public final Lhn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnq6;


# instance fields
.field public a:Lh75;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls65;)Lqw0;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lhn9;->b()Lh75;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh75;->b(Ls65;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lh75;
    .locals 0

    iget-object p0, p0, Lhn9;->a:Lh75;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "resolver"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lh75;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lhn9;->a:Lh75;

    return-void
.end method
