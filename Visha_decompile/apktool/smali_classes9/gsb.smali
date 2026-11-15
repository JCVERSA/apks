.class public final synthetic Lgsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

.field public final synthetic c:Lkpb$a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;Lkpb$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgsb;->b:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    iput-object p2, p0, Lgsb;->c:Lkpb$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lgsb;->b:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    iget-object p0, p0, Lgsb;->c:Lkpb$a;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->b(Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;Lkpb$a;Landroid/view/View;)V

    return-void
.end method
