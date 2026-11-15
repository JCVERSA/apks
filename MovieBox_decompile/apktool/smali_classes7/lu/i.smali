.class public final Llu/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/i$a;
    }
.end annotation


# instance fields
.field private final a:Llu/i$a;


# direct methods
.method public constructor <init>(Llu/i$a;)V
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llu/i;->a:Llu/i$a;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v4, p3

    .line 9
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p4

    .line 16
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    move-object v6, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v6, p5

    .line 23
    :goto_2
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Llu/i;->a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "moduleName"

    .line 3
    .line 4
    move-object v4, p1

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v2, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    .line 12
    .line 13
    iget-object v1, v0, Llu/i;->a:Llu/i$a;

    .line 14
    .line 15
    invoke-interface {v1}, Llu/i$a;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget-object v1, v0, Llu/i;->a:Llu/i$a;

    .line 20
    .line 21
    invoke-interface {v1}, Llu/i$a;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    iget-object v1, v0, Llu/i;->a:Llu/i$a;

    .line 26
    .line 27
    invoke-interface {v1}, Llu/i$a;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const-string v3, "/ugc_video/immersive_detail"

    .line 32
    .line 33
    move-object v4, p1

    .line 34
    move-object v5, p2

    .line 35
    move-object/from16 v6, p4

    .line 36
    .line 37
    move-object v10, p3

    .line 38
    move-object/from16 v11, p5

    .line 39
    .line 40
    invoke-virtual/range {v2 .. v11}, Lcom/transsion/ugcvideodetail/hepler/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
