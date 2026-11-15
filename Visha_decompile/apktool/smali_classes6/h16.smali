.class public abstract Lh16;
.super Lhb0;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "\u66f4\u591a\u83dc\u5355"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static b(Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "time_ascend"

    goto :goto_0

    :cond_0
    const-string p0, "time_descend"

    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "name_ascend"

    goto :goto_1

    :cond_2
    const-string p0, "name_descend"

    :goto_1
    return-object p0

    :cond_3
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->SIZE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_5

    if-eqz p1, :cond_4

    const-string p0, "size_ascend"

    goto :goto_2

    :cond_4
    const-string p0, "size_descend"

    :goto_2
    return-object p0

    :cond_5
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_7

    if-eqz p1, :cond_6

    const-string p0, "frequency_ascend"

    goto :goto_3

    :cond_6
    const-string p0, "frequency_descend"

    :goto_3
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    const-string p0, "duration_ascend"

    goto :goto_4

    :cond_8
    const-string p0, "duration_descend"

    :goto_4
    return-object p0
.end method

.method public static c()V
    .locals 6

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->c()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v3}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {v0, v1}, Lh16;->b(Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "order_by"

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lh16;->b(Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v0, "moretab_tomp3_listpage_order_cl"

    const-wide/16 v4, 0x246c

    invoke-static {v3, v2, v0, v4, v5}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    sget-object p1, Lh16;->a:Ljava/lang/String;

    const-string p2, "from"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lh16;->a:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lh16;->a:Ljava/lang/String;

    return-void
.end method
