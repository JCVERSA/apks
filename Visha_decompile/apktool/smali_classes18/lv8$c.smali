.class public Llv8$c;
.super Llv8$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final e:Ljava/util/List;


# instance fields
.field public d:Lzfa;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Llv8$a;->c:Ljava/util/List;

    const-string v5, "mainNamespace"

    const-string v6, "template"

    const-string v1, "currentNamespace"

    const-string v2, "dataModel"

    const-string v3, "globalNamespace"

    const-string v4, "knownVariables"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Llv8$d;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Llv8$c;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 0

    invoke-direct {p0, p1}, Llv8$a;-><init>(Lfreemarker/core/Configurable;)V

    new-instance p1, Lnv8;

    invoke-direct {p1, p0}, Lnv8;-><init>(Llv8$c;)V

    iput-object p1, p0, Llv8$c;->d:Lzfa;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 0

    sget-object p0, Llv8$c;->e:Ljava/util/List;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 1

    const-string v0, "currentNamespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->A0()Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "dataModel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->E0()Lofa;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "globalNamespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->J0()Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "knownVariables"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Llv8$c;->d:Lzfa;

    return-object p0

    :cond_3
    const-string v0, "mainNamespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->T0()Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "template"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object p0

    invoke-static {p0}, Llv8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;
    :try_end_0
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/template/TemplateModelException;

    invoke-direct {p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_5
    invoke-super {p0, p1}, Llv8$a;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method
