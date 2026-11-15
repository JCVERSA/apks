.class public final Ly08;
.super Lrm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly08$a;
    }
.end annotation


# instance fields
.field public final o:Lqw7;

.field public final p:Lqw7;

.field public final q:Ly08$a;

.field public r:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    invoke-direct {p0, v0}, Lrm9;-><init>(Ljava/lang/String;)V

    new-instance v0, Lqw7;

    invoke-direct {v0}, Lqw7;-><init>()V

    iput-object v0, p0, Ly08;->o:Lqw7;

    new-instance v0, Lqw7;

    invoke-direct {v0}, Lqw7;-><init>()V

    iput-object v0, p0, Ly08;->p:Lqw7;

    new-instance v0, Ly08$a;

    invoke-direct {v0}, Ly08$a;-><init>()V

    iput-object v0, p0, Ly08;->q:Ly08$a;

    return-void
.end method

.method public static y(Lqw7;Ly08$a;)Ljm1;
    .locals 5

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v0

    invoke-virtual {p0}, Lqw7;->C()I

    move-result v1

    invoke-virtual {p0}, Lqw7;->I()I

    move-result v2

    invoke-virtual {p0}, Lqw7;->e()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p0, v2}, Ly08$a;->c(Ly08$a;Lqw7;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p0, v2}, Ly08$a;->b(Ly08$a;Lqw7;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p0, v2}, Ly08$a;->a(Ly08$a;Lqw7;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ly08$a;->d()Ljm1;

    move-result-object v4

    invoke-virtual {p1}, Ly08$a;->h()V

    :goto_0
    invoke-virtual {p0, v3}, Lqw7;->O(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public v([BIZ)Ll2a;
    .locals 0

    iget-object p3, p0, Ly08;->o:Lqw7;

    invoke-virtual {p3, p1, p2}, Lqw7;->M([BI)V

    iget-object p1, p0, Ly08;->o:Lqw7;

    invoke-virtual {p0, p1}, Ly08;->x(Lqw7;)V

    iget-object p1, p0, Ly08;->q:Ly08$a;

    invoke-virtual {p1}, Ly08$a;->h()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-object p2, p0, Ly08;->o:Lqw7;

    invoke-virtual {p2}, Lqw7;->a()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    iget-object p2, p0, Ly08;->o:Lqw7;

    iget-object p3, p0, Ly08;->q:Ly08$a;

    invoke-static {p2, p3}, Ly08;->y(Lqw7;Ly08$a;)Ljm1;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lz08;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lz08;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final x(Lqw7;)V
    .locals 2

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lqw7;->h()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ly08;->r:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Ly08;->r:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v0, p0, Ly08;->p:Lqw7;

    iget-object v1, p0, Ly08;->r:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lblb;->j0(Lqw7;Lqw7;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly08;->p:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget-object p0, p0, Ly08;->p:Lqw7;

    invoke-virtual {p0}, Lqw7;->f()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lqw7;->M([BI)V

    :cond_1
    return-void
.end method
