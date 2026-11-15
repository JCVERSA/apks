.class public final Louh;
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
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lzvh;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Louh;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Louh;->a:Z

    invoke-static {}, Livh;->b()Livh;

    move-result-object p0

    invoke-virtual {p0, p1}, Livh;->c(Landroid/content/Context;)V

    invoke-static {}, Lbvh;->i()Lbvh;

    move-result-object p0

    invoke-virtual {p0, p1}, Levh;->d(Landroid/content/Context;)V

    invoke-static {p1}, Luvh;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lvvh;->d(Landroid/content/Context;)V

    invoke-static {p1}, Lyvh;->a(Landroid/content/Context;)V

    invoke-static {}, Lhvh;->b()Lhvh;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhvh;->c(Landroid/content/Context;)V

    invoke-static {}, Lavh;->a()Lavh;

    move-result-object p0

    invoke-virtual {p0, p1}, Lavh;->c(Landroid/content/Context;)V

    invoke-static {}, Llvh;->a()Llvh;

    move-result-object p0

    invoke-virtual {p0, p1}, Llvh;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Louh;->a:Z

    return p0
.end method
