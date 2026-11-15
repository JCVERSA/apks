.class public Lkd4;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lv0;


# instance fields
.field public b:Lx0;

.field public c:I


# direct methods
.method public constructor <init>(ILx0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p2, p0, Lkd4;->b:Lx0;

    iput p1, p0, Lkd4;->c:I

    return-void
.end method

.method public constructor <init>(Lcqc;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lkd4;->b:Lx0;

    const/4 p1, 0x4

    iput p1, p0, Lkd4;->c:I

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lkd4;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lkd4;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Ly1;

    if-eqz v0, :cond_1

    check-cast p0, Ly1;

    invoke-virtual {p0}, Ly1;->J()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v2, Lkd4;

    invoke-static {p0, v1}, Ll1;->C(Ly1;Z)Ll1;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lkd4;-><init>(ILx0;)V

    return-object v2

    :pswitch_1
    new-instance v2, Lkd4;

    invoke-static {p0, v1}, Lm1;->x(Ly1;Z)Lm1;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lkd4;-><init>(ILx0;)V

    return-object v2

    :pswitch_2
    new-instance v1, Lkd4;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcqc;->m(Ly1;Z)Lcqc;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lkd4;-><init>(ILx0;)V

    return-object v1

    :pswitch_3
    new-instance v2, Lkd4;

    invoke-static {p0, v1}, Le1;->x(Ly1;Z)Le1;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lkd4;-><init>(ILx0;)V

    return-object v2

    :pswitch_4
    new-instance v2, Lkd4;

    invoke-static {p0, v1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lkd4;-><init>(ILx0;)V

    return-object v2

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lp1;->t([B)Lp1;

    move-result-object p0

    invoke-static {p0}, Lkd4;->m(Ljava/lang/Object;)Lkd4;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lkd4;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    iget v0, p0, Lkd4;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ldq1;

    iget-object p0, p0, Lkd4;->b:Lx0;

    invoke-direct {v2, v1, v0, p0}, Ldq1;-><init>(ZILx0;)V

    return-object v2
.end method

.method public n()Lx0;
    .locals 0

    iget-object p0, p0, Lkd4;->b:Lx0;

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lkd4;->c:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lkd4;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lkd4;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lkd4;->b:Lx0;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lkd4;->b:Lx0;

    invoke-static {p0}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object p0

    invoke-virtual {p0}, Lcqc;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkd4;->b:Lx0;

    invoke-static {p0}, Le1;->y(Ljava/lang/Object;)Le1;

    move-result-object p0

    invoke-virtual {p0}, Le1;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
