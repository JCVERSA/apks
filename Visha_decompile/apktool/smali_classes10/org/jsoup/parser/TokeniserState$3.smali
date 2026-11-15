.class final enum Lorg/jsoup/parser/TokeniserState$3;
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
    .locals 1

    invoke-virtual {p2}, Lnv0;->t()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x26

    if-eq v0, p0, :cond_2

    const/16 p0, 0x3c

    if-eq v0, p0, :cond_1

    const p0, 0xffff

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Lnv0;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jsoup/parser/Token$f;

    invoke-direct {p0}, Lorg/jsoup/parser/Token$f;-><init>()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lnv0;->a()V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->j(C)V

    :goto_0
    return-void
.end method
