.class public abstract Lvq1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyq1;

.field public static final b:Lar1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyq1;

    invoke-direct {v0}, Lyq1;-><init>()V

    sput-object v0, Lvq1;->a:Lyq1;

    new-instance v0, Lar1;

    invoke-direct {v0}, Lar1;-><init>()V

    sput-object v0, Lvq1;->b:Lar1;

    return-void
.end method

.method public static a(Ly0;)Lyq1;
    .locals 2

    invoke-virtual {p0}, Ly0;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lvq1;->a:Lyq1;

    return-object p0

    :cond_0
    new-instance v0, Lyq1;

    invoke-direct {v0, p0}, Lyq1;-><init>(Ly0;)V

    return-object v0
.end method

.method public static b(Ly0;)Lar1;
    .locals 2

    invoke-virtual {p0}, Ly0;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lvq1;->b:Lar1;

    return-object p0

    :cond_0
    new-instance v0, Lar1;

    invoke-direct {v0, p0}, Lar1;-><init>(Ly0;)V

    return-object v0
.end method
