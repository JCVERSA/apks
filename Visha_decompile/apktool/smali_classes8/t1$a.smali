.class public final Lt1$a;
.super Ld2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1;
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
.method public c(Ls1;)Lp1;
    .locals 0

    invoke-virtual {p1}, Ls1;->F()Lt1;

    move-result-object p0

    return-object p0
.end method
