.class public final Lk3j;
.super Lg3j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg3j;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Li3j;
    .locals 2

    check-cast p0, Lkli;

    iget-object v0, p0, Lkli;->zzc:Li3j;

    invoke-static {}, Li3j;->c()Li3j;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Li3j;->f()Li3j;

    move-result-object v0

    iput-object v0, p0, Lkli;->zzc:Li3j;

    :cond_0
    return-object v0
.end method
