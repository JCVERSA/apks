.class public abstract Lq16;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    const-string p0, "categories"

    return-object p0

    :cond_0
    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    const-string p0, "grid"

    return-object p0

    :cond_1
    const-string p0, "list"

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lw6c;->n(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "video_adapter_grid_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "grid"

    return-object p0

    :cond_0
    invoke-static {p0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "categories"

    return-object p0

    :cond_1
    const-string p0, "list"

    return-object p0

    :cond_2
    invoke-static {v0}, Lq16;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->fromValue(I)Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object p0

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_0

    const-string p0, "name"

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->SIZE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_1

    const-string p0, "size"

    return-object p0

    :cond_1
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DURATION:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_2

    const-string p0, "length"

    return-object p0

    :cond_2
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_3

    const-string p0, "playbackrecord"

    return-object p0

    :cond_3
    const-string p0, "date"

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v0

    const-string v1, "video_pref_sort_name"

    invoke-static {p0, v1, v0}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lq16;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(IIII)V
    .locals 4

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    if-eq p0, p1, :cond_0

    invoke-static {p1}, Lq16;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "layout"

    invoke-virtual {v0, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {p1}, Lq16;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eq p2, p3, :cond_1

    invoke-static {p3}, Lq16;->c(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sort"

    invoke-virtual {v0, p1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {p3}, Lq16;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v2, p0

    :goto_1
    if-eqz v2, :cond_2

    const-string p0, "vd_page_layout_switch_cl"

    const-wide/16 p1, 0x246c

    invoke-static {v0, v1, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lq16;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lq16;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "layout"

    invoke-virtual {v1, v3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v4, "sort"

    invoke-virtual {v1, v4, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "vd_page_layout_show"

    const-wide/16 v3, 0x246c

    invoke-static {v1, v2, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
