.class public Lfreemarker/core/BuiltInsForSequences$a;
.super Lkl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$a$b;,
        Lfreemarker/core/BuiltInsForSequences$a$a;
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
    .locals 2

    new-instance v0, Lfreemarker/core/BuiltInsForSequences$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/BuiltInsForSequences$a$a;-><init>(Lfreemarker/core/BuiltInsForSequences$a;Lnga;Lzl0;)V

    return-object v0
.end method
