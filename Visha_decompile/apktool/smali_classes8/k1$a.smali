.class public final Lk1$a;
.super Ld2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld2;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public c(Ls1;)Lp1;
    .locals 1

    new-instance p0, Lk1;

    sget-object v0, Ld1;->c:Ld2;

    invoke-virtual {v0, p1}, Ld2;->c(Ls1;)Lp1;

    move-result-object p1

    check-cast p1, Ld1;

    invoke-direct {p0, p1}, Lk1;-><init>(Ld1;)V

    return-object p0
.end method

.method public d(Lwp1;)Lp1;
    .locals 1

    new-instance p0, Lk1;

    sget-object v0, Ld1;->c:Ld2;

    invoke-virtual {v0, p1}, Ld2;->d(Lwp1;)Lp1;

    move-result-object p1

    check-cast p1, Ld1;

    invoke-direct {p0, p1}, Lk1;-><init>(Ld1;)V

    return-object p0
.end method
