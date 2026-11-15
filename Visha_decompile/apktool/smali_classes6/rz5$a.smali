.class public final Lrz5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrz5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrz5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_click"

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, v0, v1}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final b(IIJ)V
    .locals 1

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "close_type"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "duration"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_close"

    const-wide/16 p2, 0x246c

    invoke-static {p1, p0, p2, p3}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_request"

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, v0, v1}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final d(IIJLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "ad_result"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "ad_time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    const-string p1, "ad_fail"

    invoke-virtual {p0, p1, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_response"

    const-wide/16 p2, 0x246c

    invoke-static {p1, p0, p2, p3}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 2

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p1, "ad_fail"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_show"

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, v0, v1}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final f(IJ)V
    .locals 1

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_skip"

    const-wide/16 p2, 0x246c

    invoke-static {p1, p0, p2, p3}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    const-string v1, "ad_strategy_id"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    move-object p2, v0

    :cond_3
    const-string p1, "ad_title"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move-object p3, v0

    :cond_5
    const-string p1, "ad_btn"

    invoke-virtual {p0, p1, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "page_type"

    invoke-virtual {p0, p1, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_click"

    const-wide/16 p2, 0x246c

    invoke-static {p1, p0, p2, p3}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "ad_placement"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    const-string v1, "ad_strategy_id"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    move-object p2, v0

    :cond_3
    const-string p1, "ad_title"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move-object p3, v0

    :cond_5
    const-string p1, "ad_btn"

    invoke-virtual {p0, p1, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "page_type"

    invoke-virtual {p0, p1, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    if-nez p5, :cond_6

    move-object p5, v0

    :cond_6
    const-string p1, "ad_fail"

    invoke-virtual {p0, p1, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_ad_show"

    const-wide/16 p2, 0x246c

    invoke-static {p1, p0, p2, p3}, Lp06;->y0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method
