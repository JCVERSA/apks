.class public final synthetic Lg90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lc74;


# direct methods
.method public synthetic constructor <init>(Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg90;->b:Lc74;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg90;->b:Lc74;

    check-cast p1, Lcom/transsion/playercommon/widgets/BaseBottomBar;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->i(Lc74;Lcom/transsion/playercommon/widgets/BaseBottomBar;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
