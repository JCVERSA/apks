.class public final La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-wide p1, p0, La/b;->a:J

    const/4 p1, 0x1

    .line 585
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La/b;->b:I

    const/4 p1, 0x0

    .line 586
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La/b;->c:I

    const-wide p1, 0x20c49ba5e353f7L

    .line 589
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    .line 587
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, La/b;->d:J

    .line 591
    iput-object p7, p0, La/b;->e:Ljava/lang/String;

    .line 592
    iput-object p8, p0, La/b;->f:Ljava/lang/String;

    .line 593
    iput-object p9, p0, La/b;->g:Ljava/lang/String;

    .line 594
    iput-boolean p10, p0, La/b;->h:Z

    .line 595
    iput-boolean p11, p0, La/b;->i:Z

    .line 596
    iput-boolean p12, p0, La/b;->j:Z

    .line 597
    iput-boolean p13, p0, La/b;->k:Z

    .line 598
    iput-object p14, p0, La/b;->l:Ljava/lang/String;

    .line 599
    iput-object p15, p0, La/b;->m:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 600
    iput-object p1, p0, La/b;->n:Ljava/lang/String;

    return-void
.end method

.method public static a()La/b;
    .locals 17

    .line 605
    new-instance v0, La/b;

    const-string v15, "Please download our new version from website."

    const-string v16, "Download"

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "Update Available"

    invoke-direct/range {v0 .. v16}, La/b;-><init>(JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)La/b;
    .locals 23

    move-object/from16 v0, p0

    .line 610
    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 612
    :cond_0
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 613
    invoke-static {}, La/b;->a()La/b;

    move-result-object v0

    return-object v0

    .line 615
    :cond_1
    const-string v1, "appVersion"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 616
    const-string v1, "adAfter"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 617
    const-string v1, "waitSeconds"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 618
    const-string v1, "supportAdResetSeconds"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v1, v7, v4

    if-ltz v1, :cond_c

    if-lt v9, v3, :cond_c

    if-ltz v10, :cond_c

    cmp-long v4, v11, v4

    if-ltz v4, :cond_c

    .line 622
    const-string v4, "adUrl"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 623
    const-string v4, "supportAdUrl"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 624
    const-string v4, "webUrl"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 625
    const-string v4, "playAdEnabled"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :goto_1
    move/from16 v16, v4

    goto :goto_2

    :cond_2
    invoke-static {v13}, La/b;->c(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    .line 626
    :goto_2
    const-string v4, "supportEnabled"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :goto_3
    move/from16 v17, v4

    goto :goto_4

    :cond_3
    invoke-static {v14}, La/b;->c(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    .line 627
    :goto_4
    const-string v4, "updateEnabled"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_4
    move/from16 v18, v2

    goto :goto_5

    :cond_5
    if-lez v1, :cond_4

    invoke-static {v15}, La/b;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v18, v3

    :goto_5
    if-eqz v16, :cond_7

    .line 628
    invoke-static {v13}, La/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enabled play ad requires a valid adUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_6
    if-eqz v17, :cond_9

    .line 629
    invoke-static {v14}, La/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enabled support requires a valid supportAdUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_7
    if-eqz v18, :cond_b

    if-lez v1, :cond_a

    .line 630
    invoke-static {v15}, La/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enabled update requires appVersion and webUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_b
    :goto_8
    new-instance v6, La/b;

    const-string v1, "forceUpdate"

    .line 642
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    const-string v1, "updateTitle"

    const-string v2, "Update Available"

    .line 643
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "updateMessage"

    const-string v2, "Please download our new version from website."

    .line 644
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "updateButton"

    const-string v2, "Download"

    .line 645
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "laterButton"

    const-string v2, "Later"

    .line 646
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {v6 .. v22}, La/b;-><init>(JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 620
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid remote config numeric range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 651
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
