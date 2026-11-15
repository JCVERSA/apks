.class public final Lll1$b;
.super Ljt8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lll1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 1

    const-class v0, Lll1$b;

    invoke-direct {p0, p1, v0}, Ljt8;-><init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lit8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lll1$b;->c(Lit8;)Lll1;

    move-result-object p0

    return-object p0
.end method

.method public c(Lit8;)Lll1;
    .locals 1

    new-instance p0, Lll1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lll1;-><init>(Lit8;Lll1$a;)V

    return-object p0
.end method
