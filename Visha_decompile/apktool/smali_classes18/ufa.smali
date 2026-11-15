.class public abstract Lufa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lufa$a;,
        Lufa$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltfa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lufa;-><init>()V

    return-void
.end method

.method public static a()Lufa;
    .locals 1

    invoke-static {}, Lufa$a;->f()Lufa$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)Lufa;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lufa$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lufa$b;-><init>(Ljava/lang/String;Ljava/lang/Object;Ltfa;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lufa;->a()Lufa;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method
