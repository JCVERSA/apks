.class public Lfm0;
.super Lll0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm0$a;
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
    .locals 1

    new-instance p2, Lfm0$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lfm0$a;-><init>(Lfm0;Ljava/lang/String;Lam0;)V

    return-object p2
.end method
