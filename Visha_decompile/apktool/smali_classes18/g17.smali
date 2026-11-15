.class public final Lg17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lzfa;
    .locals 0

    instance-of p0, p1, Lfreemarker/ext/dom/d;

    if-eqz p0, :cond_0

    check-cast p1, Lfreemarker/ext/dom/d;

    return-object p1

    :cond_0
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object p0

    return-object p0
.end method
