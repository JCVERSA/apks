.class public Lhd0;
.super Lhw2;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lhw2;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lhw2;-><init>(Lhw2;)V

    iput-object p2, p0, Lhd0;->b:Landroid/content/Context;

    iput-object p3, p0, Lhd0;->c:Landroid/net/Uri;

    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/net/Uri;)Lhw2;
    .locals 2

    new-instance v0, Lhd0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lhd0;-><init>(Lhw2;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lhd0;->b:Landroid/content/Context;

    iget-object p0, p0, Lhd0;->c:Landroid/net/Uri;

    invoke-static {v0, p0}, Ljw2;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lhd0;->b:Landroid/content/Context;

    iget-object p0, p0, Lhd0;->c:Landroid/net/Uri;

    invoke-static {v0, p0}, Ljw2;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lhd0;->b:Landroid/content/Context;

    iget-object p0, p0, Lhd0;->c:Landroid/net/Uri;

    invoke-static {v0, p0}, Ljw2;->d(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lhd0;->b:Landroid/content/Context;

    iget-object v1, p0, Lhd0;->c:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lkw2;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhd0;->c:Landroid/net/Uri;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
