.class public final synthetic Lyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyl;->a:Lcom/transsion/audio/fragments/AudioBaseFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 0

    iget-object p0, p0, Lyl;->a:Lcom/transsion/audio/fragments/AudioBaseFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->g0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    return-void
.end method
