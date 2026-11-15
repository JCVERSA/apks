.class public abstract Lnd0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lnd0;
    .locals 1

    new-instance v0, La30;

    invoke-direct {v0, p0}, La30;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Lbs1;
    .locals 2

    new-instance v0, Lha5;

    invoke-direct {v0}, Lha5;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/cct/internal/a;->a:Lze1;

    invoke-virtual {v0, v1}, Lha5;->j(Lze1;)Lha5;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lha5;->k(Z)Lha5;

    move-result-object v0

    invoke-virtual {v0}, Lha5;->i()Lbs1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
.end method
