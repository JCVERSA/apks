.class public final Lg72$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg72;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg72$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lg72$a;Lmgb;ZZILjava/lang/Object;)Lg72;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lg72$a;->b(Lmgb;ZZ)Lg72;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lmgb;)Z
    .locals 0

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of p0, p0, Lhcb;

    if-nez p0, :cond_0

    instance-of p0, p1, Lf07;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final b(Lmgb;ZZ)Lg72;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lg72;

    if-eqz v0, :cond_0

    check-cast p1, Lg72;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lg72$a;->d(Lmgb;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    instance-of p0, p1, Lfy3;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Lfy3;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object p3

    invoke-virtual {p3}, Leh5;->I0()Lsbb;

    move-result-object p3

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-static {p3, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, Lg72;

    invoke-static {p1}, Lky3;->c(Leh5;)Lsm9;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lsm9;->P0(Z)Lsm9;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lg72;-><init>(Lsm9;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public final d(Lmgb;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lg72$a;->a(Lmgb;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of v0, p0, Licb;

    if-eqz v0, :cond_1

    check-cast p0, Licb;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Licb;->O0()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of p0, p0, Lhcb;

    if-eqz p0, :cond_3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->l(Leh5;)Z

    move-result p0

    return p0

    :cond_3
    sget-object p0, Ll37;->a:Ll37;

    invoke-virtual {p0, p1}, Ll37;->a(Lmgb;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
