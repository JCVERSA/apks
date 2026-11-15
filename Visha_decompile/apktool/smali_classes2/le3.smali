.class public final Lle3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lle3$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lle3;
    .locals 1

    invoke-static {}, Lle3$a;->a()Lle3;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 1

    invoke-static {}, Lie3;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .locals 0

    invoke-static {}, Lle3;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lle3;->b()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
