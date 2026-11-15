.class public Lfreemarker/core/r0;
.super Lpf3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/r0$a;
    }
.end annotation


# static fields
.field public static final k:Lyfa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqf3;

    invoke-direct {v0}, Lqf3;-><init>()V

    sput-object v0, Lfreemarker/core/r0;->k:Lyfa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpf3;-><init>(Lof3;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    invoke-virtual {p0, p1}, Lpf3;->h0(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lfreemarker/core/r0;->k:Lyfa;

    goto :goto_0

    :cond_0
    new-instance p1, Lfreemarker/core/r0$a;

    invoke-direct {p1, p0}, Lfreemarker/core/r0$a;-><init>(Lzfa;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
