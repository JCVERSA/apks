.class public final Ll1$a;
.super Ld2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld2;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public d(Lwp1;)Lp1;
    .locals 0

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ll1;->z([BZ)Ll1;

    move-result-object p0

    return-object p0
.end method
