.class final enum Lorg/jsoup/parser/TokeniserState$39;
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
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnv0;->f(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/Token$i;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->H()V

    :goto_0
    invoke-virtual {p2}, Lnv0;->e()C

    move-result p2

    if-eqz p2, :cond_5

    const v1, 0xffff

    if-eq p2, v1, :cond_4

    const/16 p0, 0x27

    const/16 v1, 0x26

    if-eq p2, v1, :cond_2

    if-eq p2, p0, :cond_1

    iget-object p0, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$i;->r(C)V

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/jsoup/parser/b;->d(Ljava/lang/Character;Z)[I

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Token$i;->t([I)V

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Token$i;->r(C)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    const p1, 0xfffd

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$i;->r(C)V

    :goto_1
    return-void
.end method
