.class public Lxl0;
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
    .locals 1

    invoke-interface {p1}, Lgga;->a()Lgga;

    move-result-object p0

    :goto_0
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lgga;->a()Lgga;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method
