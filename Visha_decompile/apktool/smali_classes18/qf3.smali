.class public final Lqf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzfa;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p1, "?default"

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p1, p0, v1, v0}, Lfreemarker/core/f1;->k(Ljava/lang/String;III)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method
