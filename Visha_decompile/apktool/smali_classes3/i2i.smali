.class public abstract Li2i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(C)Li2i;
    .locals 1

    new-instance v0, Lf2i;

    invoke-direct {v0, p0}, Lf2i;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public abstract a(C)Z
.end method

.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Li2i;->a(C)Z

    move-result p0

    return p0
.end method
