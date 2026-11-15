.class public final Llfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnfa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfreemarker/template/TemplateException;Lfreemarker/core/Environment;Ljava/io/Writer;)V
    .locals 0

    invoke-virtual {p2}, Lfreemarker/core/Environment;->x1()Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p3, Ljava/io/PrintWriter;

    if-eqz p0, :cond_0

    check-cast p3, Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/PrintWriter;

    invoke-direct {p0, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p3, p0

    :goto_0
    const-string p0, "FreeMarker template error (DEBUG mode; use RETHROW in production!):\n"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p0, p2, p2}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintWriter;ZZZ)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    throw p1
.end method
