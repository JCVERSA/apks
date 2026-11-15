.class final enum Lorg/jsoup/parser/TokeniserState$51;
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

    invoke-virtual {p2}, Lnv0;->e()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/TokeniserState;)V

    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->g()V

    iget-object p0, p1, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/jsoup/parser/Token$e;->f:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->p()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method
