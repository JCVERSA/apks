.class public Lbn0;
.super Lll0;
.source "SourceFile"

# interfaces
.implements Leu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbn0$a;
    }
.end annotation


# instance fields
.field public final k:Lbn0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lll0;-><init>()V

    new-instance v0, Lbn0$a;

    invoke-direct {v0}, Lbn0$a;-><init>()V

    iput-object v0, p0, Lbn0;->k:Lbn0$a;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 0

    sget p0, Ld1d;->c:I

    return p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbn0;->k:Lbn0$a;

    return-object p0
.end method

.method public h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-static {p1}, Ln0a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
