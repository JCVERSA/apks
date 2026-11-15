.class public Lmm0;
.super Lll0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lll0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    new-instance p2, Lmm0$a;

    invoke-direct {p2, p0, p1}, Lmm0$a;-><init>(Lmm0;Ljava/lang/String;)V

    return-object p2
.end method
