.class public final synthetic Lf7h;
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

    check-cast p1, Lze;

    new-instance p0, Lj7h;

    invoke-virtual {p1}, Lze;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lze;->b()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lj7h;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
