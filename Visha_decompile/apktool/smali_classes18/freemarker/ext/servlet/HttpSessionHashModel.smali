.class public final Lfreemarker/ext/servlet/HttpSessionHashModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofa;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient request:Ljavax/servlet/http/HttpServletRequest;

.field private final transient response:Ljavax/servlet/http/HttpServletResponse;

.field private final transient servlet:Lfreemarker/ext/servlet/FreemarkerServlet;

.field private transient session:Ljavax/servlet/http/HttpSession;

.field private final transient wrapper:Lgc7;


# direct methods
.method public constructor <init>(Lfreemarker/ext/servlet/FreemarkerServlet;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lgc7;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p4, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->wrapper:Lgc7;

    .line 8
    iput-object p2, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 9
    iput-object p3, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;Lgc7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->wrapper:Lgc7;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 5
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method

.method private checkSessionExistence()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpSessionHashModel;->checkSessionExistence()V

    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->wrapper:Lgc7;

    iget-object p0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpSessionHashModel;->checkSessionExistence()V

    iget-object p0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOrphaned(Ljavax/servlet/http/HttpSession;)Z
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
