.class public final Lz85;
.super Ltfc;
.source "SourceFile"


# static fields
.field public static final c:Lz85;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz85;

    invoke-direct {v0}, Lz85;-><init>()V

    sput-object v0, Lz85;->c:Lz85;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "protected_and_package"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltfc;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ltfc;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lsfc$b;->c:Lsfc$b;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lsfc;->a:Lsfc;

    invoke-virtual {p0, p1}, Lsfc;->b(Ltfc;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected and package*/"

    return-object p0
.end method

.method public d()Ltfc;
    .locals 0

    sget-object p0, Lsfc$g;->c:Lsfc$g;

    return-object p0
.end method
