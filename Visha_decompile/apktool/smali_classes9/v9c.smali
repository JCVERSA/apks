.class public final synthetic Lv9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 0

    iget-object p0, p0, Lv9c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->u0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    return-void
.end method
