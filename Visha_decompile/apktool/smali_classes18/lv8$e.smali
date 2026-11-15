.class public Llv8$e;
.super Llv8$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final e:Ljava/util/List;


# instance fields
.field public final d:Lfreemarker/template/SimpleScalar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Llv8$a;->c:Ljava/util/List;

    const-string v1, "configuration"

    const-string v2, "name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Llv8$d;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Llv8$e;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;)V
    .locals 1

    invoke-direct {p0, p1}, Llv8$a;-><init>(Lfreemarker/core/Configurable;)V

    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llv8$e;->d:Lfreemarker/template/SimpleScalar;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 0

    sget-object p0, Llv8$e;->e:Ljava/util/List;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 1

    const-string v0, "configuration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/template/Template;

    invoke-virtual {p0}, Lfreemarker/template/Template;->t0()Lxe1;

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

    :cond_0
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Llv8$e;->d:Lfreemarker/template/SimpleScalar;

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Llv8$a;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method
