.class public final Li82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Ls74;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILs74;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li82;->a:Ljava/lang/CharSequence;

    iput p2, p0, Li82;->b:I

    iput p3, p0, Li82;->c:I

    iput-object p4, p0, Li82;->d:Ls74;

    return-void
.end method

.method public static final synthetic b(Li82;)Ls74;
    .locals 0

    iget-object p0, p0, Li82;->d:Ls74;

    return-object p0
.end method

.method public static final synthetic c(Li82;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Li82;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic d(Li82;)I
    .locals 0

    iget p0, p0, Li82;->c:I

    return p0
.end method

.method public static final synthetic e(Li82;)I
    .locals 0

    iget p0, p0, Li82;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Li82$a;

    invoke-direct {v0, p0}, Li82$a;-><init>(Li82;)V

    return-object v0
.end method
