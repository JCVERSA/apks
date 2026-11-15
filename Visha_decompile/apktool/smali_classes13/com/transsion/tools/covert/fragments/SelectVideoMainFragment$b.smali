.class public Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/SearchFileView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->V0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$b;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$b;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    const/4 p0, 0x0

    invoke-static {p0, p2}, Lk16;->c(IZ)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
