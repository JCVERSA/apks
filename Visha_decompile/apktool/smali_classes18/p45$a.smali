.class public Lp45$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lfreemarker/template/Template;

.field public final synthetic c:Lp45;


# direct methods
.method public constructor <init>(Lp45;Lfreemarker/template/Template;)V
    .locals 0

    iput-object p1, p0, Lp45$a;->c:Lp45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp45$a;->b:Lfreemarker/template/Template;

    return-void
.end method


# virtual methods
.method public h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 6

    :try_start_0
    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lp45$a;->b:Lfreemarker/template/Template;

    invoke-virtual {p2, v1}, Lfreemarker/core/Environment;->r1(Lfreemarker/template/Template;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2, v0}, Lfreemarker/core/Environment;->N1(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    new-instance p2, Lo45;

    invoke-direct {p2, p0, p1, p1}, Lo45;-><init>(Lp45$a;Ljava/lang/Object;Ljava/io/Writer;)V

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p2, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lp45$a;->c:Lp45;

    iget-object v1, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    new-instance v4, Li0d;

    invoke-direct {v4, p1}, Li0d;-><init>(Ljava/lang/Throwable;)V

    const-string v5, "\n---end-message---"

    const-string v0, "Template created with \"?"

    const-string v2, "\" has stopped with this error:\n\n"

    const-string v3, "---begin-message---\n"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p2
.end method
