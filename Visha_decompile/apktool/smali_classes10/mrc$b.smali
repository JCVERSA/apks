.class public Lmrc$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljrc;

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Ljrc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmrc$b;->b:[B

    iput-object v0, p0, Lmrc$b;->c:[B

    iput-object v0, p0, Lmrc$b;->d:[B

    iput-object p1, p0, Lmrc$b;->a:Ljrc;

    return-void
.end method

.method public static synthetic a(Lmrc$b;)Ljrc;
    .locals 0

    iget-object p0, p0, Lmrc$b;->a:Ljrc;

    return-object p0
.end method

.method public static synthetic b(Lmrc$b;)[B
    .locals 0

    iget-object p0, p0, Lmrc$b;->d:[B

    return-object p0
.end method

.method public static synthetic c(Lmrc$b;)[B
    .locals 0

    iget-object p0, p0, Lmrc$b;->b:[B

    return-object p0
.end method

.method public static synthetic d(Lmrc$b;)[B
    .locals 0

    iget-object p0, p0, Lmrc$b;->c:[B

    return-object p0
.end method


# virtual methods
.method public e()Lmrc;
    .locals 2

    new-instance v0, Lmrc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmrc;-><init>(Lmrc$b;Lmrc$a;)V

    return-object v0
.end method

.method public f([B)Lmrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lmrc$b;->d:[B

    return-object p0
.end method

.method public g([B)Lmrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lmrc$b;->c:[B

    return-object p0
.end method

.method public h([B)Lmrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lmrc$b;->b:[B

    return-object p0
.end method
