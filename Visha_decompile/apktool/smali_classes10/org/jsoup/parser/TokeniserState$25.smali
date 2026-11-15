.class final enum Lorg/jsoup/parser/TokeniserState$25;
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

    invoke-virtual {p2}, Lnv0;->D()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->i()V

    iget-object p0, p1, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnv0;->t()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "<"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->k(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnv0;->t()C

    move-result p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->j(C)V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lnv0;->z(C)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/b;->i()V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->j(C)V

    sget-object p0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method
