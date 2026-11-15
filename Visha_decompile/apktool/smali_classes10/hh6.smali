.class public final synthetic Lhh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

.field public final synthetic c:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh6;->b:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    iput-object p2, p0, Lhh6;->c:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lhh6;->b:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    iget-object p0, p0, Lhh6;->c:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->a0(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;Landroid/view/View;)V

    return-void
.end method
