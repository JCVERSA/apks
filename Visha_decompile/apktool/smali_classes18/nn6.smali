.class public final Lnn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# instance fields
.field public final a:Lpc9;

.field public final b:Lpc9;

.field public final c:Ls74;


# direct methods
.method public constructor <init>(Lpc9;Lpc9;Ls74;)V
    .locals 1

    const-string v0, "sequence1"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence2"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn6;->a:Lpc9;

    iput-object p2, p0, Lnn6;->b:Lpc9;

    iput-object p3, p0, Lnn6;->c:Ls74;

    return-void
.end method

.method public static final synthetic b(Lnn6;)Lpc9;
    .locals 0

    iget-object p0, p0, Lnn6;->a:Lpc9;

    return-object p0
.end method

.method public static final synthetic c(Lnn6;)Lpc9;
    .locals 0

    iget-object p0, p0, Lnn6;->b:Lpc9;

    return-object p0
.end method

.method public static final synthetic d(Lnn6;)Ls74;
    .locals 0

    iget-object p0, p0, Lnn6;->c:Ls74;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lnn6$a;

    invoke-direct {v0, p0}, Lnn6$a;-><init>(Lnn6;)V

    return-object v0
.end method
