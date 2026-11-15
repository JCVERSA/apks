.class public final Lsab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsw4;


# static fields
.field public static final a:Lsab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsab;

    invoke-direct {v0}, Lsab;-><init>()V

    sput-object v0, Lsab;->a:Lsab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    invoke-virtual {p0}, Lsab;->f()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->j()Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    invoke-virtual {p0}, Lsab;->f()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->p()Z

    move-result p0

    return p0
.end method

.method public c(I)Z
    .locals 0

    invoke-virtual {p0}, Lsab;->f()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/d;->k(I)Z

    move-result p0

    return p0
.end method

.method public d()I
    .locals 0

    invoke-virtual {p0}, Lsab;->f()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->g()I

    move-result p0

    return p0
.end method

.method public e()Lcom/transsion/mediationads/beans/TTStrategy;
    .locals 0

    invoke-virtual {p0}, Lsab;->f()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->f()Lcom/transsion/mediationads/beans/TTStrategy;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/transsion/mediationads/manager/d;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/d;->f:Lcom/transsion/mediationads/manager/d$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d$a;->a()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    return-object p0
.end method
