.class public Lfreemarker/core/BuiltInsForSequences$c;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$c$a;
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
    .locals 4

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lbfa;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, Lfreemarker/core/RightUnboundedRangeModel;

    if-nez v1, :cond_0

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$c$a;

    check-cast v0, Lbfa;

    invoke-direct {v1, p0, p1, v0, v2}, Lfreemarker/core/BuiltInsForSequences$c$a;-><init>(Lfreemarker/core/BuiltInsForSequences$c;Lfreemarker/core/Environment;Lbfa;Lzl0;)V

    return-object v1

    :cond_0
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    const-string p1, "The sequence to join was right-unbounded numerical range, thus it\'s infinitely long."

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v1, v0, Lnga;

    if-eqz v1, :cond_2

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$c$a;

    new-instance v3, Lfreemarker/core/CollectionAndSequence;

    check-cast v0, Lnga;

    invoke-direct {v3, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    invoke-direct {v1, p0, p1, v3, v2}, Lfreemarker/core/BuiltInsForSequences$c$a;-><init>(Lfreemarker/core/BuiltInsForSequences$c;Lfreemarker/core/Environment;Lbfa;Lzl0;)V

    return-object v1

    :cond_2
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method
