.class public final Lcom/transsion/lib_web/download_render/utils/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/utils/d;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/lib_web/download_render/utils/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/utils/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

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
.method public final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 2
    .line 3
    const-string v1, "DR_"

    .line 4
    .line 5
    const-string v2, "net connected"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    .line 12
    .line 13
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 2
    .line 3
    const-string v1, "DR_"

    .line 4
    .line 5
    const-string v2, "net disConnected"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    .line 12
    .line 13
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sput-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    .line 14
    .line 15
    return-void
.end method
