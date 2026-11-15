.class public Lkn0;
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

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lfreemarker/core/Configurable;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lfreemarker/core/Configurable;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_2
    return-object p0

    :cond_3
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "Can\'t convert this string to boolean: "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0
.end method
