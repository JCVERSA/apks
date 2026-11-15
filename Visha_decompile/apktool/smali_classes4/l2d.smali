.class public Ll2d;
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

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ll2d;->h:I

    iput-object p1, p0, Ll2d;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Ll2d;->h:I

    goto :goto_0

    :cond_0
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Ll2d;->h:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ll2d;
    .locals 0

    iput-object p1, p0, Ll2d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll2d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ll2d;
    .locals 0

    iput-object p1, p0, Ll2d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll2d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ll2d;
    .locals 0

    iput-object p1, p0, Ll2d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll2d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ll2d;
    .locals 0

    iput-object p1, p0, Ll2d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll2d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Ll2d;->h:I

    return p0
.end method

.method public j(Ljava/lang/String;)Ll2d;
    .locals 2

    iget v0, p0, Ll2d;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Ll2d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Ll2d;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll2d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll2d;->f:Ljava/lang/String;

    return-object p0
.end method
