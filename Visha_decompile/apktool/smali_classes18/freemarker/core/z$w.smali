.class public Lfreemarker/core/z$w;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 7

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    instance-of v0, v3, Lfreemarker/core/e1;

    if-nez v0, :cond_1

    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/z;->d:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "freemarker.core.Macro"

    invoke-static {p0}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/z;->d:Ljava/lang/Class;

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "macro or function"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0

    :cond_1
    check-cast v3, Lfreemarker/core/e1;

    invoke-virtual {p1, v3}, Lfreemarker/core/Environment;->S0(Lfreemarker/core/e1;)Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0
.end method
