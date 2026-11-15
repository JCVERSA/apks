.class public Lvl0;
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

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-interface {p1}, Lgga;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
