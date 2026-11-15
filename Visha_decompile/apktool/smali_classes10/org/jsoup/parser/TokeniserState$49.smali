.class final enum Lorg/jsoup/parser/TokeniserState$49;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/jsoup/parser/b;Lnv0;)V
    .locals 2

    invoke-virtual {p2}, Lnv0;->e()C

    move-result p2

    const-string v0, "--"

    if-eqz p2, :cond_4

    const/16 v1, 0x21

    if-eq p2, v1, :cond_3

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$d;->q(Ljava/lang/String;)Lorg/jsoup/parser/Token$d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$d;->p(C)Lorg/jsoup/parser/Token$d;

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->o()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->o()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Token$d;->p(C)Lorg/jsoup/parser/Token$d;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$d;->q(Ljava/lang/String;)Lorg/jsoup/parser/Token$d;

    move-result-object p0

    const p2, 0xfffd

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$d;->p(C)Lorg/jsoup/parser/Token$d;

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method
