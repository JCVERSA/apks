.class public final Ls93;
.super Lf96;
.source "SourceFile"


# static fields
.field public static final d:Ls93;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Z

.field public final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls93;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "No compatible overloaded variation was found; wrong number of arguments."

    invoke-direct {v0, v3, v1, v2}, Ls93;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    sput-object v0, Ls93;->d:Ls93;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lf96;-><init>()V

    iput-object p1, p0, Ls93;->a:Ljava/lang/Object;

    iput-boolean p2, p0, Ls93;->b:Z

    iput-object p3, p0, Ls93;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static a([Ljava/lang/Object;)Ls93;
    .locals 3

    new-instance v0, Ls93;

    const-string v1, "Multiple compatible overloaded variations were found with the same priority."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ls93;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lo93;[Ljava/lang/Object;)Lf96;
    .locals 2

    sget-object v0, Lo93;->a:Lo93;

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Ls93;->g([Ljava/lang/Object;)Ls93;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lo93;->b:Lo93;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Ls93;->a([Ljava/lang/Object;)Ls93;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unrecognized constant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(I)Ls93;
    .locals 3

    new-instance v0, Ls93;

    new-instance v1, Ll0d;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2}, Ll0d;-><init>(Ljava/lang/Object;)V

    const-string p0, " argument to the desired Java type."

    const-string v2, "No compatible overloaded variation was found; can\'t convert (unwrap) the "

    filled-new-array {v2, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ls93;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static g([Ljava/lang/Object;)Ls93;
    .locals 3

    new-instance v0, Ls93;

    const-string v1, "No compatible overloaded variation was found; declared parameter types and argument value types mismatch."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ls93;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls93;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public d()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls93;->c:[Ljava/lang/Object;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Ls93;->b:Z

    return p0
.end method
