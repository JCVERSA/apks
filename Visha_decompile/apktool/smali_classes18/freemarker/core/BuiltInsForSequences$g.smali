.class public Lfreemarker/core/BuiltInsForSequences$g;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$g$a;
    }
.end annotation


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    iput p1, p0, Lfreemarker/core/BuiltInsForSequences$g;->k:I

    return-void
.end method

.method public static synthetic h0(Lfreemarker/core/BuiltInsForSequences$g;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/BuiltInsForSequences$g;->k:I

    return p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    new-instance v0, Lfreemarker/core/BuiltInsForSequences$g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/BuiltInsForSequences$g$a;-><init>(Lfreemarker/core/BuiltInsForSequences$g;Lfreemarker/core/Environment;Lzl0;)V

    return-object v0
.end method
