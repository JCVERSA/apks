.class public Lfreemarker/core/z$y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmga;
.implements Lofa;
.implements Lxfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z$y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/Number;

.field public final c:Lfreemarker/core/Environment;

.field public final d:Ljava/text/NumberFormat;

.field public e:Ljava/lang/String;

.field public final synthetic f:Lfreemarker/core/z$y;


# direct methods
.method public constructor <init>(Lfreemarker/core/z$y;Ljava/lang/Number;Lfreemarker/core/Environment;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/z$y$c;->f:Lfreemarker/core/z$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/z$y$c;->b:Ljava/lang/Number;

    iput-object p3, p0, Lfreemarker/core/z$y$c;->c:Lfreemarker/core/Environment;

    invoke-virtual {p3}, Lfreemarker/core/Configurable;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lfreemarker/core/Environment;->Z0(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/z$y$c;->d:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$y$c;->f:Lfreemarker/core/z$y;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/z$y$c;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/core/z$y$c;->c:Lfreemarker/core/Environment;

    invoke-virtual {v1, p1}, Lfreemarker/core/Environment;->Z0(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p1

    iget-object p0, p0, Lfreemarker/core/z$y$c;->b:Ljava/lang/Number;

    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$y$c;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/z$y$c;->d:Ljava/text/NumberFormat;

    iget-object v1, p0, Lfreemarker/core/z$y$c;->b:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/z$y$c;->e:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/z$y$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
