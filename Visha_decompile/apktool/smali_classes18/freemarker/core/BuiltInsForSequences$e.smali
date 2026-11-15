.class public Lfreemarker/core/BuiltInsForSequences$e;
.super Lkl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkl0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lnga;)Lzfa;
    .locals 0

    instance-of p0, p1, Lfreemarker/core/BuiltInsForSequences$e$a;

    if-eqz p0, :cond_0

    check-cast p1, Lfreemarker/core/BuiltInsForSequences$e$a;

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$e$a;->b(Lfreemarker/core/BuiltInsForSequences$e$a;)Lnga;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lfreemarker/core/BuiltInsForSequences$e$a;

    invoke-direct {p0, p1}, Lfreemarker/core/BuiltInsForSequences$e$a;-><init>(Lnga;)V

    return-object p0
.end method
