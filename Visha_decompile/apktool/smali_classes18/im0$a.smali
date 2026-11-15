.class public Lim0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final synthetic c:Lim0;


# direct methods
.method public constructor <init>(Lim0;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lim0$a;->c:Lim0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lim0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lim0;Ljava/lang/String;Lam0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lim0$a;-><init>(Lim0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lim0$a;->c:Lim0;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    iget-object v1, p0, Lim0$a;->c:Lim0;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lim0$a;->c:Lim0;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/j;->b0(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget-object v2, p0, Lim0$a;->c:Lim0;

    invoke-static {v2}, Lim0;->h0(Lim0;)Z

    move-result v2

    iget-object p0, p0, Lim0$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    invoke-direct {v0, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object v0

    :cond_1
    new-instance p1, Lfreemarker/template/SimpleNumber;

    iget-object v0, p0, Lim0$a;->c:Lim0;

    invoke-static {v0}, Lim0;->h0(Lim0;)Z

    move-result v0

    iget-object p0, p0, Lim0$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    :goto_1
    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1
.end method
