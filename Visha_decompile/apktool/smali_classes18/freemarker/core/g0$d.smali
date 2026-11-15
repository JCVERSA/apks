.class public Lfreemarker/core/g0$d;
.super Lll0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/g0$d$a;
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

    new-instance p2, Lfreemarker/core/g0$d$a;

    invoke-direct {p2, p0, p1}, Lfreemarker/core/g0$d$a;-><init>(Lfreemarker/core/g0$d;Ljava/lang/String;)V

    return-object p2
.end method
