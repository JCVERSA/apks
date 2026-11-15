.class public final Loo1$i;
.super Lrqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrqc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lt43;
    .locals 0

    new-instance p0, Ll89;

    invoke-direct {p0}, Ll89;-><init>()V

    invoke-static {p0}, Loo1;->a(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public b()Lqqc;
    .locals 6

    invoke-virtual {p0}, Lrqc;->c()Lt43;

    move-result-object v1

    const-string p0, "0402FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE80289070FB05D38FF58321F2E800536D538CCDAA3D9"

    invoke-static {v1, p0}, Loo1;->b(Lt43;Ljava/lang/String;)Lsqc;

    move-result-object v2

    new-instance p0, Lqqc;

    invoke-virtual {v1}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lt43;->o()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method
