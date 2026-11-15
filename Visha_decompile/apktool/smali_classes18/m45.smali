.class public abstract Lm45;
.super Lifa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    return-void
.end method


# virtual methods
.method public final J(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm45;->l0(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract l0(ZZ)Ljava/lang/String;
.end method

.method public final m0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lm45;->l0(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
