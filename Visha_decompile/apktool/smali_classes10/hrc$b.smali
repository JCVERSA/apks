.class public Lhrc$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ldrc;

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Ldrc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhrc$b;->b:[B

    iput-object v0, p0, Lhrc$b;->c:[B

    iput-object v0, p0, Lhrc$b;->d:[B

    iput-object p1, p0, Lhrc$b;->a:Ldrc;

    return-void
.end method

.method public static synthetic a(Lhrc$b;)Ldrc;
    .locals 0

    iget-object p0, p0, Lhrc$b;->a:Ldrc;

    return-object p0
.end method

.method public static synthetic b(Lhrc$b;)[B
    .locals 0

    iget-object p0, p0, Lhrc$b;->d:[B

    return-object p0
.end method

.method public static synthetic c(Lhrc$b;)[B
    .locals 0

    iget-object p0, p0, Lhrc$b;->b:[B

    return-object p0
.end method

.method public static synthetic d(Lhrc$b;)[B
    .locals 0

    iget-object p0, p0, Lhrc$b;->c:[B

    return-object p0
.end method


# virtual methods
.method public e()Lhrc;
    .locals 2

    new-instance v0, Lhrc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhrc;-><init>(Lhrc$b;Lhrc$a;)V

    return-object v0
.end method

.method public f([B)Lhrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lhrc$b;->d:[B

    return-object p0
.end method

.method public g([B)Lhrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lhrc$b;->c:[B

    return-object p0
.end method

.method public h([B)Lhrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lhrc$b;->b:[B

    return-object p0
.end method
