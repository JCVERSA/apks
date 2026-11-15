.class public Lcom/mgmi/model/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/mgmi/g/a;

.field b:Lcom/mgmi/platform/view/a;

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/model/n;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/n;->h:I

    return-void
.end method


# virtual methods
.method public a()Lcom/mgmi/g/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/n;->a:Lcom/mgmi/g/a;

    return-object p0
.end method

.method public a(I)Lcom/mgmi/model/n;
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/model/n;->c:I

    return-object p0
.end method

.method public a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/n;->a:Lcom/mgmi/g/a;

    return-object p0
.end method

.method public a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/n;->b:Lcom/mgmi/platform/view/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mgmi/model/n;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mgmi/model/n;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lcom/mgmi/model/n;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/n;->d:I

    return-object p0
.end method

.method public b()Lcom/mgmi/platform/view/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/n;->b:Lcom/mgmi/platform/view/a;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/n;->g:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/n;->c:I

    return p0
.end method

.method public c(I)Lcom/mgmi/model/n;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/n;->e:I

    return-object p0
.end method

.method public d()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/model/n;->d:I

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/model/n;->h:I

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/n;->e:I

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/n;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/n;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/n;->h:I

    return p0
.end method
