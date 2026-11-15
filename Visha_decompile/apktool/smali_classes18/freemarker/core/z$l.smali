.class public Lfreemarker/core/z$l;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    instance-of p1, v0, Lnga;

    if-nez p1, :cond_0

    instance-of p1, v0, Lbfa;

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p0}, Ld1d;->e(Lfreemarker/core/t1;)I

    move-result p0

    sget p1, Ld1d;->d:I

    if-lt p0, p1, :cond_2

    instance-of p0, v0, Llm9;

    if-nez p0, :cond_1

    instance-of p0, v0, Lgu7;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    :goto_1
    return-object p0
.end method
