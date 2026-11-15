.class public Lfreemarker/core/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;


# instance fields
.field public final synthetic b:Ljava/util/regex/Matcher;

.field public final synthetic c:Lfreemarker/core/g0$a;


# direct methods
.method public constructor <init>(Lfreemarker/core/g0$a;Ljava/util/regex/Matcher;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/d0;->c:Lfreemarker/core/g0$a;

    iput-object p2, p0, Lfreemarker/core/d0;->b:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1

    :try_start_0
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lfreemarker/core/d0;->b:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/core/_TemplateModelException;

    const-string v0, "Failed to read match group"

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lfreemarker/core/d0;->b:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v1, "Failed to get match group count"

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method
