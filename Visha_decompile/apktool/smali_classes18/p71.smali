.class public Lp71;
.super Lyz9;
.source "SourceFile"

# interfaces
.implements Lbfa;
.implements Lnga;


# static fields
.field public static final i:Lfq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo71;

    invoke-direct {v0}, Lo71;-><init>()V

    sput-object v0, Lp71;->i:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lyz9;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 2

    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Underlying collection is not a list, it\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Lbga;
    .locals 2

    new-instance v0, Lw55;

    iget-object v1, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v0, v1, p0}, Lw55;-><init>(Ljava/util/Iterator;Lfreemarker/ext/beans/b;)V

    return-object v0
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    instance-of p0, p0, Ljava/util/List;

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method
