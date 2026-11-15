.class public Lorg/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    }
.end annotation


# instance fields
.field public b:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public c:Ljava/nio/charset/Charset;

.field public final d:Ljava/lang/ThreadLocal;

.field public e:Lorg/jsoup/nodes/Entities$CoreCharset;

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v0, Lxs1;->b:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->d:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->g:Z

    iput v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->h:I

    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->i:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    return-object p0
.end method

.method public d()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    iget-object p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object p0

    iput-object p0, v0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->i()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->h:I

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->g:Z

    return p0
.end method

.method public i()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$CoreCharset;->byName(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->e:Lorg/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->f:Z

    return p0
.end method

.method public k()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->i:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p0
.end method
