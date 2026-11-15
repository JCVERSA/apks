.class public Lfreemarker/core/BuiltInsForSequences$b;
.super Lkl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

    invoke-interface {p1}, Lnga;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lnga;->get(I)Lzfa;

    move-result-object p0

    return-object p0
.end method
