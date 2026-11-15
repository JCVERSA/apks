.class public final Ldda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkw4;


# static fields
.field public static final a:Ldda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldda;

    invoke-direct {v0}, Ldda;-><init>()V

    sput-object v0, Ldda;->a:Ldda;

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

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/c;->k()Z

    move-result p0

    return p0
.end method

.method public b(I)Lcom/transsion/mediationads/beans/TabStrategy;
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->h(I)Lcom/transsion/mediationads/beans/TabStrategy;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/c;->q()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/c;->d()V

    return-void
.end method

.method public e(I)I
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->i(I)I

    move-result p0

    return p0
.end method

.method public f(I)Z
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->l(I)Z

    move-result p0

    return p0
.end method

.method public g(I)I
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->g(I)I

    move-result p0

    return p0
.end method

.method public h(I)Z
    .locals 0

    invoke-virtual {p0}, Ldda;->i()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->m(I)Z

    move-result p0

    return p0
.end method

.method public final i()Lcom/transsion/mediationads/manager/c;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/c;->a:Lcom/transsion/mediationads/manager/c$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/c$a;->a()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    return-object p0
.end method
