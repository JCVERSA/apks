.class public Lmn0;
.super Lll0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lll0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    :try_start_0
    new-instance v0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p2}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfreemarker/core/c;->l(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {p0, p1, p2}, Lfreemarker/core/NonNumericalException;->newMalformedNumberException(Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/core/NonNumericalException;

    move-result-object p0

    throw p0
.end method
