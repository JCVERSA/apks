.class public Lcom/transsion/palmsdk/PalmAuthParam$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/PalmAuthParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->d:Z

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->f:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->g:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->i:Z

    iput-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->j:Z

    iput-object v2, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->m:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/palmsdk/PalmAuthParam$a;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->m:Z

    return p0
.end method

.method public static synthetic f(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->d:Z

    return p0
.end method

.method public static synthetic h(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->e:Z

    return p0
.end method

.method public static synthetic i(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->f:Z

    return p0
.end method

.method public static synthetic j(Lcom/transsion/palmsdk/PalmAuthParam$a;)I
    .locals 0

    iget p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->g:I

    return p0
.end method

.method public static synthetic k(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->i:Z

    return p0
.end method

.method public static synthetic m(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->j:Z

    return p0
.end method


# virtual methods
.method public n()Lcom/transsion/palmsdk/PalmAuthParam;
    .locals 2

    new-instance v0, Lcom/transsion/palmsdk/PalmAuthParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/palmsdk/PalmAuthParam;-><init>(Lcom/transsion/palmsdk/PalmAuthParam$a;Lcom/transsion/palmsdk/PalmAuthParam$b;)V

    return-object v0
.end method

.method public o()Lcom/transsion/palmsdk/PalmAuthParam$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->d:Z

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/transsion/palmsdk/PalmAuthParam$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public q([Ljava/lang/String;)Lcom/transsion/palmsdk/PalmAuthParam$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public r(I)Lcom/transsion/palmsdk/PalmAuthParam$a;
    .locals 0

    iput p1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->g:I

    return-object p0
.end method

.method public s(Z)Lcom/transsion/palmsdk/PalmAuthParam$a;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->j:Z

    return-object p0
.end method

.method public t(Z)Lcom/transsion/palmsdk/PalmAuthParam$a;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam$a;->f:Z

    return-object p0
.end method
