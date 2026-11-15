.class public abstract Lzy5;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lhb0$a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "status"

    invoke-direct {v0, v1, p0}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lhb0$a;

    const-string v1, "main_url"

    invoke-direct {p0, v1, p1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lhb0$a;

    const-string v1, "video_url"

    invoke-direct {p1, v1, p2}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lhb0$a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "num"

    invoke-direct {p2, v1, p3}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v0, p0, p1, p2}, [Lhb0$a;

    move-result-object p0

    const-string p1, "vd_dl_brower_rp_bt_alend"

    invoke-static {p1, p0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    return-void
.end method
