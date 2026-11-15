.class public Lfreemarker/core/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lfreemarker/core/e1$a;

.field public b:Lfreemarker/core/Environment$Namespace;

.field public final synthetic c:Lfreemarker/core/h;


# direct methods
.method public constructor <init>(Lfreemarker/core/h;Lfreemarker/core/Environment;)V
    .locals 5

    iput-object p1, p0, Lfreemarker/core/h$a;->c:Lfreemarker/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lfreemarker/core/Environment;->z0()Lfreemarker/core/e1$a;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/h$a;->a:Lfreemarker/core/e1$a;

    iget-object v0, v0, Lfreemarker/core/e1$a;->d:Ljava/util/List;

    invoke-static {p1}, Lfreemarker/core/h;->l0(Lfreemarker/core/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lfreemarker/core/h;->l0(Lfreemarker/core/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p1}, Lfreemarker/core/h;->l0(Lfreemarker/core/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/t0;

    invoke-virtual {v2, p2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lfreemarker/core/h$a;->b:Lfreemarker/core/Environment$Namespace;

    if-nez v4, :cond_0

    new-instance v4, Lfreemarker/core/Environment$Namespace;

    invoke-direct {v4, p2}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;)V

    iput-object v4, p0, Lfreemarker/core/h$a;->b:Lfreemarker/core/Environment$Namespace;

    :cond_0
    iget-object v4, p0, Lfreemarker/core/h$a;->b:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v4, v3, v2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h$a;->a:Lfreemarker/core/e1$a;

    iget-object p0, p0, Lfreemarker/core/e1$a;->d:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h$a;->b:Lfreemarker/core/Environment$Namespace;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    :goto_0
    return-object p0
.end method
