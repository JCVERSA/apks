.class public abstract Lqk5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk5$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Lqk5$a;Lic1;)Lok5;
    .locals 0

    invoke-static {p0, p1, p2}, Lqk5;->d(Ljava/lang/String;Lqk5$a;Lic1;)Lok5;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lzb1;
    .locals 0

    invoke-static {p0, p1}, Lok5;->a(Ljava/lang/String;Ljava/lang/String;)Lok5;

    move-result-object p0

    const-class p1, Lok5;

    invoke-static {p0, p1}, Lzb1;->l(Ljava/lang/Object;Ljava/lang/Class;)Lzb1;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Lqk5$a;)Lzb1;
    .locals 2

    const-class v0, Lok5;

    invoke-static {v0}, Lzb1;->m(Ljava/lang/Class;)Lzb1$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    new-instance v1, Lpk5;

    invoke-direct {v1, p0, p1}, Lpk5;-><init>(Ljava/lang/String;Lqk5$a;)V

    invoke-virtual {v0, v1}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lqk5$a;Lic1;)Lok5;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, Lqk5$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lok5;->a(Ljava/lang/String;Ljava/lang/String;)Lok5;

    move-result-object p0

    return-object p0
.end method
