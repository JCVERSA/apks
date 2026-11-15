.class public Lpm0;
.super Lll0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm0$a;
    }
.end annotation


# instance fields
.field public final k:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lll0;-><init>()V

    iput-boolean p1, p0, Lpm0;->k:Z

    return-void
.end method

.method public static synthetic i0(Lpm0;)Z
    .locals 0

    iget-boolean p0, p0, Lpm0;->k:Z

    return p0
.end method


# virtual methods
.method public h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    new-instance p2, Lpm0$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lpm0$a;-><init>(Lpm0;Ljava/lang/String;Lam0;)V

    return-object p2
.end method
