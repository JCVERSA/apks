.class public final Lhn/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lhn/b;

.field private static b:Lhn/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhn/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lhn/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhn/b;->a:Lhn/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lhn/d;
    .locals 22

    .line 1
    sget-object v0, Lhn/b;->b:Lhn/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhn/d;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    sget-object v2, Lcom/transsion/player/config/RenderType;->SURFACE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 9
    .line 10
    const v20, 0xfffe

    .line 11
    .line 12
    .line 13
    const/16 v21, 0x0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const-wide/16 v10, 0x0

    .line 23
    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const/16 v18, 0x0

    .line 33
    .line 34
    const-string v19, ""

    .line 35
    .line 36
    invoke-direct/range {v1 .. v21}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lhn/b;->b:Lhn/d;

    .line 40
    .line 41
    :cond_0
    sget-object v0, Lhn/b;->b:Lhn/d;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-object v0, Lhn/b;->b:Lhn/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lhn/d;->p()Lcom/transsion/player/config/RenderType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    sget-object v1, Lcom/transsion/player/config/RenderType;->SURFACE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_1
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Lhn/b;->b:Lhn/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lhn/d;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0
.end method

.method public final d(Lhn/d;)V
    .locals 0

    .line 1
    sput-object p1, Lhn/b;->b:Lhn/d;

    .line 2
    .line 3
    return-void
.end method
