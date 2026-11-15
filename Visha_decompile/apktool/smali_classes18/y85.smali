.class public final Ly85;
.super Ltfc;
.source "SourceFile"


# static fields
.field public static final c:Ly85;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly85;

    invoke-direct {v0}, Ly85;-><init>()V

    sput-object v0, Ly85;->c:Ly85;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltfc;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ltfc;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lsfc;->a:Lsfc;

    invoke-virtual {p0, p1}, Lsfc;->b(Ltfc;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "public/*package*/"

    return-object p0
.end method

.method public d()Ltfc;
    .locals 0

    sget-object p0, Lsfc$g;->c:Lsfc$g;

    return-object p0
.end method
