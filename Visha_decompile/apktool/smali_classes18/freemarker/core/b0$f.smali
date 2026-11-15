.class public Lfreemarker/core/b0$f;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Number;Lzfa;)Lzfa;
    .locals 0

    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(F)V

    return-object p0
.end method
