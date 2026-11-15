.class public Lfreemarker/core/b0$k;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
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

    instance-of v1, v0, Lhga;

    if-nez v1, :cond_0

    instance-of v1, v0, Lffa;

    if-eqz v1, :cond_0

    check-cast v0, Lffa;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {v0, p0}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object p0

    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    return-object p1

    :cond_0
    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/t0;->W(Lzfa;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    return-object p1
.end method
