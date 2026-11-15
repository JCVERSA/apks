.class public final La/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, La/h;->a:I

    iput-object p1, p0, La/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, La/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 61
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/community/oneroom/nu/mm/b;

    sget v1, Lcom/community/oneroom/nu/mm/b;->d:I

    .line 22
    invoke-virtual {v0}, Lcom/community/oneroom/nu/mm/b;->c()V

    return-void

    .line 340
    :pswitch_0
    :try_start_0
    sget-object v0, La/k;->k:[[I

    sget-object v1, La/k;->l:[I

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, La/k;->f([[I[II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    :try_start_1
    iget-object v1, p0, La/h;->b:Ljava/lang/Object;

    check-cast v1, La/k;

    invoke-static {v1, v0}, La/k;->a(La/k;Ljava/lang/String;)La/b;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 344
    :try_start_2
    sget-object v3, La/k;->m:[[I

    sget-object v4, La/k;->n:[I

    invoke-static {v3, v4, v2}, La/k;->f([[I[II)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v2}, La/k;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/k;

    invoke-static {v0, v2}, La/k;->a(La/k;Ljava/lang/String;)La/b;

    move-result-object v0

    .line 379
    :goto_0
    iget-object v1, p0, La/h;->b:Ljava/lang/Object;

    check-cast v1, La/k;

    .line 270
    iput-object v0, v1, La/k;->b:La/b;

    .line 380
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/k;

    const/4 v1, 0x1

    .line 270
    iput v1, v0, La/k;->c:I

    .line 270
    sget-object v0, La/k;->i:Landroid/os/Handler;

    .line 381
    new-instance v1, La/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 376
    :cond_0
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    :catch_1
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/k;

    invoke-static {}, La/b;->a()La/b;

    move-result-object v1

    .line 270
    iput-object v1, v0, La/k;->b:La/b;

    .line 384
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/k;

    const/4 v1, 0x2

    .line 270
    iput v1, v0, La/k;->c:I

    :goto_1
    return-void

    .line 381
    :pswitch_1
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/h;

    iget-object v0, v0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/k;

    .line 270
    iget-object v1, v0, La/k;->d:Landroid/app/Activity;

    .line 270
    invoke-virtual {v0, v1}, La/k;->d(Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
