.class public final Lcti;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2

    invoke-static {p0, p1, p2}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lysi;

    invoke-interface {v0}, Lysi;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lysi;->e(I)Lysi;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object v0
.end method
