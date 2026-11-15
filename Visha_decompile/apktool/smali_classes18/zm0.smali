.class public Lzm0;
.super Lll0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lll0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    new-instance p0, Lfreemarker/template/SimpleSequence;

    invoke-direct {p0}, Lfreemarker/template/SimpleSequence;-><init>()V

    new-instance p2, Ljava/util/StringTokenizer;

    invoke-direct {p2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
