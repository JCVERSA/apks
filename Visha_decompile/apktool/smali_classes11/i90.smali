.class public final synthetic Li90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/BaseBottomBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li90;->b:Lcom/transsion/playercommon/widgets/BaseBottomBar;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li90;->b:Lcom/transsion/playercommon/widgets/BaseBottomBar;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->g(Lcom/transsion/playercommon/widgets/BaseBottomBar;Ljava/util/ArrayList;)Lzfb;

    move-result-object p0

    return-object p0
.end method
