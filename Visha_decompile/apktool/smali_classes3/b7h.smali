.class public final synthetic Lb7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance p0, Ld7h;

    invoke-direct {p0, p1}, Ld7h;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
