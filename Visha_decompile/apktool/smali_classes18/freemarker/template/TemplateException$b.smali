.class public Lfreemarker/template/TemplateException$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateException$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/TemplateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/template/TemplateException$b;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Lfreemarker/template/TemplateException;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/template/TemplateException;

    iget-object p0, p0, Lfreemarker/template/TemplateException$b;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1, p0}, Lfreemarker/template/TemplateException;->printStandardStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/template/TemplateException$b;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/template/TemplateException$b;->a:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/template/TemplateException$b;->a:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lfreemarker/template/TemplateException$b;->a:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
