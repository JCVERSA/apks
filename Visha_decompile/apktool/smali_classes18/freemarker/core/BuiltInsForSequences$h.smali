.class public Lfreemarker/core/BuiltInsForSequences$h;
.super Lfreemarker/core/BuiltInsForSequences$sortBI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$sortBI;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lnga;)Lzfa;
    .locals 1

    new-instance v0, Lfreemarker/core/BuiltInsForSequences$h$a;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/BuiltInsForSequences$h$a;-><init>(Lfreemarker/core/BuiltInsForSequences$h;Lnga;)V

    return-object v0
.end method
