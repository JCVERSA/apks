.class public final Lxeb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/anthonynsimon/url/URL;
    .locals 11

    new-instance v10, Lcom/anthonynsimon/url/URL;

    iget-object v1, p0, Lxeb;->a:Ljava/lang/String;

    iget-object v2, p0, Lxeb;->b:Ljava/lang/String;

    iget-object v3, p0, Lxeb;->c:Ljava/lang/String;

    iget-object v4, p0, Lxeb;->d:Ljava/lang/String;

    iget-object v5, p0, Lxeb;->e:Ljava/lang/String;

    iget-object v6, p0, Lxeb;->f:Ljava/lang/String;

    iget-object v7, p0, Lxeb;->g:Ljava/lang/String;

    iget-object v8, p0, Lxeb;->h:Ljava/lang/String;

    iget-object v9, p0, Lxeb;->i:Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/anthonynsimon/url/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->h:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->f:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lxeb;
    .locals 0

    iput-object p1, p0, Lxeb;->b:Ljava/lang/String;

    return-object p0
.end method
