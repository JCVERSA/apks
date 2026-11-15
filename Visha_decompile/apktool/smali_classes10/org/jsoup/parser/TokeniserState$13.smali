.class final enum Lorg/jsoup/parser/TokeniserState$13;
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
.method public final g(Lorg/jsoup/parser/b;Lnv0;)V
    .locals 0

    const-string p0, "</"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->k(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Ljava/lang/StringBuilder;)V

    invoke-virtual {p2}, Lnv0;->M()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method public read(Lorg/jsoup/parser/b;Lnv0;)V
    .locals 2

    invoke-virtual {p2}, Lnv0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnv0;->j()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lorg/jsoup/parser/b;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/Token$i;->v(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-virtual {p2}, Lnv0;->e()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->g(Lorg/jsoup/parser/b;Lnv0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->q()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->g(Lorg/jsoup/parser/b;Lnv0;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->g(Lorg/jsoup/parser/b;Lnv0;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->g(Lorg/jsoup/parser/b;Lnv0;)V

    :goto_0
    return-void
.end method
