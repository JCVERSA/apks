.class public Lfreemarker/core/z$d;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/z$d$a;
    }
.end annotation


# instance fields
.field public final k:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    iput p1, p0, Lfreemarker/core/z$d;->k:I

    return-void
.end method

.method public static synthetic h0(Lfreemarker/core/z$d;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/z$d;->k:I

    return p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lffa;

    if-eqz v1, :cond_3

    move-object p1, v0

    check-cast p1, Lffa;

    invoke-interface {p1}, Lffa;->j()I

    move-result v1

    iget v2, p0, Lfreemarker/core/z$d;->k:I

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v1, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    sget-object v0, Lffa;->W4:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/z$d;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Cannot convert "

    const-string v3, " to "

    filled-new-array {v2, v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lam9;

    invoke-interface {p1}, Lffa;->f()Ljava/util/Date;

    move-result-object p1

    iget p0, p0, Lfreemarker/core/z$d;->k:I

    invoke-direct {v0, p1, p0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-object v0

    :cond_3
    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfreemarker/core/z$d$a;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/z$d$a;-><init>(Lfreemarker/core/z$d;Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-object v1
.end method
