.class public Lcom/transsion/athena/hatnea/hatnea;
.super Lcom/transsion/athena/hatnea/enatha;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/hatnea/hatnea$a;
    }
.end annotation


# instance fields
.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/util/List;ZLandroid/util/SparseArray;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;Z",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/enatha;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/athena/hatnea/hatnea;->g:Z

    iput-object p2, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    iput-boolean p4, p0, Lcom/transsion/athena/hatnea/hatnea;->c:Z

    iput-object p5, p0, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    return-void
.end method

.method private a(JLjava/lang/String;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 272
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 273
    iget-object v0, v1, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v0, v4

    move v5, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/athena/data/AppIdData;

    .line 274
    iget-object v7, v6, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    iget-object v8, v1, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v7

    iget v8, v6, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v7, v8}, Le5d;->n(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 276
    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 277
    :goto_1
    invoke-static {v7}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 278
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v5

    move v5, v0

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-wide/from16 v13, p1

    .line 279
    invoke-virtual {v9, v13, v14}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowUpload(J)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 280
    :cond_4
    iget-boolean v0, v1, Lcom/transsion/athena/hatnea/hatnea;->c:Z

    if-eqz v0, :cond_5

    .line 281
    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v10

    new-instance v12, Lmhd;

    invoke-direct {v12}, Lmhd;-><init>()V

    invoke-virtual {v0, v10, v11, v12}, Lcom/transsion/athena/data/anateh/aethna;->a(JLcom/transsion/athena/data/anateh/aethna$athena;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Upload 1.x events exception : %s"

    invoke-static {v11, v10}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v10, "checkUploadFile"

    .line 283
    invoke-static {v10, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :cond_5
    :goto_3
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v10

    invoke-virtual {v9}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v11

    const v0, 0xe1000

    sub-int v16, v0, v8

    rsub-int v9, v5, 0x7d0

    move-wide/from16 v13, p1

    move-object/from16 v15, p3

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/transsion/athena/data/anateh/aethna;->a(JJLjava/lang/String;II)Lcom/transsion/athena/data/anehat;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 285
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 286
    :cond_6
    iget-object v10, v6, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget v10, v9, Lcom/transsion/athena/data/anehat;->f:I

    add-int/2addr v5, v10

    .line 288
    iget v9, v9, Lcom/transsion/athena/data/anehat;->g:I

    add-int/2addr v8, v9

    const/16 v9, 0x7d0

    if-ge v5, v9, :cond_7

    if-lt v8, v0, :cond_3

    .line 289
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Packet size out of limit, packetSize [%d], eventCount [%d]"

    invoke-static {v1, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    move v0, v5

    move v5, v8

    goto :goto_4

    .line 290
    :cond_9
    iget v7, v6, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Appid [%d] checkUpload tid config is null."

    invoke-static {v8, v7}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :goto_4
    iget-object v7, v6, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-static {v7}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 292
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 293
    :cond_a
    :goto_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const/16 v3, 0x8

    if-ge v4, v3, :cond_b

    const/16 v3, 0x24

    .line 296
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v5, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 297
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p3

    .line 299
    :goto_7
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static synthetic a(Landroid/util/SparseArray;)V
    .locals 6

    const/4 v0, 0x0

    .line 230
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 231
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/data/enatha;

    .line 232
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 233
    iget v3, v1, Lcom/transsion/athena/data/enatha;->a:I

    const-string v4, "appid"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 234
    iget-object v3, v1, Lcom/transsion/athena/data/enatha;->b:Ljava/lang/String;

    const-string v4, "date"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget v3, v1, Lcom/transsion/athena/data/enatha;->c:I

    const-string v4, "count"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 236
    iget v1, v1, Lcom/transsion/athena/data/enatha;->d:I

    const-string v3, "packet"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    new-instance v1, Lwj;

    const/16 v3, 0x270f

    const-string v4, "day_up_record"

    invoke-direct {v1, v4, v3}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v1

    invoke-virtual {v1}, Lwj;->b()V

    .line 238
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    new-instance v1, Lwj;

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lwj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v1

    invoke-virtual {v1}, Lwj;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;Z)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    .line 240
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/taaneh/a;->b()Ljava/lang/String;

    move-result-object p3

    .line 241
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 243
    :cond_0
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    rem-int/lit8 p3, p3, 0x1e

    const v0, 0xea60

    mul-int/2addr p3, v0

    goto :goto_1

    :cond_1
    const p3, 0x1b7740

    goto :goto_1

    :cond_2
    move p3, p0

    .line 246
    :goto_1
    invoke-virtual {p1, p2}, Lcom/transsion/athena/config/data/model/athena;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 247
    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    .line 249
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/config/data/model/athena;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 250
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Handle pull config exception after upload : %s"

    invoke-static {p2, p1}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "handlePullConfig"

    .line 251
    invoke-static {p1, p0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/transsion/athena/hatnea/a;Ljava/util/List;JI)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/hatnea/a;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;JI)V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    .line 177
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    .line 180
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v7

    new-instance v12, Lnhd;

    invoke-direct {v12}, Lnhd;-><init>()V

    move-object v8, p2

    move-wide/from16 v9, p3

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/anateh/enatha;)V

    .line 182
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v0

    const-string v3, "first_launch"

    const-string v5, "false"

    invoke-virtual {v0, v3, v5}, Le4d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "requestId"

    move/from16 v5, p5

    .line 185
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "code"

    .line 186
    :try_start_1
    iget v5, v2, Lcom/transsion/athena/hatnea/a;->a:I

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "message"

    .line 187
    :try_start_2
    iget-object v5, v2, Lcom/transsion/athena/hatnea/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "app"

    .line 188
    :try_start_3
    iget-object v5, v2, Lcom/transsion/athena/hatnea/a;->c:Ljava/util/List;

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 190
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/athena/data/AppIdData;

    .line 191
    iget-object v7, v7, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/athena/data/anehat;

    .line 192
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, "tid"

    .line 193
    :try_start_4
    iget-wide v11, v8, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v10, "event"

    .line 194
    :try_start_5
    iget-object v11, v8, Lcom/transsion/athena/data/anehat;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v10, "count"

    .line 195
    :try_start_6
    iget v8, v8, Lcom/transsion/athena/data/anehat;->f:I

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const-string v5, "events"

    .line 197
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v3, "<-- upload success:%s"

    .line 198
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 200
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "exception when print upload events success: "

    invoke-static {v3, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_2
    iget-boolean v0, v1, Lcom/transsion/athena/hatnea/hatnea;->g:Z

    if-eqz v0, :cond_4

    .line 202
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/data/AppIdData;

    .line 203
    iget v3, v3, Lcom/transsion/athena/data/AppIdData;->a:I

    .line 204
    iget-object v5, v1, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 205
    iget-object v5, v1, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    const-string v7, ""

    invoke-virtual {v5, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "first_page_enter_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v3, v7}, Le4d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/data/AppIdData;

    .line 210
    iget-object v3, v3, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/athena/data/anehat;

    .line 211
    iget-boolean v8, v7, Lcom/transsion/athena/data/anehat;->h:Z

    if-eqz v8, :cond_5

    .line 212
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v8

    iget-wide v9, v7, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v8, v9, v10}, Le5d;->m(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 213
    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v8

    move-wide/from16 v9, p3

    invoke-virtual {v8, v9, v10}, Lcom/transsion/athena/config/data/model/aatnhe;->c(J)V

    .line 214
    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/transsion/athena/config/data/model/aatnhe;->a(I)V

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p3

    goto :goto_5

    :cond_6
    move-wide/from16 v9, p3

    goto :goto_4

    .line 215
    :cond_7
    iget-object v0, v2, Lcom/transsion/athena/hatnea/a;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/hatnea/a$a;

    .line 217
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v3

    iget v7, v0, Lcom/transsion/athena/hatnea/a$a;->a:I

    invoke-virtual {v3, v7}, Le5d;->n(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 218
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/a$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 219
    iget v7, v0, Lcom/transsion/athena/hatnea/a$a;->b:I

    if-ne v7, v4, :cond_9

    .line 220
    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/a$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    :try_start_8
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/transsion/athena/data/anateh/aethna;->a(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 222
    invoke-virtual {v3, v0}, Lcom/transsion/athena/config/data/model/athena;->d(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    .line 223
    invoke-virtual {v3, v7, v8}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    const-wide/16 v7, -0x1

    .line 224
    invoke-virtual {v3, v7, v8}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    .line 225
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/config/data/model/athena;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, "Handle cleanup data exception : %s"

    invoke-static {v7, v3}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "handleCleanupData"

    .line 227
    invoke-static {v3, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    if-ne v7, v6, :cond_a

    .line 228
    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_a
    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 229
    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_b
    return-void
.end method

.method private static synthetic a(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 1

    .line 300
    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/athena/hatnea/c;->e(Lcom/transsion/athena/hatnea/anateh;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;JJI)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;",
            "Ljava/lang/String;",
            "JJI)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 23
    const-string v2, "requestId"

    const-string v3, "opid"

    const-string v4, "app_active"

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    :goto_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo3d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const-string v0, "network unavailable"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tryUploadEvents interrupted : %s"

    invoke-static {v1, v0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_23

    .line 25
    :cond_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/a;->k(Landroid/content/Context;)Z

    move-result v10

    .line 26
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 27
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v14, "events"

    const/16 v16, -0x1

    move-wide/from16 p4, v7

    const-string v7, "net"

    const-string v8, "Assemble events packet exception : %s"

    move-wide/from16 p6, v5

    const-string v5, "tid"

    const-string v6, "event"

    move-object/from16 v17, v2

    const-string v2, ""

    if-eqz v0, :cond_20

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v13

    move-object v13, v0

    check-cast v13, Lcom/transsion/athena/data/AppIdData;

    move/from16 v19, v9

    .line 29
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 30
    iget-object v0, v13, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move-object/from16 v22, v3

    const-string v3, "eparam"

    move-object/from16 v23, v11

    if-eqz v0, :cond_15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/transsion/athena/data/anehat;

    .line 31
    iget-object v0, v11, Lcom/transsion/athena/data/anehat;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/anehat$athena;

    move/from16 v26, v15

    .line 32
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    :try_start_1
    iget-wide v12, v11, Lcom/transsion/athena/data/anehat;->a:J

    .line 33
    invoke-virtual {v15, v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v12

    iget-object v13, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v13, :cond_1

    move-object v13, v2

    .line 34
    :cond_1
    invoke-virtual {v12, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v13, "ts"

    move-object/from16 v29, v14

    :try_start_2
    iget-wide v14, v0, Lcom/transsion/athena/data/anehat$athena;->b:J

    .line 35
    invoke-virtual {v12, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v12

    iget v13, v0, Lcom/transsion/athena/data/anehat$athena;->d:I

    .line 36
    invoke-virtual {v12, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    .line 37
    iget-object v13, v0, Lcom/transsion/athena/data/anehat$athena;->c:Ljava/lang/String;

    if-nez v13, :cond_2

    move-object v13, v2

    .line 38
    :cond_2
    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_3

    move-object v14, v2

    :cond_3
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v15, "app_heartbeat"

    move-object/from16 v30, v7

    const-string v7, "app_launch"

    move/from16 v31, v10

    const-string v10, "page_enter"

    if-nez v14, :cond_8

    :try_start_3
    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_4

    move-object v14, v2

    .line 39
    :cond_4
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_5

    move-object v14, v2

    .line 40
    :cond_5
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_6

    move-object v14, v2

    .line 41
    :cond_6
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_4

    .line 42
    :cond_7
    invoke-virtual {v12, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v33, v5

    move-object/from16 v32, v6

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v32, v6

    goto/16 :goto_b

    .line 43
    :cond_8
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5

    :cond_9
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    .line 44
    :goto_5
    iget-object v0, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v32, v6

    const v6, -0x6b598fa2

    move-object/from16 v33, v5

    const/4 v5, 0x2

    if-eq v14, v6, :cond_e

    const v6, 0x2ce78ae4

    if-eq v14, v6, :cond_d

    const v6, 0x3f912f91

    if-eq v14, v6, :cond_c

    const v6, 0x605d6528

    if-eq v14, v6, :cond_b

    goto :goto_6

    :cond_b
    :try_start_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto :goto_7

    :cond_f
    :goto_6
    move/from16 v0, v16

    :goto_7
    if-eqz v0, :cond_13

    const/4 v6, 0x1

    if-eq v0, v6, :cond_12

    if-eq v0, v5, :cond_11

    const/4 v5, 0x3

    if-eq v0, v5, :cond_10

    goto :goto_8

    .line 45
    :cond_10
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v12, v13, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 46
    :cond_11
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v12, v13, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 47
    :cond_12
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->l()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v12, v13, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 48
    :cond_13
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v12, v13, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 49
    :goto_8
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_9
    move/from16 v15, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move/from16 v10, v31

    move-object/from16 v6, v32

    move-object/from16 v5, v33

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v32, v6

    move-object/from16 v30, v7

    move/from16 v31, v10

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v32, v6

    move-object/from16 v30, v7

    move/from16 v31, v10

    :goto_a
    move-object/from16 v29, v14

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v32, v6

    move-object/from16 v30, v7

    move/from16 v31, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    goto :goto_a

    .line 50
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_14
    move-object/from16 v33, v5

    move-object/from16 v32, v6

    move-object/from16 v30, v7

    move/from16 v31, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move/from16 v26, v15

    .line 51
    iget v0, v11, Lcom/transsion/athena/data/anehat;->f:I

    add-int v21, v21, v0

    move-object/from16 v3, v22

    move-object/from16 v11, v23

    goto/16 :goto_2

    :cond_15
    move-object/from16 v33, v5

    move-object/from16 v32, v6

    move/from16 v31, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move/from16 v26, v15

    .line 52
    iget-object v0, v1, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    move-object/from16 v5, v28

    iget v6, v5, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "appid"

    if-nez v6, :cond_1a

    .line 54
    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 56
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_10

    :cond_16
    move-object v0, v2

    .line 57
    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_d

    :cond_17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 58
    :goto_d
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->l()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v6, v0, v3}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    move-object/from16 v3, v33

    .line 59
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x270f

    cmp-long v0, v10, v12

    if-gez v0, :cond_19

    .line 60
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    iget v10, v5, Lcom/transsion/athena/data/AppIdData;->a:I

    move-object/from16 v11, v32

    .line 61
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Le5d;->c(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 62
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v10

    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    .line 64
    :cond_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    iget v3, v5, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v3, "invalid or not registered:%s"

    .line 67
    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 69
    :cond_19
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_e
    add-int/lit8 v21, v21, 0x1

    :goto_f
    const/4 v3, 0x1

    goto :goto_11

    .line 70
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Insert FPE event exception : %s"

    invoke-static {v3, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 71
    :goto_11
    iput-boolean v3, v1, Lcom/transsion/athena/hatnea/hatnea;->g:Z

    :cond_1a
    move/from16 v3, v21

    .line 72
    :try_start_7
    iget-object v0, v5, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v9, v27

    move/from16 v6, v31

    goto/16 :goto_14

    .line 74
    :cond_1b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, v5, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    :goto_12
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget v10, v5, Lcom/transsion/athena/data/AppIdData;->a:I

    .line 76
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const-string v7, "hostid"

    .line 77
    :try_start_8
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v10

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const-string v7, "pkg"

    :try_start_9
    const-string v10, "pkgName"

    .line 78
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1c

    move-object v10, v2

    :cond_1c
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const-string v7, "vn"

    :try_start_a
    const-string v10, "versionName"

    .line 79
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1d

    move-object v10, v2

    :cond_1d
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const-string v7, "vc"

    :try_start_b
    const-string v10, "versionCode"

    .line 80
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1e

    move-object v10, v2

    :cond_1e
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const-string v7, "sdkv"

    const-string v10, "3.1.1.2"

    .line 81
    :try_start_c
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    const-string v7, "ins"

    :try_start_d
    const-string v10, "installer"

    .line 82
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_13

    :cond_1f
    move-object v2, v0

    :goto_13
    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isfl"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move/from16 v6, v31

    .line 83
    :try_start_e
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "cnt"

    .line 84
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v7, v29

    .line 85
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-object/from16 v9, v27

    .line 86
    :try_start_f
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    goto :goto_14

    :catch_8
    move-exception v0

    move-object/from16 v9, v27

    .line 87
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    add-int v15, v26, v3

    .line 88
    iget v0, v5, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v23

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v7, p4

    move-object v11, v5

    move v10, v6

    move-object v12, v9

    move-object/from16 v2, v17

    move-object/from16 v13, v18

    move/from16 v9, v19

    move-object/from16 v3, v22

    move-wide/from16 v5, p6

    goto/16 :goto_1

    :cond_20
    move-object/from16 v22, v3

    move-object v3, v5

    move-object/from16 v30, v7

    move/from16 v19, v9

    move-object v5, v11

    move-object v9, v12

    move-object v7, v14

    move/from16 v26, v15

    move-object v11, v6

    .line 89
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :try_start_10
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    const-string v10, "channel"

    .line 91
    :try_start_11
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_21

    move-object v12, v2

    :cond_21
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 92
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object/from16 v12, v22

    :try_start_12
    invoke-static {v10, v12}, Lcom/transsion/athena/taaneh/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_22

    move-object v10, v2

    :cond_22
    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    const-string v10, "tsid"

    .line 93
    :try_start_13
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v13

    const-string v14, "oneid"

    invoke-static {v13, v14}, Lcom/transsion/athena/taaneh/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_23

    move-object v13, v2

    :cond_23
    invoke-virtual {v6, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    const-string v10, "vaid"

    .line 94
    :try_start_14
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    invoke-static {}, Lsbd;->a()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_24

    move-object v13, v2

    :cond_24
    invoke-virtual {v6, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 95
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->h()Lorg/json/JSONObject;

    move-result-object v10
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    const-string v13, "ossv"

    .line 96
    :try_start_15
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lohd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-lez v13, :cond_26

    .line 98
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    array-length v13, v13
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    const/16 v14, 0x7d0

    const-string v15, "cparam"

    if-le v13, v14, :cond_25

    .line 99
    :try_start_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    const-string v14, "custom param is too long, limit is 2000 bytes(now is %d bytes)"

    .line 100
    :try_start_17
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    .line 101
    invoke-static {v10, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    const-string v13, "%s"

    .line 102
    :try_start_18
    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "errorMsg"

    .line 104
    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    :catch_9
    move-exception v0

    move/from16 v10, v19

    goto/16 :goto_18

    .line 106
    :cond_25
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_26
    :goto_16
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    const-string v13, "actype"

    .line 108
    :try_start_19
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    move-result v14

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    const-string v13, "aver"

    :try_start_1a
    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v14, :cond_27

    move-object v14, v2

    .line 109
    :cond_27
    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v13, "appids"

    .line 110
    invoke-virtual {v10, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const-string v10, "brand"

    :try_start_1b
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v13, :cond_28

    move-object v13, v2

    .line 111
    :cond_28
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    const-string v10, "build"

    :try_start_1c
    sget-object v13, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-nez v13, :cond_29

    move-object v13, v2

    .line 112
    :cond_29
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    const-string v10, "ekey"

    .line 113
    :try_start_1d
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    const-string v9, "gaid"

    .line 114
    :try_start_1e
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/athena/taaneh/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2a

    move-object v10, v2

    :cond_2a
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    const-string v9, "lang"

    .line 115
    :try_start_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2b

    move-object v10, v2

    :cond_2b
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9

    const-string v9, "mcc"

    .line 116
    :try_start_20
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/athena/taaneh/athena;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2c

    move-object v10, v2

    :cond_2c
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    const-string v9, "mnc"

    .line 117
    :try_start_21
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/athena/taaneh/athena;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2d

    move-object v10, v2

    :cond_2d
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9

    const-string v9, "model"

    :try_start_22
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v10, :cond_2e

    move-object v10, v2

    .line 118
    :cond_2e
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 119
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lo3d;->d(Landroid/content/Context;)I

    move-result v9

    move-object/from16 v10, v30

    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    const-string v9, "osver"

    .line 120
    :try_start_23
    invoke-static {}, Lohd;->a()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2f

    move-object v10, v2

    :cond_2f
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9

    const-string v9, "tuid"

    .line 121
    :try_start_24
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_30

    move-object v10, v2

    :cond_30
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "try"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    move/from16 v10, v19

    .line 122
    :try_start_25
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_a

    const-string v9, "tz"

    .line 123
    :try_start_26
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->k()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_31

    move-object v13, v2

    :cond_31
    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_a

    const-string v9, "uts"

    .line 124
    :try_start_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v6, v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    .line 125
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->S()Z

    move-result v9
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_a

    if-eqz v9, :cond_33

    const-string v9, "iid"

    if-nez v0, :cond_32

    move-object v0, v2

    .line 126
    :cond_32
    :try_start_28
    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17

    :catch_a
    move-exception v0

    goto :goto_18

    .line 127
    :cond_33
    :goto_17
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move/from16 v14, v26

    .line 128
    invoke-static {v0, v14, v5, v10}, Lcom/transsion/athena/hatnea/hatnea$a;->a([BILjava/util/List;I)Lcom/transsion/athena/hatnea/hatnea$a;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_a

    goto :goto_19

    :catch_b
    move-exception v0

    move/from16 v10, v19

    move-object/from16 v12, v22

    .line 129
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 130
    :goto_19
    iget-object v5, v1, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/athena/hatnea/hatnea$a;->a:[B

    iget v8, v0, Lcom/transsion/athena/hatnea/hatnea$a;->b:I

    iget-object v0, v0, Lcom/transsion/athena/hatnea/hatnea$a;->c:Ljava/util/List;

    .line 131
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v9

    .line 132
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_34

    invoke-static {}, Lcom/transsion/athena/taaneh/a;->b()Ljava/lang/String;

    move-result-object v13

    goto :goto_1a

    :cond_34
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v14}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 133
    :goto_1a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 134
    invoke-static {v9}, Lcom/transsion/athena/taaneh/athena;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 135
    :cond_35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%s_%d"

    invoke-static {v9, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v8

    move-object/from16 v21, v0

    move-object/from16 v22, p2

    .line 136
    invoke-static/range {v18 .. v23}, Ltbd;->a(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Ltbd;

    move-result-object v5

    .line 137
    :try_start_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    const-string v6, "host"

    .line 138
    :try_start_2a
    iget-object v8, v1, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_10

    move-object/from16 v8, v17

    :try_start_2b
    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "packetId"
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_f

    move-object/from16 v9, p2

    .line 140
    :try_start_2c
    invoke-virtual {v0, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 142
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_36
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_37

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/athena/data/AppIdData;

    .line 143
    iget-object v14, v14, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_36

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/athena/data/anehat;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e

    move-object/from16 p3, v2

    .line 144
    :try_start_2d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_d

    move-object/from16 v22, v12

    move-object/from16 v17, v13

    .line 145
    :try_start_2e
    iget-wide v12, v15, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v2, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    iget-object v12, v15, Lcom/transsion/athena/data/anehat;->b:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_c

    const-string v12, "count"

    .line 147
    :try_start_2f
    iget v13, v15, Lcom/transsion/athena/data/anehat;->f:I

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v2, p3

    move-object/from16 v13, v17

    move-object/from16 v12, v22

    goto :goto_1b

    :catch_c
    move-exception v0

    goto :goto_1f

    :catch_d
    move-exception v0

    :goto_1c
    move-object/from16 v22, v12

    goto :goto_1f

    :catch_e
    move-exception v0

    :goto_1d
    move-object/from16 p3, v2

    goto :goto_1c

    :cond_37
    move-object/from16 p3, v2

    move-object/from16 v22, v12

    .line 149
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_c

    const-string v2, "%s:%s"

    if-lez v10, :cond_38

    .line 150
    :try_start_30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_c

    const-string v6, "--> retry [%d] times upload"

    .line 151
    :try_start_31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 152
    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_c

    goto :goto_1e

    :cond_38
    const-string v3, "--> upload"

    .line 153
    :goto_1e
    :try_start_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_c

    goto :goto_20

    :catch_f
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_1d

    :catch_10
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 p3, v2

    move-object/from16 v22, v12

    move-object/from16 v8, v17

    .line 156
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "exception when print upload events : "

    invoke-static {v2, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_20
    iget-object v0, v5, Ltbd;->a:Ljava/lang/String;

    iget-object v2, v5, Ltbd;->b:[B

    iget v3, v5, Ltbd;->c:I

    iget-object v6, v5, Ltbd;->d:Ljava/util/List;

    iget-object v7, v5, Ltbd;->e:Ljava/lang/String;

    iget-object v11, v5, Ltbd;->f:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v11

    invoke-static/range {v23 .. v28}, Lcom/transsion/athena/hatnea/b;->f(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lrbd;

    move-result-object v0

    .line 158
    iget v2, v0, Lrbd;->a:I

    if-nez v2, :cond_39

    .line 159
    iget-object v0, v0, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/a;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move-wide/from16 p5, p6

    move/from16 p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/hatnea/a;Ljava/util/List;JI)V

    .line 160
    iget-object v0, v1, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const/16 v2, 0x12a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 161
    iget-object v0, v1, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_23

    .line 162
    :cond_39
    :try_start_33
    iget-object v0, v0, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/a;

    .line 163
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 164
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_11

    const-string v3, "code"

    .line 165
    :try_start_34
    iget v5, v0, Lcom/transsion/athena/hatnea/a;->a:I

    if-nez v5, :cond_3a

    move/from16 v5, v16

    :cond_3a
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_11

    const-string v3, "message"

    .line 166
    :try_start_35
    iget-object v5, v0, Lcom/transsion/athena/hatnea/a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    move-object/from16 v5, p3

    goto :goto_21

    :cond_3b
    iget-object v5, v0, Lcom/transsion/athena/hatnea/a;->b:Ljava/lang/String;

    :goto_21
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_11

    const-string v3, "ex"

    .line 167
    :try_start_36
    iget-object v0, v0, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_11

    const-string v0, "<-- upload failed:%s"

    .line 168
    :try_start_37
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_11

    goto :goto_22

    :catch_11
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "exception when print upload events success: "

    invoke-static {v2, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v10, 0x1

    .line 171
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;I)V

    .line 172
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_23

    .line 173
    :cond_3c
    :try_start_38
    invoke-static/range {p4 .. p5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_12

    const-wide/16 v5, 0x2

    move-wide/from16 v10, p4

    mul-long/2addr v5, v10

    const-wide/16 v10, 0x3e8

    add-long/2addr v5, v10

    const-wide/32 v10, 0x1b7740

    .line 174
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 175
    invoke-static {}, La4d;->f()La4d;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v2, v10, v11, v12, v13}, La4d;->a(JJ)J

    move-result-wide v10

    move v9, v0

    move-object v2, v8

    move-object/from16 v3, v22

    move-wide v7, v5

    move-wide v5, v10

    goto/16 :goto_0

    :catch_12
    move-exception v0

    move-object v1, v0

    .line 176
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Retry upload interrupted!! : %s"

    invoke-static {v1, v0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    :goto_23
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    const-string p0, "_ext"

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 252
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 253
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 254
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 256
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 257
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    array-length p3, p3

    const/16 v1, 0x7d0

    if-le p3, v1, :cond_3

    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 265
    invoke-static {p3}, Lc4d;->d(Ljava/lang/String;)V

    .line 266
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errorMsg"

    .line 267
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 269
    :cond_3
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    const-string p0, "eparam"

    .line 270
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 271
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Insert common params exception : %s"

    invoke-static {p1, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/hatnea/anateh;)V

    return-void
.end method

.method public static synthetic e(Landroid/util/SparseArray;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/hatnea/hatnea;->a(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, La4d;->a(JJ)J

    move-result-wide v8

    .line 2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    .line 3
    iget-object v5, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    .line 4
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, v3, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    goto :goto_2

    :cond_4
    if-le v2, v0, :cond_7

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/data/AppIdData;

    .line 8
    iget-object v4, v3, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    .line 9
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_6
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;)V

    :cond_7
    move-object v3, v1

    .line 12
    :goto_2
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->q()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long v10, v4, v6

    if-eqz v3, :cond_8

    .line 13
    iget-object v0, v3, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 14
    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 15
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    .line 16
    invoke-static {v6}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget v12, v3, Lcom/transsion/athena/data/AppIdData;->d:I

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/transsion/athena/hatnea/hatnea;->a(Ljava/util/List;Ljava/lang/String;JJI)V

    goto :goto_3

    .line 18
    :cond_8
    invoke-direct {p0, v8, v9, v1}, Lcom/transsion/athena/hatnea/hatnea;->a(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 19
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 20
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 21
    invoke-static {v6}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v12, 0x0

    move-object v5, p0

    .line 22
    invoke-direct/range {v5 .. v12}, Lcom/transsion/athena/hatnea/hatnea;->a(Ljava/util/List;Ljava/lang/String;JJI)V

    :cond_9
    :goto_3
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Default"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get domain exception : %s"

    invoke-static {v0, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
