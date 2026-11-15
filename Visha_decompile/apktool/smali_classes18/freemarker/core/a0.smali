.class public Lfreemarker/core/a0;
.super Lil0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lgga;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    new-instance p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;

    invoke-direct {p0, p2}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;-><init>(Lfreemarker/core/Environment;)V

    invoke-interface {p1}, Lgga;->a()Lgga;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    invoke-interface {p1}, Lgga;->a()Lgga;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p0
.end method
