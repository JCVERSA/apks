.class public abstract Lsp5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsp5$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lsp5$a;
    .locals 1

    new-instance v0, Li30$b;

    invoke-direct {v0}, Li30$b;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lsp5$a;
    .locals 1

    invoke-static {}, Lsp5;->a()Lsp5$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsp5$a;->g(Ljava/lang/String;)Lsp5$a;

    move-result-object p0

    return-object p0
.end method

.method public static j([B)Lsp5$a;
    .locals 1

    invoke-static {}, Lsp5;->a()Lsp5$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsp5$a;->f([B)Lsp5$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Integer;
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method

.method public abstract e()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
.end method

.method public abstract f()[B
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()J
.end method
