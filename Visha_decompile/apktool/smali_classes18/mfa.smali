.class public final Lmfa;
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
    .locals 3

    const-string p0, "color:#A80000; font-size:12px; font-style:normal; font-variant:normal; font-weight:normal; text-decoration:none; text-transform: none"

    invoke-virtual {p2}, Lfreemarker/core/Environment;->x1()Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p3, Ljava/io/PrintWriter;

    if-eqz p2, :cond_0

    check-cast p3, Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p3, v0

    :goto_0
    :try_start_0
    const-string v0, "<!-- FREEMARKER ERROR MESSAGE STARTS HERE --><!-- ]]> --><script language=javascript>//\"></script><script language=javascript>//\'></script><script language=javascript>//\"></script><script language=javascript>//\'></script></title></xmp></script></noscript></style></object></head></pre></table></form></table></table></table></a></u></i></b><div align=\'left\' style=\'background-color:#FFFF7C; display:block; border-top:double; padding:4px; margin:0; font-family:Arial,sans-serif; "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\'><b style=\'font-size:12px; font-style:normal; font-weight:bold; text-decoration:none; text-transform: none;\'>FreeMarker template error  (HTML_DEBUG mode; use RETHROW in production!)</b><pre style=\'display:block; background: none; border: 0; margin:0; padding: 0;font-family:monospace; "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "; white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-wrap: break-word;\'>"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintWriter;ZZZ)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln0a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "</pre></div></html>"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    invoke-virtual {p3}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw p0

    :cond_2
    :goto_1
    throw p1
.end method
