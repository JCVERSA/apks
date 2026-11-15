.class public Lfreemarker/core/BuiltInsForSequences$f;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$f$b;,
        Lfreemarker/core/BuiltInsForSequences$f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lnga;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->b(Lzfa;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$f$b;

    check-cast v0, Lnga;

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/BuiltInsForSequences$f$b;-><init>(Lfreemarker/core/BuiltInsForSequences$f;Lnga;Lfreemarker/core/Environment;Lzl0;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Lbfa;

    if-eqz v1, :cond_1

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$f$a;

    check-cast v0, Lbfa;

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/BuiltInsForSequences$f$a;-><init>(Lfreemarker/core/BuiltInsForSequences$f;Lbfa;Lfreemarker/core/Environment;Lzl0;)V

    return-object v1

    :cond_1
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method
