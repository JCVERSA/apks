.class public Lorg/jsoup/nodes/Element;
.super Lorg/jsoup/nodes/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Element$NodeList;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/List;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/lang/String;


# instance fields
.field public e:Ltda;

.field public f:Ljava/lang/ref/WeakReference;

.field public g:Ljava/util/List;

.field public h:Lorg/jsoup/nodes/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->i:Ljava/util/List;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->j:Ljava/util/regex/Pattern;

    const-string v0, "baseUri"

    invoke-static {v0}, Lorg/jsoup/nodes/b;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltda;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method public constructor <init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/g;-><init>()V

    .line 2
    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lorg/jsoup/nodes/g;->d:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    .line 5
    iput-object p1, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/g;->W(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static O0(Lorg/jsoup/nodes/Element;Ljava/util/List;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b1(Lorg/jsoup/nodes/g;)Z
    .locals 4

    instance-of v0, p0, Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lorg/jsoup/nodes/Element;

    move v0, v1

    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {v2}, Ltda;->l()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method

.method public static synthetic d0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/j;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->m0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method public static synthetic e0(Lorg/jsoup/nodes/Element;)Ltda;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    return-object p0
.end method

.method public static f0(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->l1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->f0(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V

    :cond_0
    return-void
.end method

.method public static g1(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static m0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/j;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/j;->h0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v1}, Lorg/jsoup/nodes/Element;->b1(Lorg/jsoup/nodes/g;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lorg/jsoup/nodes/c;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lm0a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public static n0(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p0}, Ltda;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/StringBuilder;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public A0()I
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->O0(Lorg/jsoup/nodes/Element;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public B0()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public C0()Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$a;

    invoke-direct {v0}, Lorg/jsoup/select/c$a;-><init>()V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public D0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/select/c$p;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$p;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public E()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p0}, Ltda;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public E0(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/jsoup/select/c$b;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public F()V
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/g;->F()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public F0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$e;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/select/c$k;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$k;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    invoke-static {p1}, Ldnb;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lv17;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/jsoup/select/c$j0;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$j0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/Element;->S0(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/Element;->T0(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/g;->B(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/g;->B(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_1
    :goto_0
    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->l1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p2, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/b;->v(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    iget-object p2, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p2}, Ltda;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p2, p3, :cond_3

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p0}, Ltda;->f()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_3
    const-string p0, " />"

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public I0(Ljava/lang/String;)Z
    .locals 12

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "class"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v1, :cond_7

    if-ge v1, v8, :cond_1

    goto :goto_2

    :cond_1
    if-ne v1, v8, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    move v2, v0

    move v9, v2

    move v10, v9

    :goto_0
    if-ge v10, v1, :cond_6

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    const/4 v11, 0x1

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    sub-int v2, v10, v9

    if-ne v2, v8, :cond_3

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v9

    move-object v5, p1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    return v11

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    move v9, v10

    move v2, v11

    :cond_5
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    sub-int/2addr v1, v9

    if-ne v1, v8, :cond_7

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v9

    move-object v5, p1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method public J(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {v0}, Ltda;->j()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {v0}, Ltda;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/j;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/g;->B(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string p2, "</"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->l1()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    const/16 p1, 0x3e

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public J0()Z
    .locals 3

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    instance-of v1, v0, Lorg/jsoup/nodes/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/jsoup/nodes/j;

    invoke-virtual {v0}, Lorg/jsoup/nodes/j;->i0()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_1
    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public K0(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/g;->H(Ljava/lang/Appendable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic L()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public L0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->K0(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public M0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->B0()Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->j0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public N0()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    if-eqz p0, :cond_0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public P0(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;
    .locals 3

    const-string v0, "Children collection to be inserted must not be null."

    invoke-static {p2, v0}, Ldnb;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->p()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "Insert position out of bounds."

    invoke-static {v0, v2}, Ldnb;->d(ZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array p2, v1, [Lorg/jsoup/nodes/g;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/g;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/g;->c(I[Lorg/jsoup/nodes/g;)V

    return-object p0
.end method

.method public Q0(Lorg/jsoup/select/c;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->f1()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    return p0
.end method

.method public R0()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p0}, Ltda;->e()Z

    move-result p0

    return p0
.end method

.method public final S0(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {v0}, Ltda;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object p0

    invoke-virtual {p0}, Ltda;->c()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final T0(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v0

    invoke-virtual {v0}, Ltda;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v0

    invoke-virtual {v0}, Ltda;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->R0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->N()Lorg/jsoup/nodes/g;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->h()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public U0()Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->O0(Lorg/jsoup/nodes/Element;Ljava/util/List;)I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 p0, p0, 0x1

    if-le v2, p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic V()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->f1()Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public V0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p0}, Ltda;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public W0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->X0(Ljava/lang/StringBuilder;)V

    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final X0(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    instance-of v1, v0, Lorg/jsoup/nodes/j;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/jsoup/nodes/j;

    invoke-static {p1, v0}, Lorg/jsoup/nodes/Element;->m0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/j;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-static {v0, p1}, Lorg/jsoup/nodes/Element;->n0(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final Y0()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public Z0()Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->f0(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V

    return-object v0
.end method

.method public a1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Ldx7;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jsoup/nodes/g;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/g;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->c(I[Lorg/jsoup/nodes/g;)V

    return-object p0
.end method

.method public c1()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->O0(Lorg/jsoup/nodes/Element;Ljava/util/List;)I

    move-result p0

    if-lez p0, :cond_1

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->x0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public d1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->Q(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public e1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->v0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->w0(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public f1()Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/g;->V()Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public g0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->v0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->w0(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public h0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->f(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 0

    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->c(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->g(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public i1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->e(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public j()Lorg/jsoup/nodes/b;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public j0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Ldx7;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jsoup/nodes/g;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/g;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->d([Lorg/jsoup/nodes/g;)V

    return-object p0
.end method

.method public j1()Lorg/jsoup/select/Elements;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    if-nez v0, :cond_0

    new-instance p0, Lorg/jsoup/select/Elements;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/select/Elements;-><init>(I)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-eq v2, p0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->S(Lorg/jsoup/nodes/g;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->w()Ljava/util/List;

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/g;->Y(I)V

    return-object p0
.end method

.method public k1()Ltda;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Element;->k:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->g1(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v1

    invoke-virtual {v1}, Ldx7;->g()Ltw7;

    move-result-object v1

    invoke-static {p1, v1}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public l1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    invoke-virtual {p0}, Ltda;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    const-string v0, "Tag name must not be empty."

    invoke-static {p1, v0}, Ldnb;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/jsoup/nodes/h;->b(Lorg/jsoup/nodes/g;)Ldx7;

    move-result-object v0

    invoke-virtual {v0}, Ldx7;->g()Ltw7;

    move-result-object v0

    invoke-static {p1, v0}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Element;->e:Ltda;

    return-object p0
.end method

.method public n1()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/Element$a;

    invoke-direct {v1, p0, v0}, Lorg/jsoup/nodes/Element$a;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/d;->c(Li17;Lorg/jsoup/nodes/g;)V

    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/g;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public o1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->B0()Lorg/jsoup/nodes/Element;

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->K()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->y1()Ldx7;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldx7;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/e;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/j;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method

.method public p()I
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public p0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->m(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public p1()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    instance-of v2, v1, Lorg/jsoup/nodes/j;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/jsoup/nodes/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->n(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public q1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->v0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->w0(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public r0(I)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public r1()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic s()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->x0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public s0()Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->p()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/jsoup/nodes/Element;->i:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/g;

    instance-of v4, v3, Lorg/jsoup/nodes/Element;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->f:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public s1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->o1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->o0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->z0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public t0()Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public t1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->c0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object p0

    sget-object v0, Lorg/jsoup/nodes/Element;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    return-void
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic v()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->B0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public v0()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Element;->j:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->u0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const-string p0, ""

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/g;->d:Ljava/util/List;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/nodes/Element$NodeList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Element$NodeList;-><init>(Lorg/jsoup/nodes/Element;I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    return-object p0
.end method

.method public w0(Ljava/util/Set;)Lorg/jsoup/nodes/Element;
    .locals 3

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "class"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/b;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    const-string v2, " "

    invoke-static {p1, v2}, Lm0a;->j(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :goto_0
    return-object p0
.end method

.method public x0()Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/g;->s()Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public y0()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    instance-of v2, v1, Lorg/jsoup/nodes/e;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/jsoup/nodes/e;

    invoke-virtual {v1}, Lorg/jsoup/nodes/e;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/jsoup/nodes/d;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/jsoup/nodes/d;

    invoke-virtual {v1}, Lorg/jsoup/nodes/d;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lorg/jsoup/nodes/c;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/jsoup/nodes/c;

    invoke-virtual {v1}, Lorg/jsoup/nodes/j;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public z0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->o()Lorg/jsoup/nodes/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/nodes/b;

    new-instance v0, Lorg/jsoup/nodes/Element$NodeList;

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element$NodeList;-><init>(Lorg/jsoup/nodes/Element;I)V

    iput-object v0, p1, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method
