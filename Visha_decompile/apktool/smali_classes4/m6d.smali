.class public Lm6d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "1.5.4-Hisavana"

    return-object p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lm6d;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lm6d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm6d;->c(Z)V

    invoke-static {}, Lwid;->d()Lwid;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwid;->b(Landroid/content/Context;)V

    invoke-static {}, Lu6d;->k()Lu6d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr9d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lt1d;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lk8d;->d(Landroid/content/Context;)V

    invoke-static {p1}, Lrad;->c(Landroid/content/Context;)V

    invoke-static {}, Lzfd;->c()Lzfd;

    move-result-object p0

    invoke-virtual {p0, p1}, Lzfd;->b(Landroid/content/Context;)V

    invoke-static {}, Li3d;->a()Li3d;

    move-result-object p0

    invoke-virtual {p0, p1}, Li3d;->b(Landroid/content/Context;)V

    invoke-static {}, Lnjd;->f()Lnjd;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnjd;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lm6d;->a:Z

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 0

    const-string p0, "Application Context cannot be null"

    invoke-static {p1, p0}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lm6d;->a:Z

    return p0
.end method
