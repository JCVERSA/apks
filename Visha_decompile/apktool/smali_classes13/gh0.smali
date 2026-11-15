.class public final synthetic Lgh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final synthetic c:Lcom/transsion/sniffer_load/data/ReviewHistory;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh0;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iput-object p2, p0, Lgh0;->c:Lcom/transsion/sniffer_load/data/ReviewHistory;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgh0;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object p0, p0, Lgh0;->c:Lcom/transsion/sniffer_load/data/ReviewHistory;

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->x(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/data/ReviewHistory;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
