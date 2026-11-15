.class public Ltf3;
.super Lpf3;
.source "SourceFile"


# direct methods
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

    sget-object p0, Lzfa;->X4:Lzfa;

    :cond_0
    return-object p0
.end method
