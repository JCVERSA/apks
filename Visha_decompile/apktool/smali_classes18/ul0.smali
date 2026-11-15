.class public Lul0;
.super Lil0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lgga;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    invoke-interface {p1}, Lgga;->g()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
