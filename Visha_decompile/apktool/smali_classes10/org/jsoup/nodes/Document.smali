.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings;,
        Lorg/jsoup/nodes/Document$QuirksMode;
    }
.end annotation


# static fields
.field public static final q:Lorg/jsoup/select/c;


# instance fields
.field public l:Lorg/jsoup/nodes/Document$OutputSettings;

.field public m:Ldx7;

.field public n:Lorg/jsoup/nodes/Document$QuirksMode;

.field public final o:Ljava/lang/String;

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jsoup/select/c$j0;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lorg/jsoup/select/c$j0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/nodes/Document;->q:Lorg/jsoup/select/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "#root"

    sget-object v1, Ltw7;->c:Ltw7;

    invoke-static {v0, v1}, Ltda;->p(Ljava/lang/String;Ltw7;)Ltda;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->l:Lorg/jsoup/nodes/Document$OutputSettings;

    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/nodes/Document$QuirksMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->p:Z

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->o:Ljava/lang/String;

    invoke-static {}, Ldx7;->c()Ldx7;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->m:Ldx7;

    return-void
.end method


# virtual methods
.method public A1()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public B1(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public E()Ljava/lang/String;
    .locals 0

    const-string p0, "#document"

    return-object p0
.end method

.method public G()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->L0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v1()Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public o1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u1()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->o1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public bridge synthetic s()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v1()Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public u1()Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->w1()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "body"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "frameset"

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->l0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public v1()Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->x0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    iget-object p0, p0, Lorg/jsoup/nodes/Document;->l:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    iput-object p0, v0, Lorg/jsoup/nodes/Document;->l:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public final w1()Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->s0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->l0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic x0()Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v1()Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public x1()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Document;->l:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public y1()Ldx7;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Document;->m:Ldx7;

    return-object p0
.end method

.method public z1(Ldx7;)Lorg/jsoup/nodes/Document;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->m:Ldx7;

    return-object p0
.end method
