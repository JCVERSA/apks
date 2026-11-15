.class public Lim0;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim0$a;
    }
.end annotation


# instance fields
.field public final k:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    iput-boolean p1, p0, Lim0;->k:Z

    return-void
.end method

.method public static synthetic h0(Lim0;)Z
    .locals 0

    iget-boolean p0, p0, Lim0;->k:Z

    return p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 3

    new-instance v0, Lim0$a;

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    const-string v2, "For sequences/collections (lists and such) use \"?seq_index_of\" instead."

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/t0;->M(Lfreemarker/core/Environment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lim0$a;-><init>(Lim0;Ljava/lang/String;Lam0;)V

    return-object v0
.end method
