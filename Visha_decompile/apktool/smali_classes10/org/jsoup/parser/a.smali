.class public Lorg/jsoup/parser/a;
.super Lorg/jsoup/parser/c;
.source "SourceFile"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;

.field public static final x:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public k:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public l:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public m:Z

.field public n:Lorg/jsoup/nodes/Element;

.field public o:Lx34;

.field public p:Lorg/jsoup/nodes/Element;

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/List;

.field public s:Lorg/jsoup/parser/Token$g;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    const-string v6, "td"

    const-string v7, "th"

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->x:[Ljava/lang/String;

    const-string v0, "ol"

    const-string v1, "ul"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->y:[Ljava/lang/String;

    const-string v0, "button"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->z:[Ljava/lang/String;

    const-string v0, "html"

    const-string v1, "table"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->A:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->B:[Ljava/lang/String;

    const-string v7, "rp"

    const-string v8, "rt"

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "optgroup"

    const-string v5, "option"

    const-string v6, "p"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->C:[Ljava/lang/String;

    const-string v78, "wbr"

    const-string v79, "xmp"

    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string v63, "script"

    const-string v64, "section"

    const-string v65, "select"

    const-string v66, "style"

    const-string v67, "summary"

    const-string v68, "table"

    const-string v69, "tbody"

    const-string v70, "td"

    const-string v71, "textarea"

    const-string v72, "tfoot"

    const-string v73, "th"

    const-string v74, "thead"

    const-string v75, "title"

    const-string v76, "tr"

    const-string v77, "ul"

    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/a;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/c;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/a;->w:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public A0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lorg/jsoup/parser/a;->B0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method public B()Lorg/jsoup/nodes/Document;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public final B0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ldnb;->c(Z)V

    invoke-virtual {p1, p0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public C()Lx34;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/a;->o:Lx34;

    return-object p0
.end method

.method public C0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lorg/jsoup/parser/a;->B0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method public D(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 4

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public D0()V
    .locals 5

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1
    :goto_1
    if-lt v1, v0, :cond_14

    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-nez v1, :cond_3

    iget-boolean v3, p0, Lorg/jsoup/parser/a;->v:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/a;->p:Lorg/jsoup/nodes/Element;

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    const-string v4, "select"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_6

    :cond_5
    const-string v4, "td"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "th"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    goto/16 :goto_5

    :cond_6
    const-string v4, "tr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_6

    :cond_7
    const-string v4, "tbody"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "thead"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "tfoot"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_4

    :cond_8
    const-string v4, "caption"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_6

    :cond_9
    const-string v4, "colgroup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_6

    :cond_a
    const-string v4, "table"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_b
    const-string v4, "head"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v3, :cond_c

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_c
    const-string v4, "body"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_d
    const-string v4, "frameset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_e
    const-string v4, "html"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_f

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_3

    :cond_f
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    :goto_3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_10
    if-eqz v3, :cond_11

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_12
    :goto_4
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_6

    :cond_13
    :goto_5
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_14
    :goto_6
    return-void
.end method

.method public E()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public E0(Lx34;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/a;->o:Lx34;

    return-void
.end method

.method public F()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/a;->r:Ljava/util/List;

    return-object p0
.end method

.method public F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/a;->u:Z

    return-void
.end method

.method public G()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public G0(Lorg/jsoup/nodes/Element;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public H(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/a;->z:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/a;->K(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public H0()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object p0
.end method

.method public I(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/a;->y:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/a;->K(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method public J(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/a;->K(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public K(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/a;->x:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/parser/a;->N(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public L([Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/a;->x:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/a;->O([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public M(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    sget-object v4, Lorg/jsoup/parser/a;->B:[Ljava/lang/String;

    invoke-static {v3, v4}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string p0, "Should not be reachable"

    invoke-static {p0}, Ldnb;->a(Ljava/lang/String;)V

    return v2
.end method

.method public final N(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/a;->w:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/parser/a;->O([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final O([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x65

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_4

    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v2, p2}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v2, p3}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public P(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/a;->A:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/a;->N(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;
    .locals 3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    iget-object v1, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->p(Ltw7;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Duplicate attribute"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/c;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->U(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    iget-object p0, p0, Lorg/jsoup/parser/a;->s:Lorg/jsoup/parser/Token$g;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->G()Lorg/jsoup/parser/Token$i;

    move-result-object p0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->l1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Token$i;->D(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/Token;)V

    return-object p1

    :cond_1
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->C()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-static {v1, v2}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, p1}, Ltw7;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->R(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method public R(Lorg/jsoup/nodes/Element;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->Y(Lorg/jsoup/nodes/g;)V

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public S(Lorg/jsoup/parser/Token$c;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lorg/jsoup/nodes/c;

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/a;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/jsoup/nodes/e;

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/jsoup/nodes/j;

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/j;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public T(Lorg/jsoup/parser/Token$d;)V
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/d;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$d;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->Y(Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method public U(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-static {v0, v1}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    iget-object v3, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, v3}, Ltw7;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/a;->Y(Lorg/jsoup/nodes/g;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ltda;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ltda;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    const-string p1, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltda;->n()Ltda;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public V(Lorg/jsoup/parser/Token$h;Z)Lx34;
    .locals 3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-static {v0, v1}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object v0

    new-instance v1, Lx34;

    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, p1}, Ltw7;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lx34;-><init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/a;->E0(Lx34;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/a;->Y(Lorg/jsoup/nodes/g;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method public W(Lorg/jsoup/nodes/g;)V
    .locals 3

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->D(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->n(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->q0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    :goto_1
    return-void
.end method

.method public X()V
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Y(Lorg/jsoup/nodes/g;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/a;->c0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->W(Lorg/jsoup/nodes/g;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    :goto_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v0

    invoke-virtual {v0}, Ltda;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/jsoup/parser/a;->o:Lx34;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lx34;->u1(Lorg/jsoup/nodes/Element;)Lx34;

    :cond_2
    return-void
.end method

.method public Z(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ldnb;->c(Z)V

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-static {p1, v1}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->R(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method public final b0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    add-int/lit16 p0, p0, -0x101

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-lt v0, p0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public c()Ltw7;
    .locals 0

    sget-object p0, Ltw7;->c:Ltw7;

    return-object p0
.end method

.method public c0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/a;->u:Z

    return p0
.end method

.method public d0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/a;->v:Z

    return p0
.end method

.method public e(Ljava/io/Reader;Ljava/lang/String;Ldx7;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/c;->e(Ljava/io/Reader;Ljava/lang/String;Ldx7;)V

    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object p1, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/jsoup/parser/a;->m:Z

    iput-object p1, p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/Element;

    iput-object p1, p0, Lorg/jsoup/parser/a;->o:Lx34;

    iput-object p1, p0, Lorg/jsoup/parser/a;->p:Lorg/jsoup/nodes/Element;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/a;->r:Ljava/util/List;

    new-instance p1, Lorg/jsoup/parser/Token$g;

    invoke-direct {p1}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/a;->s:Lorg/jsoup/parser/Token$g;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/parser/a;->t:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/a;->u:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/a;->v:Z

    return-void
.end method

.method public e0(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/a;->b0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "script"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "style"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final f0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object p0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g0(Lorg/jsoup/nodes/Element;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/jsoup/parser/a;->D:[Ljava/lang/String;

    invoke-static {p0, p1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public h(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ldx7;)Ljava/util/List;
    .locals 4

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lorg/jsoup/parser/a;->e(Ljava/io/Reader;Ljava/lang/String;Ldx7;)V

    iput-object p2, p0, Lorg/jsoup/parser/a;->p:Lorg/jsoup/nodes/Element;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/parser/a;->v:Z

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->K()Lorg/jsoup/nodes/Document;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->K()Lorg/jsoup/nodes/Document;

    move-result-object p4

    invoke-virtual {p4}, Lorg/jsoup/nodes/Document;->A1()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/jsoup/nodes/Document;->B1(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object p1

    const-string p4, "title"

    const-string v0, "textarea"

    filled-new-array {p4, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lm0a;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p4, v0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    const-string p4, "style"

    const-string v0, "xmp"

    const-string v1, "iframe"

    const-string v2, "noembed"

    const-string v3, "noframes"

    filled-new-array {v1, v2, v3, p4, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lm0a;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p4, v0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    const-string p4, "script"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p4, v0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_3
    const-string p4, "noscript"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p4, v0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_4
    const-string p4, "plaintext"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p4, v0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_5
    iget-object p4, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p4, v0}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    new-instance p4, Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-static {p1, v0}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1, p4}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    iget-object p1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->D0()V

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Z0()Lorg/jsoup/select/Elements;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jsoup/nodes/Element;

    instance-of v0, p3, Lx34;

    if-eqz v0, :cond_6

    check-cast p3, Lx34;

    iput-object p3, p0, Lorg/jsoup/parser/a;->o:Lx34;

    goto :goto_1

    :cond_7
    const/4 p4, 0x0

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->m()V

    if-eqz p2, :cond_a

    invoke-virtual {p4}, Lorg/jsoup/nodes/g;->a0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, -0x1

    invoke-virtual {p4, p1, p0}, Lorg/jsoup/nodes/Element;->P0(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    :cond_9
    invoke-virtual {p4}, Lorg/jsoup/nodes/g;->q()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object p0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->q()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h0()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public i(Lorg/jsoup/parser/Token;)Z
    .locals 1

    iput-object p1, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    iget-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method public j0(Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/jsoup/parser/c;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/a;->m:Z

    iget-object p0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->W(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public k0()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/a;->r:Ljava/util/List;

    return-void
.end method

.method public bridge synthetic l(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/c;->l(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    move-result p0

    return p0
.end method

.method public l0(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/a;->b0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    return p0
.end method

.method public m0()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object p0
.end method

.method public n(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public n0()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public o(Lorg/jsoup/nodes/Element;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/jsoup/parser/a;->f0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public p()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->z0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public p0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final varargs q([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lm0a;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public varargs q0([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public r()V
    .locals 4

    const-string v0, "thead"

    const-string v1, "template"

    const-string v2, "tbody"

    const-string v3, "tfoot"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->q([Ljava/lang/String;)V

    return-void
.end method

.method public r0(Lorg/jsoup/nodes/Element;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public s()V
    .locals 1

    const-string v0, "table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->q([Ljava/lang/String;)V

    return-void
.end method

.method public s0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0
.end method

.method public t()V
    .locals 2

    const-string v0, "tr"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->q([Ljava/lang/String;)V

    return-void
.end method

.method public t0(Lorg/jsoup/nodes/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/c;->a:Ldx7;

    invoke-virtual {v0}, Ldx7;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/c;->a:Ldx7;

    invoke-virtual {v0}, Ldx7;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    new-instance v1, Lsw7;

    iget-object v2, p0, Lorg/jsoup/parser/c;->b:Lnv0;

    invoke-virtual {v2}, Lnv0;->J()I

    move-result v2

    iget-object p0, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->o()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unexpected token [%s] when in state [%s]"

    invoke-direct {v1, v2, p1, p0}, Lsw7;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public u0(Lorg/jsoup/nodes/Element;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->o(Lorg/jsoup/nodes/Element;)V

    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/a;->t:Z

    return-void
.end method

.method public v0(Lorg/jsoup/nodes/Element;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->o(Lorg/jsoup/nodes/Element;)V

    :try_start_0
    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public w()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/a;->t:Z

    return p0
.end method

.method public w0()V
    .locals 7

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->h0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->l0(Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0xc

    const/4 v3, 0x0

    if-gez v2, :cond_1

    move v2, v3

    :cond_1
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    move v5, v1

    :cond_2
    if-ne v5, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->l0(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    move v4, v3

    :goto_0
    if-nez v4, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    :cond_5
    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/a;->a0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->k()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/b;->k(Lorg/jsoup/nodes/b;)V

    :cond_6
    iget-object v4, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v1, :cond_4

    :cond_7
    :goto_1
    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->y(Ljava/lang/String;)V

    return-void
.end method

.method public x0(Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/a;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y0(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public z(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public z0()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
