.class final enum Lorg/jsoup/parser/TokeniserState$54;
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

    invoke-virtual {p2}, Lnv0;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$e;->f:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->p()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lnv0;->B([C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lnv0;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lnv0;->z(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->p()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lnv0;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p1, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    iput-object v0, p0, Lorg/jsoup/parser/Token$e;->c:Ljava/lang/String;

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lnv0;->y(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p1, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    iput-object v0, p0, Lorg/jsoup/parser/Token$e;->c:Ljava/lang/String;

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p0, p1, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/Token$e;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$e;->f:Z

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
