.class public final Lcom/doman/core/b/a/g;
.super Lcom/doman/core/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/doman/core/b/a/d<",
        "Lcom/doman/core/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Lcom/doman/core/b/e;

.field private n:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/doman/core/b/e;",
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/h;",
            ">;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/doman/core/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    const-string p4, "MQRequest"

    iput-object p4, p0, Lcom/doman/core/b/a/g;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/doman/core/b/a/g;->l:Lcom/doman/core/b/e;

    iput-object p3, p0, Lcom/doman/core/b/a/g;->n:Lcom/android/net/p$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/doman/core/b/e;",
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/h;",
            ">;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2, p5}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    const-string p2, "MQRequest"

    iput-object p2, p0, Lcom/doman/core/b/a/g;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p3, p0, Lcom/doman/core/b/a/g;->l:Lcom/doman/core/b/e;

    iput-object p4, p0, Lcom/doman/core/b/a/g;->n:Lcom/android/net/p$b;

    return-void
.end method

.method private static d(Ljava/lang/String;)Lcom/doman/core/a/h;
    .locals 19

    const-string v0, "body"

    const-string v1, ""

    new-instance v2, Lcom/doman/core/a/h;

    invoke-direct {v2}, Lcom/doman/core/a/h;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v6, p0

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "success"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    return-object v5

    :cond_1
    :try_start_1
    const-string v6, "ext"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/doman/core/a/b;

    invoke-direct {v6}, Lcom/doman/core/a/b;-><init>()V

    const-string v8, "iv"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/doman/core/a/b;->b:J

    iput-object v6, v2, Lcom/doman/core/a/h;->R:Lcom/doman/core/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_10

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "extension"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "dev"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/doman/core/a/g;

    invoke-direct {v11}, Lcom/doman/core/a/g;-><init>()V

    if-eqz v10, :cond_3

    const-string/jumbo v12, "ua"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/doman/core/a/g;->Q:Ljava/lang/String;

    const-string v12, "referer"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/doman/core/a/g;->R:Ljava/lang/String;

    :cond_3
    new-instance v10, Lcom/doman/core/a/k;

    invoke-direct {v10}, Lcom/doman/core/a/k;-><init>()V

    iput-object v10, v11, Lcom/doman/core/a/a;->b:Lcom/doman/core/a/k;

    const/4 v12, 0x1

    iput v12, v10, Lcom/doman/core/a/k;->a:I

    iput v12, v10, Lcom/doman/core/a/k;->b:I

    const-string/jumbo v10, "task_type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->c:I

    const-string/jumbo v10, "start"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v13, v10

    iput-wide v13, v11, Lcom/doman/core/a/a;->d:J

    const-string v10, "end"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v13, v10

    iput-wide v13, v11, Lcom/doman/core/a/a;->e:J

    const-string/jumbo v10, "visibility"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->f:I

    if-ne v10, v12, :cond_4

    const-string v10, "TOP"

    :goto_1
    iput-object v10, v11, Lcom/doman/core/a/a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v10, "BOTTOM"

    goto :goto_1

    :goto_2
    const-string v10, "probability"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/a;->g:D

    const-string v10, "prob_dl_start"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/a;->h:D

    const-string v10, "prob_ins_start"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/a;->i:D

    const-string v10, "prob_open_app"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/a;->j:D

    const-string/jumbo v10, "show_wait"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->k:I

    const-string v10, "click_wait"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->l:I

    const-string v10, "install_wait"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->m:I

    const-string v10, "retention"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->n:I

    const-string v10, "scroll_distance"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/a;->o:I

    const-string/jumbo v10, "usbavable"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v11, Lcom/doman/core/a/a;->p:Z

    const-string/jumbo v10, "task_net"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/doman/core/a/a;->q:Ljava/lang/String;

    const-string/jumbo v10, "task_info"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/doman/core/a/a;->r:Ljava/lang/String;

    const-string v10, "open_app_end"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/a;->s:J

    const-string v10, "motion_type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/doman/core/a/g;->T:I

    const-string/jumbo v10, "x1"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/g;->U:D

    const-string/jumbo v10, "y1"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/g;->V:D

    const-string/jumbo v10, "x2"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/doman/core/a/g;->W:D

    const-string/jumbo v10, "y2"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    iput-wide v9, v11, Lcom/doman/core/a/g;->X:D

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->t:Ljava/lang/String;

    const-string/jumbo v9, "space_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->u:Ljava/lang/String;

    const-string v9, "material_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->v:Ljava/lang/String;

    const-string v9, "material_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->w:Ljava/lang/String;

    const-string v9, "landing_page_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->x:Ljava/lang/String;

    const-string v9, "schema_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->y:Ljava/lang/String;

    const-string v9, "package"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->P:Ljava/lang/String;

    const-string v9, "click_action"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->z:Ljava/lang/String;

    const-string v9, "land_open_mode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->A:Ljava/lang/String;

    const-string/jumbo v9, "style"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->B:Ljava/lang/String;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->C:Ljava/lang/String;

    const-string v9, "desc"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/a;->D:Ljava/lang/String;

    const-string v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v11, Lcom/doman/core/a/a;->E:I

    const-string/jumbo v9, "show_time"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v11, Lcom/doman/core/a/a;->F:I

    const-string v9, "clear_able"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v11, Lcom/doman/core/a/g;->Y:Z

    const-string v9, "jumpstay"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v11, Lcom/doman/core/a/g;->Z:Z

    const-string v9, "material_width"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v11, Lcom/doman/core/a/a;->G:I

    const-string v9, "material_height"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v11, Lcom/doman/core/a/a;->H:I

    const-string/jumbo v9, "t_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/g;->aa:Ljava/lang/String;

    const-string/jumbo v9, "wh_l"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/doman/core/a/g;->S:Ljava/lang/String;

    const-string v9, "impression_urls"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v11, Lcom/doman/core/a/a;->I:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_9

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/doman/core/a/e;

    invoke-direct {v14}, Lcom/doman/core/a/e;-><init>()V

    const-string v15, "event"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/doman/core/a/e;->a:I

    const-string/jumbo v15, "url"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/doman/core/a/e;->b:Ljava/lang/String;

    const-string v15, "method"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/doman/core/a/e;->c:Ljava/lang/String;

    const-string v15, "cb"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/doman/core/a/e;->f:Ljava/lang/String;

    const-string/jumbo v15, "t"

    move-object/from16 p0, v6

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v14, Lcom/doman/core/a/e;->g:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v5, "headers"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v17, v4

    :try_start_4
    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v9

    :try_start_5
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v6, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v9, v16

    move/from16 v4, v17

    goto :goto_4

    :catchall_1
    :goto_5
    move-object/from16 v16, v9

    goto :goto_8

    :catchall_2
    move/from16 v17, v4

    goto :goto_5

    :cond_6
    move/from16 v17, v4

    move-object/from16 v16, v9

    iput-object v6, v14, Lcom/doman/core/a/e;->d:Ljava/util/HashMap;

    goto :goto_6

    :cond_7
    move/from16 v17, v4

    move-object/from16 v16, v9

    :goto_6
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    iput-object v4, v14, Lcom/doman/core/a/e;->e:Ljava/lang/String;

    goto :goto_8

    :cond_8
    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    :goto_8
    :try_start_6
    iget-object v4, v11, Lcom/doman/core/a/a;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    move-object/from16 v9, v16

    move/from16 v4, v17

    goto/16 :goto_3

    :cond_9
    move/from16 v17, v4

    move-object/from16 p0, v6

    const-string v4, "click_urls"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v11, Lcom/doman/core/a/a;->J:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_a

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v11, Lcom/doman/core/a/a;->J:[Ljava/lang/String;

    aput-object v9, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    const-string v4, "download_track_urls"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v11, Lcom/doman/core/a/a;->K:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_b

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v11, Lcom/doman/core/a/a;->K:[Ljava/lang/String;

    aput-object v9, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    const-string v4, "downloaded_track_urls"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_c

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v11, Lcom/doman/core/a/a;->L:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_c

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v11, Lcom/doman/core/a/a;->L:[Ljava/lang/String;

    aput-object v9, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_c
    const-string v4, "install_track_urls"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v11, Lcom/doman/core/a/a;->M:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_d

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v11, Lcom/doman/core/a/a;->M:[Ljava/lang/String;

    aput-object v9, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    const-string v4, "installed_track_urls"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_e

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v11, Lcom/doman/core/a/a;->N:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_e

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v11, Lcom/doman/core/a/a;->N:[Ljava/lang/String;

    aput-object v9, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_e
    const-string v4, "open_track_urls"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v11, Lcom/doman/core/a/a;->O:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_f

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v11, Lcom/doman/core/a/a;->O:[Ljava/lang/String;

    aput-object v8, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p0

    move/from16 v4, v17

    goto/16 :goto_0

    :catch_0
    :cond_10
    iput-object v3, v2, Lcom/doman/core/a/h;->Q:Ljava/util/ArrayList;

    return-object v2
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/doman/core/b/a/g;->d(Ljava/lang/String;)Lcom/doman/core/a/h;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/doman/core/b/a/g;->l:Lcom/doman/core/b/e;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/net/n;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, v0, Lcom/doman/core/b/e;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public final n()Lcom/android/net/p$b;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/b/a/g;->n:Lcom/android/net/p$b;

    return-object p0
.end method
