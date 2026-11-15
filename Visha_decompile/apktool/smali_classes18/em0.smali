.class public Lem0;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 3

    new-instance v0, Lem0$a;

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    const-string v2, "For sequences/collections (lists and such) use \"?seq_contains\" instead."

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/t0;->M(Lfreemarker/core/Environment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lem0$a;-><init>(Lem0;Ljava/lang/String;Lam0;)V

    return-object v0
.end method
